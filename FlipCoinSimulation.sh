#!/bin/bash -x

#WELCOME TO FLIP COIN SIMULATION#

HEAD=0;
TAIL=1;

flipcoin=$((RANDOM%2))
#echo $flipcoin
if [[ $flipcoin -eq $HEAD ]]
then
	echo "head"
else
	echo "tail"
fi
