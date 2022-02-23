#!/bin/sh
echo $0 $*
progdir=`dirname "$0"`
homedir=`dirname "$1"`
./cpufreq.sh
tinymix set 6 100
cd /mnt/SDCARD/RetroArch/
HOME=/mnt/SDCARD/RetroArch/ $progdir/../../RetroArch/retroarch -v -L $progdir/arduous_libretro.so "$1"