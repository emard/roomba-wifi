# WiFi-Roomba: ESP8266 Nodemcu interface for iRobot Roomba

Wifi remote control interface for the iRobot Roomba vacuum cleaner.

# Wifi Module

Get nodemcu from ebay for $3.5 and flash it with some TCP-serial
bridge code:

![nodemcu](/pic/nodemcu.jpg)

# Power supply

Get 3.3V switching power supply module from ebay for $2:

    2A DC 5V-23V to 3.3V DC-DC Step-Down Power Supply Buck Module for esp8266 WiFi

![3.3V converter](/pic/3V3-converter.jpg)

On the back of the module PCB is written:

       Canton-Power
          DC-DC
    Step-Down Converter
    3.3V[x] 5V[ ] Vi GND Vo

# Cable

Adafruit has roomba cable.
Also apple or mac 8-pin mini-din cable ordered from ebay
will fit to roomba socket (it has extra middle pin which
is NC in roomba socket).

![cable](/pic/cable.jpg)

pinout (wire colors inside of apple cable)

    1  Vpwr   red    ? no voltage
    2  Vpwr   brown  20V
    3  RXD    orange input to roomba 5V TTL wifi_gpio15
    4  TXD    black  output from roomba 5V TTL wifi_gpio13
    5  DD     yellow wifi_gpio12
    6  GND    green
    7  GND    blue
    8  NC     violet (middle pin)
    SHIELD    naked

same pin numbering to DB9 connector

# PCB

You can order from OSHpark, seeedstudio or similar, email them gerber
files and they will send back the PCB:

![pcb](/pic/wifi-roomba.jpg)
