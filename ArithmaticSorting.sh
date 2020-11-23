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
    compute[(($i-2))]=${results[$i]}
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

echo "first result is $result2"
echo "second result 0is $result3"
echo "third result is $result4"
echo "fourth result is $result5"

echo "results in dictionary are : "${results[@]}
echo "results in array are : "${compute[@]}

sortArray "${compute[@]}"