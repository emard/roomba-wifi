#!/usr/bin/env python3
import socket
# if roomba is already cleaning, this will stop it
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(("192.168.48.116",23))
s.send(bytearray([128, 135, 173])) # start, clean, stop
s.close()
