#!/bin/bash -x
#WELCOM TO FLIP COIN SIMULATION#

function Triplet()
{
	HEAD=0;
	noofcoin=3;
	temp=100;

	declare -A tripletFlip
        echo ""
        echo "Enter the number of time you want to flip coin:"
        read times
	
	for (( count=0;count<$times;count++ ))
        do
		for (( count1=0;count1<$noofcoin;count1++ ))
                do
			flipcoin=$((RANDOM%2))
            
		    	if [[ $flipcoin -eq $HEAD ]]
         		then
            			coinSide+=H
         		else
            			coinSide+=T
         		fi
                done
                	((tripletFlip[$coinSide]++))
                	coinSide=""
        done



function TotalTriplePercentage()
{

	   for index in ${!tripletFlip[@]}
       	   do
     		let triplletFlip[$index]=(${tripletFlip[$index]}*$temp)/$numberOfCoinFlip
		
   	   done 
		echo "tripletflip:" $tripletFlip[$index]
	
}


}
main()
{

Triplet
TotalTriplePercentage

}
main


