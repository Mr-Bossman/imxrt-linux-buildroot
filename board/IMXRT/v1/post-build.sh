#!/bin/sh
rm output/images/uImage
cp ../board/IMXRT/v1/FLASHCONF output/images/
cp output/build/linux-e6c04ee28e17171673a83a5aa12512dbfdc2e775/arch/arm/boot/dts/imxrt1050-evk.dtb output/images # bug in curent buildroot for kernel 5.16.x
mkimage -A arm -O linux -T kernel -C none -a 0x6030D840 -e 0x6030D840 -n "Linux kernel" -d output/images/xipImage output/images/uImage
./support/scripts/genimage.sh $2 $3