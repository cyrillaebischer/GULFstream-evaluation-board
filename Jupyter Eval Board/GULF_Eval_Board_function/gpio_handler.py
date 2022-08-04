from pynq import Overlay

class gpio_handler():
    def __init__(self, ol):
        self.ol = ol
        self.cal_mode = self.ol.axi_gpio_0
   
    #Write on CalMode GPIO     
    def write_calmode(self, value):
        self.cal_mode.write(0,value)