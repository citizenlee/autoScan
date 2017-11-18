#!/bin/bash

scancmd="scanimage -l 0 -t 0 -x 215 -y 297 --resolution 300 --buffer-size=1M --format tiff > "
filenum=0

while true
do
eval "date -u"
echo $filenum
if [ $filenum -lt "10" ];
then
        fullscancmd="$scancmd img00$filenum.tiff"
elif [ $filenum -lt 100 ] && [ $filenum -ge 10 ];
then
        fullscancmd="$scancmd img0$filenum.tiff"
else
        fullscancmd="$scancmd img$filenum.tiff"
fi 
echo $fullscancmd
filenum=$((filenum+1))
sleep 0
done
