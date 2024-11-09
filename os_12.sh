if ! [ "$#" -eq 2 ]
then
	echo "Morate proslijediti tacno dva argumenta!"
	exit 1
fi

for arg in "$@"
do
	if ! [ "$arg" -eq "$arg" ]
	then
		echo "$arg nije prirodan broj!"
		exit 2
	fi
done


a=$1
b=$2

while [ $b -gt 0 ]
do
	temp=$a
	a=$b
	b=$(($temp%$b))
	
done

nzs=$(($1*$2/$a))

echo $a
echo $nzs
