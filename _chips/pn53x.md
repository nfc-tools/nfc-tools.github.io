---
title: PN53x
---

## Overview

There are three branches of the NFC Controllers based on the PN53x chipset. They are all manufactured by NXP.

1. PN531 - ISO14443-A, MIFARE, FeliCa RF, UART, SPI, I2C, USB 2.0 Historically the first and not supported by NXP anymore 
1. PN532 - ISO14443-A/B, MIFARE, FeliCa RF, UART, SPI, I2C, low-battery mode
1. PN533 - ISO14443-A/B, MIFARE, FeliCa RF, UART, USB 2.0 

We encourage manufacturers to contact us for new PN53x based products so we can test and support them. 

## Example

<img src="/img/acr122-top-view.jpg" width="640" class="materialboxed" />

An example of assembled chip on the internal board of the [ACR122 NFC Reader](/resources/devices/acr122/). The PN532 is marked with a red circle. The PN53x chip has a set of registers and a firmware that can parse a simple instruction set. It is possible to control the chip using one of these options.

The registers are quite similar to the predecessor chip [PN51x](../pn51x/). By changing the registers you are able to activate advanced options (bit-rate, modulation impedance, fault tolerance, etc.).

The instruction set however is completely new. With help of these instructions it is very easy to let the chip do standard NFC functionality for you (polling, anti-collision, initiator-mode, target-mode, MIFARE-commands). This is very convenient for software developers. They don't need to know much about embedded hardware before they can start building applications using this chip.

## Connectivity

|          | PN531 | PN532 | PN533
|----------|-------|-------|-------
| UART [1] | Yes   | Yes   | No
| USB [2]  | Yes   | No    | Yes
| SPI      | Yes   | Yes   | No
| I2C      | Yes   | Yes   | No

1. High-Speed UART (up to 1 288 000 bauds)
1. USB 2.0 Full-speed

## Capabilities as initiator (reader)

|             | PN531              | PN532              | PN533
|-------------|--------------------|--------------------|----------------------------
| ISO14443-A  | YES (106 kbps)     | YES (106 kbps)     | YES (106 kbps)
| ISO14443-B  | NO                 | YES (106 kbps)     | YES (106/212/424/847 kbps)
| FeliCa      | YES (212/424 kbps) | YES (212/424 kbps) | YES (212/424 kbps)
| Jewel/Topaz | NO                 | YES (106 kbps)     | YES (106 kbps)
| D.E.P.      | YES                | YES                | YES

## Capabilities as target (emulation)

|           | PN531                 | PN532                 | PN533
|-----------|-----------------------|-----------------------|----------------------------
ISO14443-3  | YES (4 bytes UID [1]) | YES (4 bytes UID [1]) | YES (4 bytes UID [1])
ISO14443-4  | YES (software)        | YES (hardware)        | YES (software)
ISO14443-B  | NO                    | NO                    | NO
FeliCa      | YES (212/424 kbps)    | YES (212/424 kbps)    | YES (212/424 kbps)
Jewel/Topaz | NO                    | NO                    | NO
D.E.P.      | YES                   | YES                   | YES

1. First byte of UID will be masked by 0x08 by the PN53x firmware as security countermeasure against real UID emulation.

##  Chip Instructions

The instruction set of the chip used to be proprietary. There are a lot documents available on the internet that reveal these commands. With help of the available information it was possible to construct this library. Now User Manuals are publicly available. libnfc provide most operations by just invoking the commands available in the PN53x instruction set. For some advanced features it changes a few register values. Currently only a small set of instructions are supported by libnfc, but it already provides a very powerful functionality.

### Official resources

* PN531 support is discontinued, no user manual available
* [PN532 User Manual UM0701-02](http://www.nxp.com/documents/user_manual/141520.pdf)
* [PN533 User Manual UM0801-03](http://www.nxp.com/documents/user_manual/157830_PN533_um080103.pdf)

### Other resources

* [Digant technologies DTNFCxx](http://www.proxmark.org/files/Documents/NFC/DIGANT-nfc-reader-DTNFCxx-datasheet-and-specification.pdf)
* [ACS ACR122 API v1.0](http://www.proxmark.org/files/Documents/NFC/ACS_API_ACR122.pdf)
* [ACS ACR122 API v1.2](http://www.acs.com.hk/download/ACR122/API_ACR122U.pdf)
* [ECMA-340 Near Field Communication Interface and Protocol (NFCIP-1)](http://www.ecma-international.org/publications/files/ECMA-ST/Ecma-340.pdf)
* [ARYGON NFC Reader / Module - Frequently Asked Questions v0.5](http://www.proxmark.org/files/Documents/NFC/ARYGON_FREQUENTLY_ASKED_QUESTIONS_AFAQ_05.pdf)
* [Java library to facilitate NFCIP (P2P) communication between NFC devices](http://code.google.com/p/nfcip-java/)
* [ACR122_PN53x.txt](http://code.google.com/p/nfcip-java/source/browse/trunk/nfcip-java/doc/ACR122_PN53x.txt)
* [A User Interaction Model for NFC Enabled Applications](http://rfid.cs.washington.edu/images/anokwa-nfcinteraction-pertec07.pdf)
