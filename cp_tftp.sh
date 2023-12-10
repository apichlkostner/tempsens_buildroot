#!/bin/sh

sudo cp buildroot/output/images/rootfs.cpio.uboot /srv/tftp/
sudo cp buildroot/output/images/zImage /srv/tftp/
sudo chown dnsmasq /srv/tftp/rootfs.cpio.uboot /srv/tftp/zImage