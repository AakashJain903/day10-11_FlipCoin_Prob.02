#!/bin/bash 
declare -A dictCoin

heads=1
tails=0
headwin=0
tailwin=0
tie=0

function flipCoin(){
	for (( i=o; i<=25; i++))
	do
		flip=$(( RANDOM % 2 ))
		if [[ $flip -eq $heads ]]
		then
			val="HEADS"
			((headwin++))

		elif [[ $flip -eq $tails ]]
		then
			echo "Tail Win"
			((tailwin++))

		else
			((tie++))
			echo "It's tie"
		fi
	done
}

function who_win(){
	if [[ $headwin -gt $tailwin ]]
	then
		echo "Head win times :" $headwin

	elif [[ $tailwin -gt $headwin ]]
	then
		echo "Tail win times :" $tailwin

	else
		echo "It's tie"
		flipCoin
		who_win
	fi
}
flipCoin
echo $headwin
echo $tailwin
who_win
