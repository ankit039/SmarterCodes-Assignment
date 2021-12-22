# !/bin/bash

echo "Enter a number till there you will get a Fibonacci Sereis"
read t

first=0 #first number
second=1 #second number

echo "Below is "$t" number of Fibonacci Sereis: "

for((i=0; i<t; i++))
do
        echo "$first "
        var=$((first+second))
        first=$second
        second=$var
done
