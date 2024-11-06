#ucitavamo karakter moda i vrijednost koju umecemo
read mod
read val

if ! [ "$mod" = "p" -o "$mod" = "s" -o "$mod" = "e" ] #ukoliko nije nijedno od ovo troje, baci error
then
	echo "Mod mora biti jednak, 'p', 's' ili 'e'!"
	exit 1;
fi

for f in $PWD/* #prolazi kroz sve fajlove u trenutnom direktorijumu
do 
	fname=$(basename $f) #uzima se samo ime fajla iz path-a

	if ! [ "$fname" = $(basename $0) ] #poredimo sa $0 - ime ovog fajla, jer ne zelimo njega da mijenjamo tokom rada
	then
		case "$mod" in
			"p")
			mv "$fname" "$val$fname";;
			"s")	
			nam=$(basename ${f%%.*}) #uzima se ime, bez ekstenzije
			ext=${f##*.} 		 #uzima se samo ekstenzija
			mv "$fname" "$nam$val.$ext";; #ovdje se sada vrsi sklapanje
			"e")
			nam=$(basename ${f%%.*})
			mv "$fname" "$nam.$val";;
esac
	fi
done





