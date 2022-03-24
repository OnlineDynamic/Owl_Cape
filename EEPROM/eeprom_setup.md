# HOWTO: Raspi HAT EEPROM and device-tree setup

Customised from https://forums.raspberrypi.com/viewtopic.php?t=108134

## Intro

As it is hard to find good quality information EEPROM for HATs, and after some struggling I have found the post above but it too had issues and seemed out of date, so I decided to write this file to create a set of instructions for myself to use with the 'Owl Cape' project but have tried to leave in lots of description to help others more generically. 

In this project I'musing a Amtel AT24C256 (32,768 x 8) but typically the Pi spec talks about using its smaller brother the AT24C32 (4,096 x 8)

This process should work for:
- 24c32
- 24c64
- 24c128
- 24c256
- 24c512
- 24c1024

(with the correct adjustments in file size generation and type command passed to eepflash)

## Initial Setup

First off, let’s talk about the hardware. I used an AT24C256 DIP i2c EEPROM. 

The pins need to be wired like this:

| AT24C256 Pin    |	Raspberry Pi Pin 	  |     Notes                      |
|-----------------|-----------------------|--------------------------------|
|1 (AO) 	      |GND (pins 6, 9, 14, 20, 25, 30, 34, 39)| 	All address pins tied to ground will place the EEPROM at address 50. This is the required address in the specification|
|2 (A1)           |GND                    |                             | 	
|3 (A2)           |GND|| 	
|4 VSS 	|GND 	||
|5 SDA | 	27 You should also add a 3.9K pullup resistor from EEPROM pin 5 to 3.3V | You must use this pin for the Raspberry Pi to detect the EEPROM on startup |
|6 SCL | 	28 You should also add a 3.9K pullup resistor from EEPROM pin 6 to 3.3V | You must use this pin for the Raspberry Pi to detect the EEPROM on startup |
|7 WP 	|Not connected 	| Write protect. I don’t need this.|
|8 VCC 	| 3.3V (pins 1 or 17) |	The EEPROM is capable of being run at 5 volts, but must be run at 3.3 volts to work as a HAT identification EEPROM.|

The specification requires that the data pin be on pin 27, the clock pin be on pin 28, and that the EEPROM be at address 50 on the i2c bus as described in the table above. There is also some mention of pullup resistors in both the data sheet and the HAT specification, but not in a lot of detail. The best I could find was a circuit diagram for a different EEPROM with the pullup resistors shown.

## Setup Raspberry PI

As a preliminary step, you need to activate videocore I2C. This is done by adding a line at the beginning of your /boot/config.txt file :

Add:

Code: 
```
dtparam=i2c_vc=on
```

Then reboot.

First of all, you need to get EEPROM utils (to make EEPROM content and flash it) and device-tree compiler (dtc).
For the device tree, the original author followed advice from Adafruit : https://learn.adafruit.com/introduction-to-the-beaglebone-black-device-tree/compiling-an-overlay

Code: 
```bash
git clone https://github.com/raspberrypi/hats.git
wget -c https://raw.githubusercontent.com/RobertCNelson/tools/master/pkgs/dtc.sh
chmod +x dtc.sh
./dtc.sh
```

You'll have now installed dtc compiler and have a hats directory. Go inside, and open eepromutils directory.

Code:
```bash
cd hats/eepromutils
```

Then need to run the make command to get the eepmake programme work:

Code:
```bash
make && sudo make install
```

Install I2C tools (used for detecting EEPROM)

Code:
```bash
sudo apt install i2c-tools
```

## Create Custom EEPROM Content

First of all, you need to modify eeprom_settings.txt to create your own version of HAT board. You don't have to modify UUID, as it will be auto-generated.

