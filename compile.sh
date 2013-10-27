#!/bin/bash
ANGSTROM_CROSS=cortexa8hf-vfp-neon-angstrom-linux-gnueabi
ANGSTROM_SYSROOT=/home/export/angstrom/setup-scripts/build/tmp-angstrom_v2013_12-eglibc/sysroots
ANGSTROM_BEAGLE_SYSROOT=$ANGSTROM_SYSROOT/beaglebone
ANGSTROM_PC_SYSROOT=$ANGSTROM_SYSROOT/x86_64-linux
PATH=$PATH:$ANGSTROM_PC_SYSROOT/usr/bin:$ANGSTROM_PC_SYSROOT/usr/bin/$ANGSTROM_CROSS
echo $PATH
. ./setvars.sh
cd build
make CROSS_COMPILE=arm-angstrom-linux-gnueabi-
