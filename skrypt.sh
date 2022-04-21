#!/bin/bash
if [[ "$1" == "--date" || "$1" == "-d" ]]
	then
	data=$(date)
	data=`date`
	echo $data
fi

if [[ "$1" == "--logs" || "$1" == "-l" ]]

	then
	amount=100
	if [ ! -z $2 ]
	then
	amount=$2
	fi
	
	for i in `seq 1 $amount`;
	do
	if [ ! -d "log$i" ]
	then
	mkdir "log$i"
	fi
	echo "log$i.txt $0 $(date)" > "log$i/log$i.txt"
	done
fi

if [[ "$1" == "--help" || "$1" == "-h" ]]
	then
	echo "opcje: "
	echo "--help, -h - wyświetl pomoc"
	echo "--date, -d - wyświetl datę"
	echo "--logs, -l [liczba] - wygeneruj [liczba] logów, domyślnie 100"
	echo "--init - pobierz repozytorium i zaktualizuj PATH"
	echo "--error, -e [liczba] - wygeneruj [liczba] błędów, domyślnie 100"
fi

if [ "$1" == "--init" ]
	then
	git clone "https://github.com/F8nix/Lab4git.git"
	export PATH=$PATH:$PWD
fi

if [[ "$1" == "--erorr" || "$1" == "-e" ]]

	then
	amount=100
	if [ ! -z $2 ]
	then
	amount=$2
	fi
	
	for i in `seq 1 $amount`;
	do
	if [ ! -d "error$i" ]
	then
	mkdir "error$i"
	fi
	echo "error$i.txt $0 $(date)" > "error$i/error$i.txt"
	done
fi