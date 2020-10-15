#!/bin/bash -x

#WELCOME TO FLIP COIN SIMULATION#

#function singlet
function singlet()
{
	HEAD=0;
	headcount=0;
	tailcount=0;
	temp=100
	
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
        echo "Single tail Percentage :" $singletTailPercentage}
}

function Doublet()
{
	HEAD=0;
	noofcoin=2;

        headcount=0;
        tailcount=0;
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

#singlet
Doublet

}
main