Template Code: (Owl_Cape version in git folder) 
```
########################################################################
# EEPROM settings text file
#
# Edit this file for your particular board and run through eepmake tool,
# then use eepflash tool to write to attached HAT ID EEPROM 
#
# Tools available:
#  eepmake   Parses EEPROM text file and creates binary .eep file
#  eepdump   Dumps a binary .eep file as human readable text (for debug)
#  eepflash  Write or read .eep binary image to/from HAT EEPROM
#
########################################################################

########################################################################
# Vendor info

# 128 bit UUID. If left at zero eepmake tool will auto-generate
# RFC 4122 compliant UUID
product_uuid 00000000-0000-0000-0000-000000000000

# 16 bit product id
product_id 0x0001

# 16 bit product version
product_ver 0x0002

# ASCII vendor string  (max 255 characters)
vendor "Martinlbb"

# ASCII product string (max 255 characters)
product "Brilliant board"


########################################################################
# GPIO bank settings, set to nonzero to change from the default.
# NOTE these setting can only be set per BANK, uncommenting any of
# these will force the bank to use the custom setting.

# drive strength, 0=default, 1-8=2,4,6,8,10,12,14,16mA, 9-15=reserved
gpio_drive 0

# 0=default, 1=slew rate limiting, 2=no slew limiting, 3=reserved
gpio_slew 0

# 0=default, 1=hysteresis disabled, 2=hysteresis enabled, 3=reserved
gpio_hysteresis 0

# If board back-powers Pi via 5V GPIO header pins:
# 0 = board does not back-power
# 1 = board back-powers and can supply the Pi with a minimum of 1.3A
# 2 = board back-powers and can supply the Pi with a minimum of 2A
# 3 = reserved
# If back_power=2 then USB high current mode will be automatically 
# enabled on the Pi
back_power 0

########################################################################
# GPIO pins, uncomment for GPIOs used on board
# Options for FUNCTION: INPUT, OUTPUT, ALT0-ALT5
# Options for PULL: DEFAULT, UP, DOWN, NONE
# NB GPIO0 and GPIO1 are reserved for ID EEPROM so cannot be set

#         GPIO  FUNCTION  PULL
#         ----  --------  ----
#setgpio  2     INPUT     DEFAULT
#setgpio  3     INPUT     DEFAULT
#setgpio  4     INPUT     DEFAULT
#setgpio  5     INPUT     DEFAULT
#setgpio  6     INPUT     DEFAULT
#setgpio  7     INPUT     DEFAULT
#setgpio  8     INPUT     DEFAULT
#setgpio  9     INPUT     DEFAULT
#setgpio  10    INPUT     DEFAULT
#setgpio  11    INPUT     DEFAULT
#setgpio  12    INPUT     DEFAULT
#setgpio  13    INPUT     DEFAULT
#setgpio  14    INPUT     DEFAULT
#setgpio  15    INPUT     DEFAULT
#setgpio  16    INPUT     DEFAULT
#setgpio  17    INTPUT     DEFAULT
setgpio  18    OUTPUT     DEFAULT
#setgpio  19    INPUT     DEFAULT
#setgpio  20    INPUT     DEFAULT
#setgpio  21    INPUT     DEFAULT
#setgpio  22    INPUT     DEFAULT
#setgpio  23    INPUT     DEFAULT
#setgpio  24    INPUT     DEFAULT
#setgpio  25    INPUT     DEFAULT
#setgpio  26    INPUT     DEFAULT
#setgpio  27    INPUT     DEFAULT
```

Then, you can create an eep file, based on you eeprom_settings.txt file. Basically, an eep file is a binary version of this file, which is ready to flash on EEPROM.

Code:
```bash
./eepmake eeprom_settings.txt myhat.eep
```
You have now a working HAT file!

## Writting file to EEPROM

You can now write it on EEPROM. If you have followed my design, you have a 24c256 memory (32k) if you have pi standard hat spec you have 24c32 memory (4k). But your myhat.eep file is smaller. As you don't know the state of your EEPROM, you may have conflict, as your myhat.eep could be misread. To avoid that, we shall start by cleaning EEPROM.

Use this dd command to generate a 32k file, padded with zero (an excellent choice, zeros are my favorites!). If you have another EEPROM size, just change count value according to your real EEPROM size.

Code: 

```bash
dd if=/dev/zero ibs=1k count=32 of=blank.eep
```

To be sure, you can review this binary, using hexdump :

Code:
```bash
hexdump blank.eep
```

## Make sure you can talk to the EEPROM

    In the HAT specification, the HAT EEPROM is connected to pins that can be driven by I2C0. However, this is the same interface as used by the camera and displays, so use of it by the ARMs is discouraged. The eepflash.sh script gets around this problem by instantiating a software driven I2C interface using those pins as GPIOs, calling it i2c-9:

Code:
```bash
   sudo dtoverlay i2c-gpio i2c_gpio_sda=0 i2c_gpio_scl=1 bus=9
```

Install i2cdetect Code:
```bash
   sudo apt install i2c-tools
```
    
Check with i2cdetect -y 9 (should be at address 0x50)

