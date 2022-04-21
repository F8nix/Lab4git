#!/bin/bash
if [ "$1" == "--date" ]
	then
	data=$(date)
	data=`date`
	echo $data
fi

if [ "$1" == "--logs" ]

	then
	amount=100
	if [ ! -z $2 ]
	then
	amount=$2
	fi
	
	for i in `seq 1 $amount`;
	do
	echo "log$i.txt $0 $(date)" > "log$i.txt"
	done
fi
