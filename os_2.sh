if ! [ "$#" -gt 0 ]
then 
	echo "Morate unijeti bar jedan argument!"
	exit 1
fi

for dir in "$@"
do
	if ! [ -d $dir ]
	then
		echo "$dir nije direktorijum!"
		exit 2
	fi
done

for dir in "$@"
do
	for f in "$dir"/*
	do
		s=$( wc -c < $f ) #$() koristimo za izvrsavanje komandi, ovdje uzimamo broj karaktera (1 karakter = 1 bit)
		echo $s " bytes " $(basename $f);

		chmod u+rwx $f
	done
done
