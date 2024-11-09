if [ "$#" -ne 1 ]
then
	echo "Morate predati tacno jedan argument!"
	exit 1
fi

if ! [ -d "$1" ]
then
	echo "$1 nije direktorijum!"
	exit 2
fi




find "$1"/ > files.txt

len=$(wc -l < files.txt)

i=0

while [ $i -lt $len ]
do
	f=$(sed -n "$(($i+1))p" files.txt)

	fname=$(basename $f)

	echo $fname

	i=$(($i+1))
done 
