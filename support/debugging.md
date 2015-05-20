---
layout: page
permalink: /support/debugging/
title: Debugging
support: true
lead: >
  This page give generic instructions for debugging nfc-tools projects (these are general guidelines, they should apply to any project).
---

## Compiling with debugging symbols

Debugging the nfc-tools is easier with debugging symbols (with gcc, compile with the `-g` flag), but compiler optimisations may make debugging harder than necessary, so turning off optimizations is always a good idea (gcc's `-O0` flag).  You may also consider increasing the warning level if you tweak the code (gcc's `-Wall` and `-Wextra` flags).  All these flags can be combined when passed to the `configure` script:

~~~
./configure CFLAGS="-Wall -Wextra -Werror -O0 -g"
~~~

## Running the test suits

Some projects have a regression test suite which can be executed by running:

~~~
make check
~~~

Refer to each project's README for deails about the presence of a test suite and the optional dependencies that it brings.


## Using clang

[clang](http://clang.llvm.org/) is a C frontend for the LLVM compiler.  As an alternative to [gcc](https://gcc.gnu.org/), it has advanced features that can help hunting bugs.  An example that comes to mind is the [address sanitizer](http://clang.llvm.org/docs/AddressSanitizer.html) which can be used by passing more variables to the `configure` script:

~~~
./configure CC="clang" CFLAGS="-O0 -g -fsanitize=address -fno-omit-frame-pointer"
~~~
