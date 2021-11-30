#!/usr/bin/env python3
import socket, sys, time
disp = sys.argv[1][0:4].encode() # max 4 chars
disp += b" " * (4-len(disp)) # pad length 4 with spaces
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(("192.168.48.116",23))
s.send(bytearray([128, 131, 174])) # safe mode
time.sleep(0.05)
s.send(bytearray([164])+disp)
s.close()
