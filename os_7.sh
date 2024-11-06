if ! [ $# -eq 1 ]
then
	echo "Morate proslijediti tacno jedan broj!"
	exit 1;
fi

if [ $1 -le 0 ] 
then
	echo "Unijeti broj mora biti veci od nule!"
	exit 1;
fi

i=1

while [ $(( i * i + i * i * i )) -lt $1 ]
do
	
	i=$(( i + 1 ))
done
	
echo $i
