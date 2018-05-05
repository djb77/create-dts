#!/bin/bash

# INSTRUCTIONS
# ------------
# Place S8 boot.img in this folder, rename to boot-s8.img
# Place S8+ boot.img in this folder, rename to boot-s8+.img
# DTS Files will be found in the files folder

export RDIR=$(pwd)
# Extract DTB from boot.img files
$RDIR/extract-dtb.py -o $RDIR/s8 $RDIR/boot-s8.img
$RDIR/extract-dtb.py -o $RDIR/s8+ $RDIR/boot-s8+.img

# Moving and Cleanup
mkdir files
mv -f $RDIR/s8/01_dtbdump_samsung,_DREAMLTE-BRINGUP_EUR_rev00.dtb $RDIR/files/exynos8895-dreamlte_eur_open_00.dtb
mv -f "$RDIR/s8/02_dtbdump_samsung,_DREAMLTE_EUR_rev00_(INFINITY_rev0.4).dtb" $RDIR/files/exynos8895-dreamlte_eur_open_01.dtb
mv -f "$RDIR/s8/03_dtbdump_samsung,_DREAMLTE_EUR_rev00_(INFINITY_rev0.5).dtb" $RDIR/files/exynos8895-dreamlte_eur_open_02.dtb
mv -f $RDIR/s8/04_dtbdump_samsung,_DREAMLTE_EUR_rev00.dtb $RDIR/files/exynos8895-dreamlte_eur_open_03.dtb
mv -f $RDIR/s8/05_dtbdump_samsung,_DREAMLTE_EUR_rev00A.dtb $RDIR/files/exynos8895-dreamlte_eur_open_04.dtb
mv -f $RDIR/s8/06_dtbdump_samsung,_DREAMLTE_EUR_rev01.dtb $RDIR/files/exynos8895-dreamlte_eur_open_05.dtb
mv -f $RDIR/s8/07_dtbdump_samsung,_DREAMLTE_EUR_rev02.dtb $RDIR/files/exynos8895-dreamlte_eur_open_07.dtb
mv -f $RDIR/s8/08_dtbdump_samsung,_DREAMLTE_EUR_rev03.dtb $RDIR/files/exynos8895-dreamlte_eur_open_08.dtb
mv -f $RDIR/s8/09_dtbdump.dtb $RDIR/files/exynos8895-dreamlte_eur_open_09.dtb
mv -f $RDIR/s8+/01_dtbdump_samsung,_DREAM2LTE_EUR_rev01.dtb $RDIR/files/exynos8895-dream2lte_eur_open_03.dtb
mv -f $RDIR/s8+/02_dtbdump_samsung,_DREAM2LTE_EUR_rev02.dtb $RDIR/files/exynos8895-dream2lte_eur_open_04.dtb
mv -f $RDIR/s8+/03_dtbdump_samsung,_DREAM2LTE_EUR_rev02.dtb $RDIR/files/exynos8895-dream2lte_eur_open_05.dtb
mv -f $RDIR/s8+/04_dtbdump_samsung,_SM-G955F_rev00.dtb $RDIR/files/exynos8895-dream2lte_eur_open_06.dtb
mv -f $RDIR/s8+/05_dtbdump_samsung,_SM-G955F_rev01.dtb $RDIR/files/exynos8895-dream2lte_eur_open_07.dtb
mv -f $RDIR/s8+/06_dtbdump_samsung,_SM-G955F_rev02.dtb $RDIR/files/exynos8895-dream2lte_eur_open_08.dtb
mv -f $RDIR/s8+/07_dtbdump.dtb $RDIR/files/exynos8895-dream2lte_eur_open_09.dtb
rm -rf $RDIR/s8
rm -rf $RDIR/s8+

# Convert DTB to DTS
./dtc -I dtb -O dts -o $RDIR/files/exynos8895-dreamlte_eur_open_00.dts $RDIR/files/exynos8895-dreamlte_eur_open_00.dtb
./dtc -I dtb -O dts -o $RDIR/files/exynos8895-dreamlte_eur_open_01.dts $RDIR/files/exynos8895-dreamlte_eur_open_01.dtb
./dtc -I dtb -O dts -o $RDIR/files/exynos8895-dreamlte_eur_open_02.dts $RDIR/files/exynos8895-dreamlte_eur_open_02.dtb
./dtc -I dtb -O dts -o $RDIR/files/exynos8895-dreamlte_eur_open_03.dts $RDIR/files/exynos8895-dreamlte_eur_open_03.dtb
./dtc -I dtb -O dts -o $RDIR/files/exynos8895-dreamlte_eur_open_04.dts $RDIR/files/exynos8895-dreamlte_eur_open_04.dtb
./dtc -I dtb -O dts -o $RDIR/files/exynos8895-dreamlte_eur_open_05.dts $RDIR/files/exynos8895-dreamlte_eur_open_05.dtb
./dtc -I dtb -O dts -o $RDIR/files/exynos8895-dreamlte_eur_open_07.dts $RDIR/files/exynos8895-dreamlte_eur_open_07.dtb
./dtc -I dtb -O dts -o $RDIR/files/exynos8895-dreamlte_eur_open_08.dts $RDIR/files/exynos8895-dreamlte_eur_open_08.dtb
./dtc -I dtb -O dts -o $RDIR/files/exynos8895-dreamlte_eur_open_09.dts $RDIR/files/exynos8895-dreamlte_eur_open_09.dtb
./dtc -I dtb -O dts -o $RDIR/files/exynos8895-dream2lte_eur_open_03.dts $RDIR/files/exynos8895-dream2lte_eur_open_03.dtb
./dtc -I dtb -O dts -o $RDIR/files/exynos8895-dream2lte_eur_open_04.dts $RDIR/files/exynos8895-dream2lte_eur_open_04.dtb
./dtc -I dtb -O dts -o $RDIR/files/exynos8895-dream2lte_eur_open_05.dts $RDIR/files/exynos8895-dream2lte_eur_open_05.dtb
./dtc -I dtb -O dts -o $RDIR/files/exynos8895-dream2lte_eur_open_06.dts $RDIR/files/exynos8895-dream2lte_eur_open_06.dtb
./dtc -I dtb -O dts -o $RDIR/files/exynos8895-dream2lte_eur_open_07.dts $RDIR/files/exynos8895-dream2lte_eur_open_07.dtb
./dtc -I dtb -O dts -o $RDIR/files/exynos8895-dream2lte_eur_open_08.dts $RDIR/files/exynos8895-dream2lte_eur_open_08.dtb
./dtc -I dtb -O dts -o $RDIR/files/exynos8895-dream2lte_eur_open_09.dts $RDIR/files/exynos8895-dream2lte_eur_open_09.dtb
# Remove DTB Files
rm -f $RDIR/files/*.dtb

exit
