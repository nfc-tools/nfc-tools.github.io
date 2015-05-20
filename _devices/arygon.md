---
title: Arygon
---
## Presentation

For all ARYGON MCU-equipped the default baudrate is always 9600 baud as this is set by the MCU firmware. If the host bus is USB, the MCU is connected to SiLabs UART-USB bridge.

For devices without MCU the default baudrate of PN532 based products is 115200 baud, for PN531 based it is 9600 baud. If the host bus is USB, a SiLabs UART-USB bridge is directly connected to PN53x chip.

## APDB2UA33

This device is an OEM-only product, that means this device comes without enclosure and is designed to be embedded in the targetted application.

Theses devices are PN532-equipped with a front MCU connected by UART to host.

## Internal parts references

* [PIC18LF6621](http://ww1.microchip.com/downloads/en/DeviceDoc/39612.pdf) 64/80-Pin High-Performance, 64-Kbyte Enhanced Flash, Microcontrollers with A/D,
* PN532/104 or PN5321A3HN/C106 NXP NFC chip. 

Note: A bootloader is installed in the MCU and firmware updates are allowed.

## External links

http://www.arygon.de http://www.identive-infrastructure.com 
