#!/bin/bash -x

#WELCOME TO FLIP COIN SIMULATION#

#function  Doublet
function Doublet()
{
	HEAD=0;
	noofcoin=2;

        temp=100
	
	declare -A doubletFlip
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
                	((doubletFlip[$coinSide]++))
                	coinSide=""
        done

	
	function TotalDoublePercentage()
	{

	   for index in ${!doubletFlip[@]}
       	   do
     		let doubletFlip[$index]=(${doubletFlip[$index]} * 100 / $numberOfCoinFlip)
		
   	  done 
		echo "doubletflip:" $doubletFlip[$index]
	}
}

main()
{

Doublet

}
main


