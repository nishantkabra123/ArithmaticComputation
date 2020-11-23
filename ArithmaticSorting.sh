#!/bin/bash
read -p "Enter a : " a
read -p "Enter b : " b
read -p "Enter c : " c
result1=$(($a+($b*$c)))
result2=$((($a*$b)+$c))
result3=$(($c+($a/$b)))
result4=$((($a%$b)+$c))

declare -A results

for i in 1 2 3 4  
do
	results[$i]=`echo "$((result$i))"`
    compute[$i]=${results[$i]}
done

function sortArray(){
array=("$@")
for i in ${!array[@]}
do
	for j in ${!array[@]}
	do
		if [ ${array[$i]} -lt ${array[$j]} ]
		then
				temp=${array[$i]}
				array[$i]=${array[$j]}
				array[$j]=$temp
		fi
	done
done
	echo "Array in ascending order is : " ${array[@]}
}

echo "first result is $result1"
echo "second result is $result2"
echo "third result is $result3"
echo "fourth result is $result4"

echo "results in dictionary are : "${results[@]}
echo "results in array are : "${compute[@]}

sortArray "${compute[@]}"