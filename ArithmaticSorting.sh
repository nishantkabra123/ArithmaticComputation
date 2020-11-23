#!/bin/bash
read -p "Enter a : " a
read -p "Enter b : " b
read -p "Enter c : " c
result2=$(($a+($b*$c)))
result3=$((($a*$b)+$c))
result4=$(($c+($a/$b)))
result5=$((($a%$b)+$c))

declare -A results

for i in {2..5}
do
	results[$i]=`echo "$((result$i))"`
done

echo "Stored results are : "${results[@]}

echo "first is $result2"
echo "second is $result3"
echo "third is $result4"
echo "fourth is $result5"