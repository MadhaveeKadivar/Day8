echo "Dice rolling..."
i=1
while(($i<=10))
do
	no=$(((RANDOM%6)+1))
	echo "Result after $i times dice rolling : $no"
	i=$(($i+1))
done
