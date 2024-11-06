read a

i=1

echo > os_11_out.txt
echo > os_11_out_sorted.txt

while [ $i -le $a ]
do
	if [ $(($a%$i)) -eq 0 ]
	then
		echo "$i" >> os_11_out.txt
	fi
	
	i=$((i+1))
done

sort -nr os_11_out.txt > os_11_out_sorted.txt; rm os_11_out.txt
