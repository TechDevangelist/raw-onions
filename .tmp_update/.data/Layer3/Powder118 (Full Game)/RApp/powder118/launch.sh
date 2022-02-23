#!/bin/sh

echo $0 $*
progdir=`dirname "$0"`
homedir=`dirname "$1"`

# Timer initialisation
cd /mnt/SDCARD/App/PlayActivity
./playActivity "init"

cd /mnt/SDCARD/RApp/Powder118
./powder

# Timer registration
cd /mnt/SDCARD/App/PlayActivity
./playActivity "powder"
