#!/bin/bash
# variables
a=$((1 + $RANDOM % 100))
guess=50; failure=0 
ll=1 # lower_limit 
ul=100 # upper_limit

# Start
if [ $guess -eq $a ];then
    attempts=$(($failure+1))
    echo -e "\n${guess} - Correct guess!. No. of attempts taken: $attempts"
    exit
elif [ $guess -gt $a ];then
    echo -e "\n${guess} - Too High!" # -
    pg2=$guess; failure=$(($failure+1))
    guess=$((${ul}/4))
elif [ $guess -lt $a ];then
    echo -e "\n${guess} - Too Low!" # +
    pg2=$guess; failure=$(($failure+1))
    guess=$(($guess+$((${guess}/2))))
fi
pg1=$guess # output variables: guess = 25 or 75, pg1 = 25 or 75, pg2 = 50

# Main 
check () {
if [ $guess -eq $a ];then
    attempts=$(($failure+1))
    echo -e "\n${guess} - Correct guess!. No. of attempts taken: $attempts"; n=1
    exit
elif [ $guess -gt $a ];then 
    echo -e "\n${guess} - Too High!" # -
    if [ $pg2 -gt $pg1 ];then # previous guess was an output of too high
        pg3=$pg2; pg2=$pg1; failure=$(($failure+1)) 
        guess=$(($(($ll+$pg2))/2))
    elif [ $pg2 -lt $pg1 ];then # previous guess was an output of too low
        pg3=$pg2; pg2=$pg1; failure=$(($failure+1)) 
        guess=$(($(($pg3+$pg2))/2))
    fi
elif [ $guess -lt $a ];then
    echo -e "\n${guess} - Too Low!" # +
    if [ $pg2 -gt $pg1 ];then # previous guess was an output of too high
        pg3=$pg2; pg2=$pg1; failure=$(($failure+1)) 
        guess=$(($(($pg2+$pg3))/2))
    elif [ $pg2 -lt $pg1 ];then # previous guess was an output of too low
        pg3=$pg2; pg2=$pg1; failure=$(($failure+1)) 
        guess=$(($(($pg2+$ul))/2))
    fi  
fi 
pg1=$guess 
}

# Loop Main
n=0
while [ $n -eq 0 ];do
    check
done

