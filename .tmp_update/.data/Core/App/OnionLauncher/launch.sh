#!/bin/sh

cd /mnt/SDCARD/
rm -rf .tmp_update
mkdir /mnt/SDCARD/.tmp_update
touch /mnt/SDCARD/.tmp_update/.modeTuto
cd /mnt/SDCARD/App/OnionLauncher

if [ -f /mnt/SDCARD/App/OnionLauncher/data/.enabled ] ; then
	rm /mnt/SDCARD/App/OnionLauncher/data/.enabled
	rm ./config.json
	
	cp ./data/configOFF.json ./config.json
	cd /mnt/SDCARD/App/OnionLauncher/data/
	./removed
	
else 
	touch /mnt/SDCARD/App/OnionLauncher/data/.enabled

	
	rm ./config.json
	cp ./data/configON.json ./config.json
	
	mkdir /mnt/SDCARD/.tmp_update
	
	for FILE in ./data/bootData/*
		do
		   cp -R $FILE /mnt/SDCARD/.tmp_update/
	done
	
	
fi
