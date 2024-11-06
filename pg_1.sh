#proslijediti tacno 3 arg, prvi - dir, drugi - ekstenzija, treci - fajl

#u sljedeca 4 if-a provjeravamo ove zahtjeve
if ! [ $# -eq 3 ]
then
	echo "Morate proslijediti tacno 3 argumenta!"
	exit 1
fi

if ! [ -d $1 ] 
then
	echo "Prvi argument mora biti direktorijum!"
	exit 1
fi

if ! [ -f $3 ]
then
	echo "Trec argument mora biti fajl!"
	exit 1
fi


#prolazimo kroz svaki fajl u ime_dir/* 
for f in "$1"*
do
	fname=$(basename $f) #uzimamo ime iz putanje

	if [ ${fname##*.} = $2 ] #iz uzetog imena izdvajamo ekstenziju i poredimo sa predatom
	then
		cat $f >> $3
		echo "Upisuje se iz $f u $3..."
	fi
done
