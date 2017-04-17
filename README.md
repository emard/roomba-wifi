# WiFi-Roomba: ESP8266 Nodemcu interface for iRobot Roomba

Wifi remote control interface for the iRobot Roomba vacuum cleaner.

# Cable

Adafruit has roomba cable.
Also apple or mac 8-pin mini-din cable ordered from ebay/uk
will fit to roomba socket.

pinout (wire colors inside of apple cable)

    1  Vpwr   red    ? no voltage
    2  Vpwr   brown  20V
    3  RXD    orange input to roomba 5V TTL
    4  TXD    black  output from roomba 5V TTL
    5  DD     yellow
    6  GND    green
    7  GND    blue
    8  NC     violet (middle pin)

    SHIELD naked

same pin numbering to DB9 connector

# Power supply

Get 3.3V switching power supply module from ebay for $2:

    2A DC 5V-23V to 3.3V DC-DC Step-Down Power Supply Buck Module for esp8266 WiFi

On the back of the module PCB is written:

       Canton-Power
          DC-DC
    Step-Down Converter
    3.3V
