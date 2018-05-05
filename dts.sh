#!/bin/bash

# INSTRUCTIONS
# ------------
# Place S7 boot.img in this folder, rename to boot-s7.img
# Place S7 Edge boot.img in this folder, rename to boot-s7e.img
# DTS Files will be found in the files folder

export RDIR=$(pwd)
# Extract DTB from boot.img files
$RDIR/extract-dtb.py -o $RDIR/s7 $RDIR/boot-s7.img
$RDIR/extract-dtb.py -o $RDIR/s7e $RDIR/boot-s7e.img

# Moving and Cleanup
mkdir files
mv -f $RDIR/s7/01_dtbdump_samsung,exynos8890.dtb $RDIR/files/exynos8890-herolte_eur_open_04.dtb
mv -f $RDIR/s7/02_dtbdump_samsung,exynos8890.dtb $RDIR/files/exynos8890-herolte_eur_open_08.dtb
mv -f $RDIR/s7/03_dtbdump_samsung,exynos8890.dtb $RDIR/files/exynos8890-herolte_eur_open_09.dtb
mv -f $RDIR/s7/04_dtbdump_samsung,exynos8890.dtb $RDIR/files/exynos8890-herolte_eur_open_10.dtb
mv -f $RDIR/s7e/01_dtbdump_samsung,exynos8890.dtb $RDIR/files/exynos8890-hero2lte_eur_open_04.dtb
mv -f $RDIR/s7e/02_dtbdump_samsung,exynos8890.dtb $RDIR/files/exynos8890-hero2lte_eur_open_08.dtb
rm -rf $RDIR/s7
rm -rf $RDIR/s7e

# Convert DTB to DTS
./dtc -I dtb -O dts -o $RDIR/files/exynos8890-herolte_eur_open_04.dts $RDIR/files/exynos8890-herolte_eur_open_04.dtb
./dtc -I dtb -O dts -o $RDIR/files/exynos8890-herolte_eur_open_08.dts $RDIR/files/exynos8890-herolte_eur_open_08.dtb
./dtc -I dtb -O dts -o $RDIR/files/exynos8890-herolte_eur_open_09.dts $RDIR/files/exynos8890-herolte_eur_open_09.dtb
./dtc -I dtb -O dts -o $RDIR/files/exynos8890-herolte_eur_open_10.dts $RDIR/files/exynos8890-herolte_eur_open_10.dtb
./dtc -I dtb -O dts -o $RDIR/files/exynos8890-hero2lte_eur_open_04.dts $RDIR/files/exynos8890-hero2lte_eur_open_04.dtb
./dtc -I dtb -O dts -o $RDIR/files/exynos8890-hero2lte_eur_open_08.dts $RDIR/files/exynos8890-hero2lte_eur_open_08.dtb

# Remove DTB Files
rm -f $RDIR/files/*.dtb

exit
