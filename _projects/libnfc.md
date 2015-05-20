---
title: libnfc
order: 1
lead: Platform independent Near Field Communication (NFC) library
xlead: libnfc is the first [Libre](http://en.wikipedia.org/wiki/Libre_software), multi-platform and low level NFC SDK and Programmers API released under the [GNU Lesser General Public License](http://www.gnu.org/licenses/lgpl.html).
---
<!-- It provides complete transparency and royalty-free use for everyone. -->

## Features

<!-- This list shows the current supported features.-->

* Complete coverage of low-level PN53x chipset commands
  * Written in pure and plain C for portability and speed
  * Easy to use programmers API for simple and advanced features
* Released under the open source GNU Lesser General Public License
* Compatible with very cheap but advanced NFC hardware devices
* Compiles “out of the box” on Linux, Mac OS X and Windows
* Does not require any knowledge of RFID 13.56mhz modulation
* Supports ISO14443-A/B, ISO18092 (p2p) and JIS X 6319-4 modulation
* Implements NXP MIFARE Classic and Sony FeliCa protocol
* Can transform your NFC device into a initiator (reader) or target (tag)
* Allows complete control of the transmitted data frames
* Accepts transmission of incorrect or empty CRC information
* Provides a way to send arbitrary and incorrect parity bits
* Supports sending of incomplete byte-frames (e.g. 4 bits error message)
* Allows configuration of advanced chip registers and modulation settings
* Very useful for performing research on hardware and protocol level
* Easy start-up example applications/tools for a quick start 

All major operating systems are supported, including GNU/Linux, Mac OS X and Windows. Compilation should work out of the box on POSIX-systems.

This library supports various NFC hardware devices: dongles, flat and OEM devices.

The library currently supports modulations for ISO/IEC 14443 A and B, FeliCa, Jewel/Topaz tags and Data Exchange Protocol (P2P) as target and as initiator. 
