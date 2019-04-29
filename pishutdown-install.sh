#!bin/sh

# ============================================================================== #
# MIT License                                                                    #
#                                                                                #
# Copyright (c) 2019 Donato Rimenti                                              #
#                                                                                #
# Permission is hereby granted, free of charge, to any person obtaining a copy   #
# of this software and associated documentation files (the "Software"), to deal  #
# in the Software without restriction, including without limitation the rights   #
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell      #
# copies of the Software, and to permit persons to whom the Software is          #
# furnished to do so, subject to the following conditions:                       #
#                                                                                #
# The above copyright notice and this permission notice shall be included in     #
# all copies or substantial portions of the Software.                            #
#                                                                                #
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR     #
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,       #
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE    #
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER         #
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,  #
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE  #
# SOFTWARE.                                                                      #
# ============================================================================== #
#                                                                                #
# DESCRIPTION : Installs the pishutdown.py script on this device.                #
# AUTHOR : Donato Rimenti                                                        #
# COPYRIGHT : Copyright (c) 2019 Donato Rimenti                                  #
# LICENSE : MIT                                                                  #
#                                                                                #
# ============================================================================== #

# Installs required dependencies
sudo apt install python3-gpiozero

# Creates the directory if not already there
sudo mkdir -p /usr/local/bin

# Gives execution permission to the script
chmod +x pishutdown.py

# Copies the script file to their final locations
sudo cp pishutdown.py /usr/local/bin
sudo cp pishutdown.service /etc/systemd/system

# Creates and starts the service
sudo systemctl enable pishutdown.service
sudo systemctl start pishutdown.service
