#!/usr/bin/env python3

host_port = ("192.168.48.116",23)

import socket, sys, time, datetime

def clean():
  # if roomba is already cleaning, this will stop it
  s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
  s.connect(host_port)
  s.send(bytearray([128, 135, 173])) # start, clean, stop
  s.close()

def dock():
  # roomba must be powered on and not cleaning
  s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
  s.connect(host_port)
  s.send(bytearray([128, 143, 173])) # start, seek dock command, stop
  s.close()

def disp(x):
  # if roomba is cleaning this will stop
  disp = x[0:4].encode() # max 4 chars
  disp += b" " * (4-len(disp)) # pad length 4 with spaces
  s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
  s.connect(host_port)
  s.send(bytearray([128, 131, 174])) # safe mode
  time.sleep(0.05)
  s.send(bytearray([164])+disp)
  s.close()

def set_time():
  # manual "clock" setting should not be enabled
  now = datetime.datetime.today()
  hour = now.hour
  minute = now.minute
  weekday = (now.weekday()+1) % 7
  s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
  s.connect(host_port)
  s.send(bytearray([128, 168, weekday, hour, minute, 173])) # start, set time, ..., stop
  s.close()

def run():
  if sys.argv[1] == "disp":
      disp(sys.argv[2])
  if sys.argv[1] == "clean":
      clean()
  if sys.argv[1] == "dock":
      dock()
  if sys.argv[1] == "set":
      set_time()

run()
