#!/bin/sh	

cd "$1"
for FILE in ./"$2"/*
	do
    cp -R "$FILE" "/mnt/SDCARD/"
done

cd "$1"
rm -rf "$2"