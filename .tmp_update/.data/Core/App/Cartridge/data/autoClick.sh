#!/bin/sh

echo $0 $*
cd $(dirname "$0")
HOME=/mnt/SDCARD

sleep 1

a=`ps | grep MainUI | grep -v grep`

while [ ! "$a" == "" ] ;
do
  ./pressBTN
  sleep 0.5
  a=`ps | grep MainUI | grep -v grep`
done


