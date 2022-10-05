#!/bin/sh
MKIMAGE=$HOST_DIR/bin/mkimage
cp ../board/IMXRT/v1/FLASHCONF $BINARIES_DIR
$MKIMAGE -A arm -O linux -T kernel -C none -a 0x6008D840 -e 0x6008D840 -n "Linux kernel" -d $BINARIES_DIR/xipImage $BINARIES_DIR/uImage
