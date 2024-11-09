if [ $# -ne 1 ]
then
	echo "Morate unijeti tacno jedan broj!"
	exit 1
fi

if ! [ $1 -eq $1 -a $1 -gt 0 ] #za provjeru da li je prirodan broj (jer se pr. brojevi porede sa -eq)
then 
	echo "Argument mora biti prirodan broj > 0!"
	exit 2
fi

i=$1
fac=1

while [ $i -ge 1 ]
do
	fac=$(($fac*$i))
	i=$(($i-1))
done

echo $fac


