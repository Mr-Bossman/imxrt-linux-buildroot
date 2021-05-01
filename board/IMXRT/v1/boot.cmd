setenv bootargs console=ttyS0,115200 root=/dev/ram0 earlycon debug ignore_loglevel
load mmc 0:1 0x80600000 imxrt1050-evk.dtb
load mmc 0:1 0x80000000 uImage

bootm 0x80000000 0x80700000 0x80600000