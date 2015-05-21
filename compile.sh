#!/bin/bash

# setup path to cross compile from angstrom dist
# must source ~/.oe/environment-angstromv2012.05 first

PATH=$PATH:$OE_BUILD_TMPDIR-eglibc/sysroots/x86_64-linux/usr/bin:$OE_BUILD_TMPDIR-eglibc/sysroots/x86_64-linux/usr/bin/armv7a-angstrom-linux-gnueabi

. ./setvars.sh
cd build
make CROSS_COMPILE=arm-angstrom-linux-gnueabi-
