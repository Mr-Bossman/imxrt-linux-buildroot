#!/bin/sh
rm output/images/uImage
rm output/images/initramfs
mkimage -A arm -O linux -T kernel -C none -a 0x80008000 -e 0x80008000 -n "Linux kernel" -d output/images/Image output/images/uImage
mkimage -A arm -O linux -T ramdisk -C none -n "Root Filesystem" -d output/images/rootfs.cpio output/images/initramfs
./support/scripts/genimage.sh $2 $3