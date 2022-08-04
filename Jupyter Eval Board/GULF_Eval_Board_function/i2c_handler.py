from pynq import Overlay
import pynq.lib as lib

class i2c_handler():
    def __init__(self, ol):
        self.ol = ol
        self.i2c = self.ol.axi_iic_0
        
    #Send data
    def i2c_send(self, addr, data):
        buf = [addr, data, 0]
        self.i2c.send(buf[0], buf, len(buf), 0)
        
    #Recive data
    def i2c_recive(self):
        buf = [0, 0, 0]
        data = []
        self.i2c.receive(buf[0], data, 10, 0)
        return data
        