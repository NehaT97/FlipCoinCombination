#!/bin/bash -x

#WELCOME TO FLIP COIN SIMULATION#

function singlet()
{
	HEAD=0;
	headcount=0;
	tailcount=0;
	temp=100

	declare -A singletFlip
	echo ""
	echo "Enter the number of time you want to flip coin:"
	read times
	#temp=100;
	echo ""
	for (( count=0;count<$times;count++ ))
	do
		flipcoin=$((RANDOM%2))
		if [[ $flipcoin -eq $HEAD ]]	
		then
			echo "head"
			singletFlip[HEAD]=$((++headcount))
		else
		
			echo "tail"
			singletFlip[Tail]=$((++tailcount))

		fi
	done

	let singletHeadPercentage=($headcount*$temp)/$times
	echo""
	echo "Single Head Count :" $headcount
	echo ""
	echo "Single Head Percentage :" $singletHeadPercentage


	let singletTailPercentage=($tailcount*$temp)/$times
        echo""
        echo "Single tail Count :" $tailcount
        echo ""
        echo "Single tail Percentage :" $singletTailPercentage

}


main()
{
singlet
}
main
