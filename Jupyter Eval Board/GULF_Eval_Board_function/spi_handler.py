from pynq import Overlay

#Constant
XSP_DGIER_OFFSET = 0x1C
XSP_IISR_OFFSET = 0x20
XSP_IIER_OFFSET = 0x28
XSP_SRR_OFFSET = 0x40
XSP_CR_OFFSET = 0x60
XSP_SR_OFFSET = 0x64
XSP_DTR_OFFSET = 0x68
XSP_DRR_OFFSET = 0x6C
XSP_SSR_OFFSET = 0x70
XSP_TFO_OFFSET = 0x74
XSP_RFO_OFFSET = 0x78
XSP_REGISTERS = [0x40, 0x60, 0x64, 0x68, 0x6c, 0x70, 0x74, 0x78, 0x1c, 0x20, 0x28]

XSP_SRR_RESET_MASK = 0x0A
XSP_SR_TX_EMPTY_MASK = 0x04
XSP_SR_TX_FULL_MASK = 0x08
XSP_CR_TRANS_INHIBIT_MASK = 0x100
XSP_CR_LOOPBACK_MASK = 0x01
XSP_CR_ENABLE_MASK = 0x02
XSP_CR_MASTER_MODE_MASK = 0x04
XSP_CR_CLK_POLARITY_MASK = 0x08
XSP_CR_CLK_PHASE_MASK = 0x10
XSP_CR_TXFIFO_RESET_MASK = 0x20
XSP_CR_RXFIFO_RESET_MASK = 0x40
XSP_CR_MANUAL_SS_MASK = 0x80
SLAVE_NO_SELECTION = 0xFFFFFFFF

class spi_handler():
    #Init the SPI communication and configure the DAC with the specific values
    def __init__(self,ol):
        self.ol = ol
        self.mkl_spi = self.ol.axi_quad_spi_0
        self.cnfg()
        self.write_values_ext_Dac()
        print('DAC configured')
    
    #Configuration
    def cnfg(self,  clk_phase=0, clk_pol=0):
        #print("Configure device")
        # Reset the SPI device
        self.mkl_spi.write(XSP_SRR_OFFSET, XSP_SRR_RESET_MASK)
        # Enable the transmit empty interrupt, which we use to determine progress on the transmission. 
        self.mkl_spi.write(XSP_IIER_OFFSET, XSP_SR_TX_EMPTY_MASK)
        # Disable the global IPIF interrupt
        self.mkl_spi.write(XSP_DGIER_OFFSET, 0)
        # Deselect the slave on the SPI bus
        self.mkl_spi.write(XSP_SSR_OFFSET, SLAVE_NO_SELECTION)
            # Disable the transmitter, enable Manual Slave Select Assertion, put SPI controller into master mode, and enable it
        ControlReg = self.mkl_spi.read(XSP_CR_OFFSET)
        ControlReg = ControlReg | XSP_CR_MASTER_MODE_MASK | XSP_CR_MANUAL_SS_MASK | XSP_CR_ENABLE_MASK | XSP_CR_TXFIFO_RESET_MASK | XSP_CR_RXFIFO_RESET_MASK
        self.mkl_spi.write(XSP_CR_OFFSET, ControlReg)
        ControlReg = self.mkl_spi.read(XSP_CR_OFFSET)
        ControlReg = ControlReg & ~(XSP_CR_CLK_PHASE_MASK | XSP_CR_CLK_POLARITY_MASK) 
        if clk_phase == 1:
            ControlReg = ControlReg | XSP_CR_CLK_PHASE_MASK
        if clk_pol == 1:
            ControlReg = ControlReg | XSP_CR_CLK_POLARITY_MASK
        self.mkl_spi.write(XSP_CR_OFFSET, ControlReg)

        return 0

    #SPI communication
    def xfer(self, packet):
        #print("TransferData")
        for data in packet:
            self.mkl_spi.write(XSP_DTR_OFFSET, data)
            self.mkl_spi.write(XSP_SSR_OFFSET, 0xFFFFFFFE)
            ControlReg = self.mkl_spi.read(XSP_CR_OFFSET)
            ControlReg = ControlReg & ~XSP_CR_TRANS_INHIBIT_MASK
            self.mkl_spi.write(XSP_CR_OFFSET, ControlReg)

            StatusReg = self.mkl_spi.read(XSP_SR_OFFSET)
            while (StatusReg & XSP_SR_TX_EMPTY_MASK) == 0:
                StatusReg = self.mkl_spi.read(XSP_SR_OFFSET)                         

            #print('XSP_RFO_OFFSET  : 0x{0:08x}'.format(self.mkl_spi.read(XSP_RFO_OFFSET)))
            ControlReg = self.mkl_spi.read(XSP_CR_OFFSET)
            ControlReg = ControlReg | XSP_CR_TRANS_INHIBIT_MASK
            self.mkl_spi.write(XSP_CR_OFFSET, ControlReg)

        self.mkl_spi.write(XSP_SSR_OFFSET, SLAVE_NO_SELECTION)

        #print("ReadResponse")
        resp = list()
        RxFifoStatus = self.mkl_spi.read(XSP_SR_OFFSET) & 0x01
        while RxFifoStatus == 0:
            temp = self.mkl_spi.read(XSP_RFO_OFFSET)
            #print('XSP_RFO_OFFSET  : 0x{0:08x}'.format(temp))
            temp = self.mkl_spi.read(XSP_DRR_OFFSET)
            #print('XSP_DRR_OFFSET  : 0x{0:08x}'.format(temp))    
            resp.append(temp)
            RxFifoStatus = self.mkl_spi.read(XSP_SR_OFFSET) & 0x01
        
        return resp
    #Call config
    def confi_spi(self):
        self.handle_spi.cnfg(self.mkl_spi)

    #Write values for every channel
    def write_values_ext_Dac(self):
        resp = self.xfer([self.calculate_dac_val(16, 0)]) # Write 0V on all DAC (16 = All channels)
        resp = self.xfer([self.calculate_dac_val(0, 0.9)]) # Write 0.9V on DAC A (Vrampref)
        resp = self.xfer([self.calculate_dac_val(1, 0)]) # Write 0V on DAC B (ISEL)
        resp = self.xfer([self.calculate_dac_val(2, 0)]) # Write 0V on DAC C (VRAMPMON)
        resp = self.xfer([self.calculate_dac_val(3, 1)]) # Write 1.0V on DAC D (TRIG_THR)
        resp = self.xfer([self.calculate_dac_val(4, 0)]) # Write 0V on DAC E (DUTbias)
        resp = self.xfer([self.calculate_dac_val(5, 0)]) # Write 0V on DAC F (DUTin)
        resp = self.xfer([self.calculate_dac_val(6, 0.777)]) # Write 0.777V on DAC G (Vadjp)
        resp = self.xfer([self.calculate_dac_val(7, 1.110)]) # Write 1.110V on DAC H (Vadjn)
        
    #Calculate value to send
    def calculate_dac_val(self, channel, vout):
        write_val = 0
        k = 0
        k = (vout * 4096)/1.8 
        write_val = (0xFF30000F) + (channel << 16) + (int(k) << 4) #First 8 and last 4 don't care (0xF), 3=Write to and Update (Power Up) n
        return write_val 
