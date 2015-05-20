---
title: FeliCa
---

Also known as *NFCF*.

FeliCa is a contactless RFID smart card system from Sony in Japan, primarily used in electronic money cards.

Source: [Wikipedia](http://en.wikipedia.org/wiki/FeliCa)

[Official website](http://www.sony.net/SonyInfo/technology/technology/theme/felica_01.html)

## FeliCa Lite aka RC-S965

[FeliCa Lite User's Manual](http://www.sony.net/Products/felica/business/tech-support/data/fl_usmnl_1.2.pdf)

FeliCa Lite can be configured as a [NFC Forum Type 3 tag](/resources/nfc-tags/type-3/).

At least you need to set the system code to `0x12FC` to make the RC-S965 behave as a NDEF formatted NFC Forum tag. RC-S965 answers as a NDEF formatted NFC Forum tag only when `0x12FC` is specified in the Polling command. 
