if [ $# -eq 0 ]
then
	echo "Morate unijeti bar jedan argument!"
	exit 1
fi

#provjeriti da li se fajl nalazi u direktorijumu



for f in "$@" 
do
	if [ -f $f ]
	then 
		fname=$(basename $f)
		fname1=${fname%%.*}
		fext=${fname##*.}

		mv "$f" "$fname1(1).$fext"
	elif [ -d $f ]
	then
		cp "$f" -r "$f""_BACKUP/"
	else
		echo "$f nije validan!"	
	fi
done
