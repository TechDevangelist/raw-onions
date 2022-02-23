#!/bin/sh

cd /mnt/SDCARD/miyoo/app/
rm -rf skin

for FILE in "/mnt/SDCARD/App/ThemeSwitcher/Themes/$1/app/*"
	do
	cp -R $FILE /mnt/SDCARD/miyoo/app/
done	

