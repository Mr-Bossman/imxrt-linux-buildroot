# i.MXRT Buildroot

How to build:

```bash
git clone https://github.com/Mr-Bossman/imxrt-linux-buildroot

cd imxrt-linux-buildroot

git submodule update --init

cd buildroot

make BR2_EXTERNAL=$PWD/../ imxrt1050-evk_fspi_defconfig

make

sudo dd status=progress oflag=sync bs=4k if=output/images/sdcard.img of=/dev/sdX; sync
```
