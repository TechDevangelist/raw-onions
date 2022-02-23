#!/bin/sh

echo $0 $*
progdir=`dirname "$0"`
homedir=`dirname "$1"`

# Timer initialisation
cd /mnt/SDCARD/App/PlayActivity
./playActivity "init"

cd /mnt/SDCARD/RetroArch/
HOME=/mnt/SDCARD/RetroArch/ $progdir/../../RetroArch/retroarch -v -L $progdir/prboom_libretro.so $progdir/freedoom1.wad

# Timer registration
cd /mnt/SDCARD/App/PlayActivity
./playActivity "freedoom1.wad"
