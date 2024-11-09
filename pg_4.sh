#./pg_4.sh dir1 datot
#iz dir1 uzeti sve fajlove sa vise od jednom linijom i da ima "Operativni" i upisati 

if ! [ "$#" -eq 2 ]
then
	echo "Morate predati dva argumenta!"
	exit 1
fi

if ! [ -d "$1" ]
then
	echo "$1 nije validan direktorijum!"
	exit 2
fi

if ! [ -f "$2" ]
then
	echo "$2 nije validna datoteka!"
	exit 3
fi

for f in "$1"/*
do
	lcnt=$(cat "$f" | wc -l)
	opcnt=$(grep -i "Operativni" $f | wc -c)
	
	if [ $lcnt -gt 1 -a $opcnt -gt 0 ]
	then
		echo $f > $2
	fi
	
done
