#!/bin/sh
echo $0 $*
progdir=`dirname "$0"`
homedir=`dirname "$1"`

# Timer initialisation
cd /mnt/SDCARD/App/PlayActivity
./playActivity "init"

./cpufreq.sh
cd /mnt/SDCARD/RetroArch/
HOME=/mnt/SDCARD/RetroArch/ $progdir/../../RetroArch/retroarch -v -L $progdir/chailove_libretro.so "$1"

# Timer registration
cd /mnt/SDCARD/App/PlayActivity
./playActivity "$1"