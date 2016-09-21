/#!/bin/bash

yesterday=`date -d yesterday +%Y/%m/%d`

curl "https://www.wunderground.com/history/airport/GNV/$yesterday/DailyHistory.html?&format=1" > gnv.txt

maxTemp=`awk -F',' '{print $2}' gnv.txt | sort -n | tail -n1`

echo Yesterday\'s high was $maxTemp
