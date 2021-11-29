# WiFi-Roomba: ESP8266 Nodemcu interface for iRobot Roomba

Wifi remote control interface for the iRobot Roomba vacuum cleaner.

# Wifi Module

Get nodemcu from ebay for $3.5 and flash it with some TCP-serial
bridge code from Arduino Examples "WifiTelnetToSerial", setup WiFi
user and password to connect to local access point and swap pins to
use hardware serial at RX=gpio13, TX=gpio15

    #define SWAP_PINS 1

When monitored at serial port, it will print IP address where it connected

if you telnet to roomba, you should see something like this:

    bat:   min 0  sec 10  mV 17061  mA 1016  tenths-deg-C 348  mAH 2696  state 5  
    bat:   min 0  sec 11  mV 17061  mA 1016  tenths-deg-C 348  mAH 2696  state 5  
    bat:   min 0  sec 12  mV 17061  mA 1008  tenths-deg-C 348  mAH 2696  state 5  
    bat:   min 0  sec 13  mV 17061  mA 1023  tenths-deg-C 348  mAH 2696  state 5  

if you type CTRL-G and press ENTER, roomba 880 will reset as if battery was
replaced and you should hear beep and see printed different messages 
after reset and again battery charging messages as above.

Other commands are described in
[iRobot Roomba 600 Open Interface Spec](https://www.irobotweb.com/-/media/MainSite/PDFs/About/STEM/Create/iRobot_Roomba_600_Open_Interface_Spec.pdf)

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
    3  RXD    orange input to roomba 5V TTL <- wifi_gpio15
    4  TXD    black  output from roomba 5V TTL -> wifi_gpio13
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
