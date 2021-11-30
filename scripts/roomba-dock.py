#!/usr/bin/env python3
import socket
# roomba must be powered on and not cleaning
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(("192.168.48.116",23))
s.send(bytearray([128, 143, 173])) # start, seek dock command, stop
s.close()
