#!/bin/sh
echo $0 $*
progdir=`dirname "$0"`
cd $progdir

# Timer initialisation
cd /mnt/SDCARD/App/PlayActivity
./playActivity "init"

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$progdir
HOME=/mnt/SDCARD $progdir/OpenBOR.ss

# Timer registration
cd /mnt/SDCARD/App/PlayActivity
./playActivity "$1"
