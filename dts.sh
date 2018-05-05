#!/bin/bash

# INSTRUCTIONS
# ------------
# Place Tab A boot.img in this folder, rename to boot-taba.img
# DTS Files will be found in the files folder

export RDIR=$(pwd)
# Extract DTB from boot.img files
$RDIR/extract-dtb.py -o $RDIR/taba $RDIR/boot-taba.img

# Moving and Cleanup
mkdir files
mv -f $RDIR/taba/01_dtbdump_Samsung_GTA2SWIFI_PROJECT_Rev00.dtb $RDIR/files/msm8917-sec-gta2swifi-r00.dtb
mv -f $RDIR/taba/02_dtbdump_Samsung_GTA2SWIFI_PROJECT_Rev01.dtb $RDIR/files/msm8917-sec-gta2swifi-r01.dtb
mv -f $RDIR/taba/03_dtbdump_Samsung_GTA2SWIFI_PROJECT_Rev02.dtb $RDIR/files/msm8917-sec-gta2swifi-r02.dtb
mv -f $RDIR/taba/04_dtbdump_Samsung_GTA2SWIFI_PROJECT_Rev03.dtb $RDIR/files/msm8917-sec-gta2swifi-r03.dtb
mv -f $RDIR/taba/05_dtbdump_Samsung_GTA2SWIFI_PROJECT_Rev05.dtb $RDIR/files/msm8917-sec-gta2swifi-r05.dtb
rm -rf $RDIR/taba

# Convert DTB to DTS
./dtc -I dtb -O dts -o $RDIR/files/msm8917-sec-gta2swifi-r00.dts $RDIR/files/msm8917-sec-gta2swifi-r00.dtb
./dtc -I dtb -O dts -o $RDIR/files/msm8917-sec-gta2swifi-r01.dts $RDIR/files/msm8917-sec-gta2swifi-r01.dtb
./dtc -I dtb -O dts -o $RDIR/files/msm8917-sec-gta2swifi-r02.dts $RDIR/files/msm8917-sec-gta2swifi-r02.dtb
./dtc -I dtb -O dts -o $RDIR/files/msm8917-sec-gta2swifi-r03.dts $RDIR/files/msm8917-sec-gta2swifi-r03.dtb
./dtc -I dtb -O dts -o $RDIR/files/msm8917-sec-gta2swifi-r05.dts $RDIR/files/msm8917-sec-gta2swifi-r05.dtb

# Remove DTB Files
rm -f $RDIR/files/*.dtb

exit
