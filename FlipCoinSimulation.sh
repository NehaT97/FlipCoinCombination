#!/bin/bash -x

#WELCOME TO FLIP COIN SIMULATION#

#Head And TAil Combination
function UserFlipCoins()
{
	echo "Enter number of times you want to flip:"
	read times

	echo " Enter No of coins for Singlet ,doublet ,triplet:"
	read NoOfcoins


	declare -A flipStore
	flip=0
	temp=0
	max=0
	temp1=100


        for(( i=0; i<times; i++ ))
        do
                face=""
                for(( j=0; j<NoOfcoins; j++ ))
                do
                        
                        flipCoin=$((RANDOM%2))
                        
			if [[ $flipCoin -eq $flip ]]
                        then
                                face=Head++
                        else
                                face=Tail++
                        fi
                done
                flipStore[$face]=$((${flipStore[$face]}+1))
        done

        	echo "Count of all combination: " ${flipStore[@]}
		echo "All head and tail combination:" ${!flipStore[@]}

}


#percentage of head and tail combination or  Wininnig combination 
function TotalPercentageFlip()
{
        for i in ${!flipStore[@]}
        {
                let flipStore[$i]=$((${flipStore[$i]}))/$times*temp1
                temp=${flipStore[$i]}

                if (( $temp -ge $max ))
                then
                        max=$temp
                        key=$i
                fi
        }
}

main()
{

UserFlipCoins 
TotalPercentageFlip

echo""
echo "percentage of all combination:${flipStore[@]}"
echo "Maximum  winning combination:" $max ":" $key

}
main

