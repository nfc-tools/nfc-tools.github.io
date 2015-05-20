---
title: MIFARE Ultralight C
---

Can be configured as backward compatible with [MIFARE Ultralight](/resources/rfid-tags/mifare-ultralight/).

## Access control configuration

Memory layout: see this [Product data sheet](http://www.nxp.com/documents/short_data_sheet/MF0ICU2_SDS.pdf)

Only first byte of pages 0x2A and 0x2B is important.

* 0x2A defines the page address from which the authentication is required. E.g. if 0x2A = 0x30 no authentication is needed all as memory goes up to 0x2F.
* 0x2B defines if authentication is required for read/write (0x2B=0) or only for write access (0x2B=1) 

##  3DES authentication

There is an example of authentication in [mifare-ultralight-info.c](https://github.com/nfc-tools/libfreefare/blob/master/examples/mifare-ultralight-info.c).

If the hex key is: "00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F" then you have to write the sequence "07 06 05 04 03 02 01 00 0F 0E 0D 0C 0B 0A 09 08" in 4 pages, starting from page 0x2C (in decimal, 16 bytes starting from page 44).

See also those posts on the forum:

* [MIFARE UltraLight C 3DES authentication APDUs](http://www.libnfc.org/community/topic/665/mifare-ultralight-c-3des-authentication-apdus/)
* [Ultralight C changing default 3DES key](http://www.libnfc.org/community/topic/624/ultralight-c-changing-default-3des-key/)
* [Mifare Ultralight C authentication configuration](http://www.libnfc.org/community/topic/785/mifare-ultralight-c-authentication-configuration/)

##  NFC Forum Type 2 Tag

NXP [AN1303](http://www.nxp.com/documents/application_note/AN1303.pdf) describes how to use a MIFARE Ultralight C as a [Type 2 Tag](/resources/nfc-tags/type-2/). 
