echo "Dice rolling..."
i=1
declare -A results
while(($i<=10))
do
	results[$i]="$(((RANDOM%6)+1))"
        i=$(($i+1))
done
echo "All elements in dictionary are : "
for i in ${!results[*]}
do
	echo "After $i times -> Result = ${results[$i]}"
done
