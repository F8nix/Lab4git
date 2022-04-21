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

if [ "$1" == "--help" ]
	then
	echo "opcje: "
	echo "--help - wyświetl pomoc"
	echo "--date - wyświetl datę"
	echo "--logs [liczba] - wygeneruj [liczba] logów, domyślnie 100"
fi
