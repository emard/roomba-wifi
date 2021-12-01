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
  s.send(bytearray([128, 131])) # safe mode
  time.sleep(0.05)
  s.send(bytearray([164])+disp+bytearray([173])) # display and stop
  s.close()

def btn(x):
  # press roomba button (will hold it pressed for 1/6 second)
  a = 0
  if x == "clean":
    a |= 1<<0
  if x == "spot" or x == "ok":
    a |= 1<<1
  if x == "dock": # or x == "day":
    a |= 1<<2
  if x == "minute":
    a |= 1<<3
  if x == "hour":
    a |= 1<<4
  if x == "day":
    a |= 1<<5
  if x == "schedule":
    a |= 1<<6
  if x == "clock": # or x == "hour":
    a |= 1<<7
  s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
  s.connect(host_port)
  s.send(bytearray([128, 165, a, 173])) # start, btn, value, stop
  s.close()

def set_time():
  now = datetime.datetime.today()
  hour = now.hour
  minute = now.minute
  weekday = (now.weekday()+1) % 7
  s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
  s.connect(host_port)
  s.send(bytearray([128, 131])) # start, safe mode
  time.sleep(0.2)
  s.send(bytearray([128, 168, weekday, hour, minute, 173])) # start, set time, values, stop
  s.close()

# after talking to roomba, stop open interface
# if left unstopped, battery will drain deeply
def stop():
  s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
  s.connect(host_port)
  s.send(bytearray([128, 173])) # start, stop
  s.close()

def run():
  if sys.argv[1] == "stop":
      stop()
  if sys.argv[1] == "disp":
      disp(sys.argv[2])
  if sys.argv[1] == "clean":
      clean()
  if sys.argv[1] == "dock":
      dock()
  if sys.argv[1] == "set":
      set_time()
  if sys.argv[1] == "btn":
      btn(sys.argv[2])
  if sys.argv[1] == "stop":
      stop()

run()
