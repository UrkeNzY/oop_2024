#dir ext...

if [ "$#" -eq 0 ]
then
	echo "Unesite bar jedan argument!"
	exit 1
fi

if ! [ -d "$1" ]
then
	echo "$1 nije direktorijum!"
	exit 2
fi

dir=$1

shift

touch e.txt

echo "$*" > e.txt

for file in "$dir"/*
do
	fname=$(basename $file)
	fext=${fname##*.}
	lcnt=$(grep "$fext" e.txt | wc -c)

	if [ $lcnt -eq 0 ]
	then
		rm "$file"
	fi
done

> b.txt

for file in "$dir"/*
do
	lcnt=$(wc -c $file | sort -n)
	echo "$lcnt" >> b.txt

	sort -n -r b.txt > b_sorted.txt
done

head -1 b_sorted.txt


