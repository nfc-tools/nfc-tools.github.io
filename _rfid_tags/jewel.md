---
title: Jewel/Topaz
---

## Identification

ATQA=0C00

## libnfc support

Current support in libnfc is quite limited:

* Shows ATQA & 4-byte JewelID LSB;
* Proprietary commands must be sent manually with e.g. nfc_initiator_transceive_bytes().

These tags can be used as [NFC Forum Type 1](/resources/nfc-tags/type-1/) tags.

## Commands

[Topaz datasheet](http://www.acs.com.hk/drivers/eng/TDS_TOPAZ.pdf)

[The ACR122 manual](http://www.proxmark.org/files/Documents/NFC/ACS_API_ACR122.pdf) has a few examples on page 19.

<pre>REQA
WUPA
RID
RALL
READ
WRITE_E
WRITE_NE</pre>
