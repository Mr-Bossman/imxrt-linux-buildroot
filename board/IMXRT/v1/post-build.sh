#!/bin/sh
rm output/images/uImage
cp output/build/linux-0ad2671c3c313582c6aeb5d0b06b89ca1b25a52d/arch/arm/boot/dts/imxrt1050-evk.dtb output/images # bug in curent buildroot for kernel 5.16.x
mkimage -A arm -O linux -T kernel -C none -a 0x80008000 -e 0x80008000 -n "Linux kernel" -d output/images/Image output/images/uImage
./support/scripts/genimage.sh $2 $3
