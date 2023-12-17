#!/bin/sh

if [ -f "buildroot/.config" ]; then
    echo "Building from buildroot config"
    make -C buildroot BR2_EXTERNAL=../base_external
else
    echo "Copy saved config"
    make -C buildroot defconfig BR2_EXTERNAL=../base_external BR2_DEFCONFIG=../base_external/config/raspi2_defconfig
    make -C buildroot BR2_EXTERNAL=../base_external
fi