Code:
```bash
   i2cdetect -y 9 0x50 0x50
```

   Result:
   ```
       0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
   00: 
   10:
   20:
   30:
   40:
   50: 50
   60: 
   70:


Next, you can now upload it to your EEPROM :

Code:
```bash
sudo ./eepflash -w -d=9 -f=blank.eep -t=24c256
```

Answer yes, and before hitting enter, do a ground connection to test point (see design guide recommendation), who remove read-only flag. Then, press enter and wait without moving this ground connection!

To verify if everything went well, you can use this command to check EEPROM content. Caution: it will only work after you use the eepflash command, which does some modprobes.

Code: 
```bash
sudo hexdump /sys/class/i2c-adapter/i2c-9/0-0050/eeprom
```

If everything is okay, you'll only see zeros.

Then, you can upload your own myhat.eep.

Code:
```bash
sudo ./eepflash -w -d=9 -f=myhat.eep -t=24c256
```

And again, verify it after uploading :

Code:
```bash
sudo hexdump /sys/class/i2c-adapter/i2c-9/0-0050/eeprom
```

If the contents match, you can reboot your Raspberry Pi.

## Checking it worked and PI recognises HAT

To check if your HAT is recognized, just go to /proc/device-tree/. If you see a hat directory, you are a winner:)

Code:
```bash
cd /proc/device-tree/hat/
more vendor
more product
```

## Setting up Auto Configuration

The next step is to allow autoconfiguration of this HAT, following device-tree usage. In our example, we have a led connected to GPIO 18 (pin 12). I suggest you to test it before, using /sys/class/gpio :

Code:
```bash
sudo sh -c 'echo "18" > /sys/class/gpio/export'
sudo sh -c 'echo "out" > /sys/class/gpio/gpio18/direction'
sudo sh -c 'echo "1" > /sys/class/gpio/gpio18/value'
```

Your led is powered on. And to power off :

Code:
```bash
sudo sh -c 'echo "0" > /sys/class/gpio/gpio18/value'
```

Don't forget to get back to your hat/eepromutils directory after !

Now we can dive in the device-tree world. Open a file, called myled.dts, and paste this code (heavily copied from fividi post viewtopic.php?f=29&t=97875):

Code:
```
/dts-v1/;
/plugin/;

/ {
    compatible = "brcm,bcm2708";

    fragment@0 {
        target = <&leds>;
        __overlay__ {
            my_led: myled {
                label = "MYLED";
                gpios = <&gpio 18 0>;
                linux,default-trigger = "heartbeat";
            };
        };
    };
};
```
Compile it with dtc compiler :

Code:
```bash
sudo dtc -@ -I dts -O dtb -o myled.dtb myled.dts ; sudo chown pi:pi myled.dtb
```
For testing purposes, you can load this dtb as an overlay, using dtoverlay= in /boot/config.txt. This is not the purpose of this post, I let you search it on this forum.

Now, we can generate a eep file containing both board definition (eeprom_config.txt) and device-tree (for kernel auto configuration).

Code: 
```bash
./eepmake eeprom_settings.txt myhat-with-dt.eep myled.dtb
```

Then, blank the eeprom and upload it (don't forget to ground the test point to disabled read-only mode):

Code:
```bash
sudo ./eepflash -w -f=blank.eep -t=24c256
sudo ./eepflash -w -f=myhat-with-dt.eep -t=24c256
```

And finally, consistency checking by viewing both original file and eeprom dump :

Code:
```bash
hexdump myhat-with-dt.eep
sudo hexdump /sys/class/i2c-adapter/i2c-9/0-0050/eeprom
```
Finally, do a reboot, and enjoy your LED, blinking like a heartbeat!

Final reminder: When you start playing with adding long device tree, keep in mind you have a limited memory (4096 bytes for a 24c32 memory). When creating an eep file with eepmake, this tool will give you final size of your eep. Just verifiy if you have exceed your EEPROM size.

Note: With an incorrect DT, even your eeprom_settings are not recognized by kernel. And a bootable device-tree overlay is sometimes not sufficient for "eeprom boot"

To allow auto configuration after kernel boot (ie: modprobe some modules, TFT calibration, etc...), I use a custom parameter file, based on JSON, that could be parsed after. I choose JSON as it is small, human-readable, and easy to parse.
To add a custom file to your eep, just do this:

Code:
```bash
./eepmake eeprom_settings.txt myhat-with-dt.eep myled.dtb -c myparams.json
```

## Footnotes of reference sites used

[^1]https://github.com/raspberrypi/hats/tree/master/eepromutils
[^2]https://www.madebymikal.com/raspberry-pi-hat-identity-eeproms-a-simple-guide/
[^3]AT24C256 Spec https://datasheetspdf.com/pdf-file/160492/ATMELCorporation/AT24C256/1
[^4]Raspberry Pi Pinout https://pinout.xyz/pinout/sdio#

