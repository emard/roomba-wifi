#!/usr/bin/env python3
import socket, datetime
now = datetime.datetime.today()
hour = now.hour
minute = now.minute
weekday = (now.weekday()+1) % 7
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(("192.168.48.116",23))
s.send(bytearray([128, 168, weekday, hour, minute, 173])) # start, set time, ..., stop
s.close()
