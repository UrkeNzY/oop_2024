#prvi arg - direktorijum iz kojeg se kopira, drugi arg - dir u koji se kopira (opcionalan)

if [ $# -lt 1 ] 
then
	echo "Morate navesti bar jedan argument!"
	exit 1
fi

if ! [ -d $1 ]
then
	echo "Prvi argument nije validan direktorijum!"
	exit 1
fi

i=0

if [ $# -ne 2 ] || ! [ -d $2 ] 
then 
	mkdir "BACKUP"

	for f in "$1"*
	do
		fname=$(basename $f)
		fn=${fname%%.*}
		cp "$1$fname" "BACKUP/$fn.bak"
		i=$(($i + 1))
	done
else

	for f in "$1"*
	do
		fname=$(basename $f)
		fn=${fname%%.*}
		cp "$1$fname" "$2/$fn.bak"
		i=$(($i + 1))
	done
fi

echo "Kopirano $i fajlova!"
