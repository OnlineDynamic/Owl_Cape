# Owl_Cape
Raspberry Pi (SMI Driven) FPP WS2811 based ch16 Pixel Controller Cape

Building on the great work of the Falcon FPP project, numerous open hardware pixelcontrollers and the clever brain behind this blog: https://iosoft.blog/2020/09/29/raspberry-pi-multi-channel-ws2812/

This project is looking to create a simple low cost 16ch Raspberry PI Cape to run on FPP using SMI interface of a 'Raspberry Pi Zero 2 W' (and potentially then expand out to supporting other Pi's with the 40PIN Header.  The aspiration is for the final code for the cape to be included in the FPP project and the xLights project to make a low cost easy to use pixel controller for LED pixel light shows which will benefit as the FPP project evolves its functionality.

Basic Spec of Cape

12V DC in only (fused at xx Amps)
40 Pin Header for attaching to RPI via a ribbon cable (allow easy removal)
Power the RPI via Header pins
16 Ch of LED (WS2811) outputs individually fused at 5A running at 12V DC with SMD LED power indicators
EEPROM onboard to identify CAPE to PI


Potential Future expansion
On board RJ45 Jack to connect wired ethernet to PI using USB test pads on PI
Jumper to make LED voltage either 12V or 5V DC
Basic LED Screen showing status

Out of scope
Any differential outputs
