from pynq import Overlay

#Import all other files/classes
import GULF_Eval_Board_function.spi_handler
from GULF_Eval_Board_function.spi_handler import spi_handler

import GULF_Eval_Board_function.i2c_handler
from GULF_Eval_Board_function.i2c_handler import i2c_handler

import GULF_Eval_Board_function.data_handler
from GULF_Eval_Board_function.data_handler import data_handler

import GULF_Eval_Board_function.gpio_handler
from GULF_Eval_Board_function.gpio_handler import gpio_handler

class master_handler:
    def __init__(self):
        pass