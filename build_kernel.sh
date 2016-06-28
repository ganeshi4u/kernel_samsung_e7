#!/bin/bash

mkdir output

make -C $(pwd) O=output VARIANT_DEFCONFIG=msm8916_sec_e73g_eur_defconfig msm8916_sec_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -C $(pwd) O=output

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
