#!/bin/sh

echo $0 $*
progdir=`dirname "$0"`
cd /mnt/SDCARD/RetroArch/
./retroarch -v -L /mnt/SDCARD/App/LittleSoundDJ/gambatte_libretro.so /mnt/SDCARD/App/LittleSoundDJ/lsdj9_2_L.gb


	