---
layout: page
permalink: /support/debugging/
title: Debugging
support: true
lead: >
  This page give generic instructions for debugging nfc-tools projects (these are general guidelines, they should apply to any project).
---

## Enabling debugging features

Some nfc-tools project have debugging features that can be turned on at the `./configure` stage, usualy with a `--enable-debug` flag:

~~~
./configure --enable-debug
~~~

## Compiling with debugging symbols

Debugging the nfc-tools is easier with debugging symbols (with gcc, compile with the `-g` flag), but compiler optimisations may make debugging harder than necessary, so turning off optimizations is always a good idea (gcc's `-O0` flag).  You may also consider increasing the warning level if you tweak the code (gcc's `-Wall` and `-Wextra` flags).  All these flags can be combined when passed to the `configure` script:

~~~
./configure CFLAGS="-Wall -Wextra -Werror -O0 -g"
~~~

## Debugging from the build directory

The autotools usualy generate wrapper scripts for built programs.  As an example, after building libfreefare, `examples/mifare-desfire-info` is a shell script that runs the actual program (`examples/.libs/mifare-desfire-info`) in an environment where it can be linked to the `libfreefare/.libs/libfreefare.so.0` library.

~~~
% ldd examples/mifare-desfire-info
ldd: examples/mifare-desfire-info: not a dynamic executable
% ldd examples/.libs/mifare-desfire-info
examples/.libs/mifare-desfire-info:
	libfreefare.so.0 => not found (0)
	libnfc.so.5 => /usr/local/lib/libnfc.so.5 (0x800a34000)
	libm.so.5 => /lib/libm.so.5 (0x800c55000)
	libcrypto.so.8 => /usr/local/lib/libcrypto.so.8 (0x800e7d000)
	libc.so.7 => /lib/libc.so.7 (0x8012d0000)
	libusb.so.3 => /usr/lib/libusb.so.3 (0x80167b000)
	libthr.so.3 => /lib/libthr.so.3 (0x80188e000)
% ./libtool --mode=execute ldd examples/mifare-desfire-info
/home/romain/Projects/libfreefare/examples/.libs/mifare-desfire-info:
	libfreefare.so.0 => /usr/home/romain/Projects/libfreefare/libfreefare/.libs/libfreefare.so.0 (0x800820000)
	libnfc.so.5 => /usr/local/lib/libnfc.so.5 (0x800a3e000)
	libm.so.5 => /lib/libm.so.5 (0x800c5f000)
	libcrypto.so.8 => /usr/local/lib/libcrypto.so.8 (0x800e87000)
	libc.so.7 => /lib/libc.so.7 (0x8012da000)
	libusb.so.3 => /usr/lib/libusb.so.3 (0x801685000)
	libthr.so.3 => /lib/libthr.so.3 (0x801898000)
~~~

For this reason, running a program in the debugger **MUST** be done this way:

~~~
./libtool --mode=execute gdb examples/mifare-desfire-info
~~~

## Running the test suits

Some projects have a regression test suite which can be exercised by running:

~~~
make check
~~~

Refer to each project's README for details about the presence of a test suite and the extra dependencies that it requires.


## Using clang

[clang](http://clang.llvm.org/) is a C frontend for the LLVM compiler.  As an alternative to [gcc](https://gcc.gnu.org/), it has advanced features that can help hunting bugs.  An example that comes to mind is the [address sanitizer](http://clang.llvm.org/docs/AddressSanitizer.html) which can be used by passing more variables to the `configure` script:

~~~
./configure CC="clang" CFLAGS="-O0 -g -fsanitize=address -fno-omit-frame-pointer"
~~~
