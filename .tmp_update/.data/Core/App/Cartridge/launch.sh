#!/bin/sh

echo $0 $*
cd $(dirname "$0")
HOME=/mnt/SDCARD

touch /mnt/SDCARD/App/Cartridge/data/.firstLaunch
cd /mnt/SDCARD/
rm -rf .tmp_update
mkdir /mnt/SDCARD/.tmp_update
cp /mnt/SDCARD/App/Cartridge/data/updater /mnt/SDCARD/.tmp_update
chmod a+x /mnt/SDCARD/.tmp_update/updater

rm /mnt/SDCARD/App/Cartridge/data/.exit

cd /mnt/SDCARD/App/Cartridge
./ready
