#!/bin/bash -x

read -p "enter a" a
read -p "enter b" b
read -p "enter c" c

result1=$(($a+($b*$c)))
result2=$((($a*$b)+$c))

echo "first result is $result1"
echo "second result is $result2"



