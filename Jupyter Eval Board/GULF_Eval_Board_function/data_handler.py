from pynq import Overlay
from matplotlib import pyplot as plt
import numpy as np

slave_0 = 0 # read address
slave_1 = 1 # read data
slave_2 = 2 # write address
slave_3 = 3 # write data (from PL)
slave_4 = 4 # write rollover (from PL)
slave_5 = 5 # read rollover
slave_6 = 6 # write error
slave_7 = 7 # read error

memorydepth = 128 #Defined in Vivado project

class data_handler():
    def __init__(self, ol):
        self.ol = ol
        self.axi_interface = self.ol.axi_data_transfer_1
        
    #Get corresponding data from an addres on the memory
    def get_single_value(self, addr):
        data_err_roll = 0
        if addr > (memorydepth - 1):
            raise Exception("Address out of range (0-127)\n")
        self.axi_interface.write(4*slave_0, addr)     #First set address to read
        data_err_roll = (self.axi_interface.read(4*slave_5) << 32) + self.axi_interface.read(4*slave_1)  #Then read rollover and data from the corresponding address
        return data_err_roll #Return rollover data and hit data in one 64 bit wide value
    
    #Print specified data from the memory, startaddr: Start address, quantity: Quantity of data to print 
    def print_multiple_value(self, startaddr, quantity):
        for i in range(quantity):         
            print('Address: {:<5d} Data: 0x{:016x}'.format((i+startaddr),self.get_single_value(i+startaddr)))
    
    #Get error on error memory
    def get_error(self):
        if self.axi_interface.read(4*slave_7) == 0:
            print("No Error")
        elif  self.axi_interface.read(4*slave_7) == 1:
            print("Header Bit Error")
        elif  self.axi_interface.read(4*slave_7) == 2:
            print("Receive Code Error")
        elif  self.axi_interface.read(4*slave_7) == 3:
            print("Header Bit Error \nReceive Code Error")
        return 
    
    #Save data from memory to file "hitdata.txt"
    def save_hit_all(self):
        self.f = open("hitdata.txt", "a")
        for i in range(memorydepth):
            if self.get_single_value(i) != 0:
                self.f.write('{:016x}\n'.format(self.get_single_value(i)))
        self.f.close()
    
    #Save specific data from memory to file "hitdata.txt", startaddr: Start address, quantity: Quantity of data to print
    def save_hit_range(self, startaddr, quantity):
        self.f = open("hitdata.txt", "a")
        for i in range(quantity):
            if self.get_single_value(i) != 0:
                self.f.write('{:016x}\n'.format(self.get_single_value(i+startaddr)))
        self.f.close()
    
    #Delet the whole file content on the specified file
    def del_file_content(self, file):
        open(file, 'w').close()
    
    #Print the whole file content on the specified file
    def print_file_content(self, file):
        self.f = open(file, 'r')
        print(self.f.read())
        self.f.close()
    
    #Convert the raw data to "Channel, Coarse Time, Fine Time, Data Payload" and save it in new file
    def conv_file_val(self): 
        header = "Channel  Coarse Time  Fine Time  Data Payload  Rollover  Coarse Time with Rollover"
        hitdatafile = open('hitdata.txt', 'r') 
        convdatafile = open('conv_data.txt','w')
        convdatafile.write(header + "\n")
        hitdataline = hitdatafile.readline()
        while hitdataline:
            intdata = int(hitdataline,16)
            convdatafile.write('{:<8d} {:<12d} {:<10d} {:<13d} {:<9d} {:d}\n'.format(self.get_channel(intdata), self.get_coarseTime(intdata), self.get_fineTime(intdata), self.get_dataPay(intdata), self.get_rollover(intdata), self.get_coarseTime(intdata)+(self.get_rollover(intdata)*65536)))
            hitdataline = hitdatafile.readline()
        hitdatafile.close()
        convdatafile.close()
    
    #Plot the hits per channel from the rawdata file (hitdata.txt)
    def plot_hit_per_channel(self):
        hitchannelarray = [0,0,0,0,0,0,0,0]
        hitdatafile = open('hitdata.txt', 'r')
        hitdataline = hitdatafile.readline()
        while hitdataline:
            intdata = int(hitdataline,16)
            channel = self.get_channel(intdata)
            hitchannelarray[channel] += 1 # increment correspondening channel in array
            hitdataline = hitdatafile.readline()
        hitdatafile.close()
        plt.figure(figsize=(10, 6), dpi=90)
        plt.bar(range(8), hitchannelarray)
        plt.xlabel('Channel')
        plt.ylabel('Hits (Nbr of Hits)')
        plt.title('Occupancy')
        ax = plt.axes()        
        ax.yaxis.grid()
        plt.show()
        #print(hitchannelarray) #When showing number per channel
    
    #Plot hits per time from "hitdata.txt"
    def plot_hit_per_time(self, xlimcoarststart, xlimcoarststop):
        arraysize = 131072
        hittimearray = [0] * arraysize
        hittimearray_mult = [i * 7.8e-9 for i in range(arraysize)] #Every step 7.8e-9
        hitdatafile = open('hitdata.txt', 'r')
        hitdataline = hitdatafile.readline()
        while hitdataline:
            intdata = int(hitdataline,16)
            coarsetime = self.get_coarseTime(intdata)
            rollover = self.get_rollover(intdata)
            hittimearray[rollover * 65536 + coarsetime] += 1 # increment correspondening coarsetime in array
            hitdataline = hitdatafile.readline()
        hitdatafile.close()
        plt.figure(figsize=(10, 6), dpi=90)
        plt.plot(hittimearray_mult, hittimearray, 'r', linewidth=2.0 )
        plt.xlabel('Time (s)')
        plt.ylabel('Hits (Nbr of Hits)')
        plt.title('Total Hits')
        plt.grid()
        plt.xlim(7.8e-9*xlimcoarststart,7.8e-9*xlimcoarststop) #Start and stop limit, 7.8ns*coarsetimevalue
        plt.ticklabel_format(axis="x", style="sci", scilimits=(0,0))
        plt.show()
        
     #Plot hits per time from memory
    def plot_hit_per_time_from_memory(self, xlimcoarststart, xlimcoarststop):
        self.save_hit_all()
        self.conv_file_val()
        self.plot_hit_per_time(xlimcoarststart,xlimcoarststop)
    
    #Plot the hits per channel from the memory and convert the raw data    
    def plot_hit_per_channel_from_memory(self):
        self.save_hit_all()
        self.conv_file_val()
        self.plot_hit_per_channel()
        
    #Plot both plots from memory
    def plot_both_from_memory(self, xlimcoarststart, xlimcoarststop):
        self.plot_hit_per_channel_from_memory()
        self.plot_hit_per_time_from_memory(xlimcoarststart, xlimcoarststop)
    
    #Get the channel from raw doubleword
    def get_channel(self,doubleword):
        channel = (doubleword & 0x0000000070000000) >> 28
        return channel
  
    #Get the coarse time from raw doubleword
    def get_coarseTime(self,doubleword):
        coarseTime = (doubleword & 0x000000000FFFF000) >> 12
        return coarseTime
    
    #Get the fine time from raw doubleword
    def get_fineTime(self,doubleword):
        fineTime = (doubleword & 0x00000000000007C0) >> 6
        return fineTime
    
    #Get the data payload from raw doubleword
    def get_dataPay(self,doubleword):
        dataPay = (doubleword & 0x000000000000003F)
        return dataPay
    
    #Get the rollover from raw word
    def get_rollover(self,doubleword):
        rollover = (doubleword & 0xFFFFFFFF00000000) >> 32
        return rollover
    