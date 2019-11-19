#!/bin/bash

OLIFS=$IFS
IFS=","
while read type version name
do
	if [ "$type" == "Non-MQ" ]; then
		echo $type,$version,$name
	fi
done < ../Csv\ Files/spam.csv > ../Csv\ Files/NMQ.csv
IFS=$OLIFS