#!/bin/sh

# $1 target filesystem
# $2 BR2_ROOTFS_POST_SCRIPT_ARGS

# Environment variables, see https://buildroot.org/downloads/manual/manual.html#rootfs-custom
# BR2_CONFIG: the path to the Buildroot .config file
# CONFIG_DIR: the directory containing the .config file, and therefore the top-level Buildroot Makefile to use (which is correct for both in-tree and out-of-tree builds)
# HOST_DIR, STAGING_DIR, TARGET_DIR: see Section 18.6.2, “generic-package reference”
# BUILD_DIR: the directory where packages are extracted and built
# BINARIES_DIR: the place where all binary files (aka images) are stored
# BASE_DIR: the base output directory 

# add parameters to add i2c in the device tree
grep -qxF 'dtparam=i2c_arm=on' $BINARIES_DIR/rpi-firmware/config.txt || printf "\ndtparam=i2c_arm=on\n" >> $BINARIES_DIR/rpi-firmware/config.txt