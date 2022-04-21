#!/bin/bash
if [ "$1" == "--date" || "$1" == "-d" ]
	then
	data=$(date)
	data=`date`
	echo $data
fi

if [ "$1" == "--logs" || "$1" == "-l" ]

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

if [ "$1" == "--help" || "$1" == "-h" ]
	then
	echo "opcje: "
	echo "--help - wyświetl pomoc"
	echo "--date - wyświetl datę"
	echo "--logs [liczba] - wygeneruj [liczba] logów, domyślnie 100"
fi

if [ "$1" == "--init" ]
	then
	git clone "https://github.com/F8nix/Lab4git.git"
	export PATH=$PATH:$PWD
fi
