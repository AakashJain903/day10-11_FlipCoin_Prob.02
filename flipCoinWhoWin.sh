#!/bin/bash 
declare -A dictCoin

heads=1
tails=0
headwin=0
tailwin=0

while [ $headwin -ne 21 ] && [ $tailwin -ne 21 ]
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
		exit
	fi
done

function who_win(){
	if [[ $headwin -gt $tailwin ]]
	then
		echo "Head win times :" $headwin

	elif [[ $tailwin -gt $headwin ]]
	then
		echo "Tail win times :" $tailwin

	else
		echo "It's tie"
	fi
}

echo $headwin
echo $tailwin
who_win
