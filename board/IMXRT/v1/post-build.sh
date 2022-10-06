#!/bin/sh
MKIMAGE=$HOST_DIR/bin/mkimage
cp ../board/IMXRT/v1/FLASHCONF $BINARIES_DIR
$MKIMAGE -A arm -O linux -T kernel -C none -a 0x80008000 -e 0x80008000 -n "Linux kernel" -d $BINARIES_DIR/Image $BINARIES_DIR/uImage
