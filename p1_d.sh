echo "Dice rolling ...."
declare -A result
no1=0
no2=0
no3=0
no4=0
no5=0
no6=0
i=1

while((no1!=10 && no2!=10 && no3!=10 && no4!=10 && no5!=10 && no6!=10))
do
        result[$i]="$(((RANDOM%6)+1))"

        if((result[$i]==1))
        then no1=$(($no1+1))
        elif((result[$i]==2))
        then no2=$(($no2+1))
        elif((result[$i]==3))
        then no3=$(($no3+1))
        elif((result[$i]==4))
        then no4=$(($no4+1))
        elif((result[$i]==5))
        then no5=$(($no5+1))
        else no6=$(($no6+1))
        fi

	i=$(($i+1))
done

for i in ${!result[*]}
do
        echo "After $i times -> Result = ${result[$i]}"
done

echo "Number 1 appeared :  $no1 times"
echo "Number 2 appeared :  $no2 times"
echo "Number 3 appeared :  $no3 times"
echo "Number 4 appeared :  $no4 times"
echo "Number 5 appeared :  $no5 times"
echo "Number 6 appeared :  $no6 times"
