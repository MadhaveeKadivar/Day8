declare -A personage
for((i=1;i<=50;i++))
do
	personage[$i]="$(((RANDOM%12)+1))"
done
montharray=()
for((i=1;i<=12;i++))
do
	montharray+=("$i")
done
for j in ${montharray[*]}
do
	a=0
	echo -n "Person Number "
	for k in ${!personage[*]}
	do
		if((${personage[$k]}==$j))
		then
			echo -n "$k "
			a=$(($a+1))
		fi
	done
	echo " ->  Birth month number =  $j"
done
