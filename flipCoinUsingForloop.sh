#!/bin/bash -x

declare -A dictCoin
read -p "Enter any nummber :" num
heads=1
tails=0

for (( i=0; i<=num; i++ )) do
	flip=$(( RANDOM % 2 ))
	if [[ $flip -eq $heads ]]
	then
		echo "Head Win"

	elif [[ $flip -eq $tails ]]
	then
		echo "Tail Win"

	else
		exit
	fi

done

