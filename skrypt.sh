#!/bin/bash
if [ "$1" == "--date" ]
	then
	data=$(date)
	data=`date`
	echo $data
fi

if [ "$1" == "--logs" ]
	then
	for i in {1..100}
	do
	echo "log$i.txt $0 $(date)" > "log$i.txt"
	done
fi
