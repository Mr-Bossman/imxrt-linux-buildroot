#!/bin/sh
rm output/images/uImage
cp ../board/IMXRT/v1/FLASHCONF output/images/
cp output/build/linux-ada24fef7868b1f6b75249f589ad1a2e7af1d641/arch/arm/boot/dts/imxrt1050-evk.dtb output/images # bug in curent buildroot for kernel 5.16.x
mkimage -A arm -O linux -T kernel -C none -a 0x80008000 -e 0x80008000 -n "Linux kernel" -d output/images/Image output/images/uImage
./support/scripts/genimage.sh $2 $3