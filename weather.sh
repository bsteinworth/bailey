#!/bin/bash

curl "https://www.wunderground.com/history/airport/GNV/2016/09/08/DailyHistory.html?&format=1" > gnv.txt

maxTemp=`awk -F',' '{print $2}' gnv.txt | sort -n | tail -n1`

echo the Max temp is $maxTemp
