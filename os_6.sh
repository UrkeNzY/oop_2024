if ! [ "$#" -eq 3 ]
then
	echo "Morate proslijediti tacno tri argumenta!"
	exit 1
fi

if ! [ -d "$1" ]
then
	echo "Prvi argument mora biti direktorijum!"
	exit 2
fi

if ! [ -f "$3" ]
then
	echo "Treci argument mora biti fajl!"
	exit 3
fi

echo "test" > $2

for f in "$1"/*
do 
	bname=$(basename $f)
	ext=${bname##*.}
	
	if [ $ext = "$2" ]
	then
		cat "$1/$bname" >> "$3"
		rm "$1/$bname"
	fi	
done


