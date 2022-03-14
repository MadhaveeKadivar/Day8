# Write a Program to generate a birth month of 50 individuals between the
# year 92 & 93. Find all the individuals having birthdays in the same month.
# Store it to finally print.

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
	echo -n "Person Number "
	for k in ${!personage[*]}
	do
		if((${personage[$k]}==$j))
		then
			echo -n "$k "
		fi
	done
	echo " ->  Birth month number =  $j"
done
