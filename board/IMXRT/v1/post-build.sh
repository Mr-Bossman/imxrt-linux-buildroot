#!/bin/sh
rm output/images/uImage
cp output/build/linux-3667c7e6fd8df804278256a08b417565fb494fb6/arch/arm/boot/dts/imxrt1170-evk.dtb output/images # bug in curent buildroot for kernel 5.16.x
mkimage -A arm -O linux -T kernel -C none -a 0x80008000 -e 0x80008000 -n "Linux kernel" -d output/images/Image output/images/uImage
./support/scripts/genimage.sh $2 $3
