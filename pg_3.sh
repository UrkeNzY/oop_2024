if [ $# -gt 8 ] #Provjerava se broj argumenata
then
	echo "Unijeli ste previse argumenata!"
	exit 1
fi 

ost=$(($# % 2)) #cuvamo ostatak

if [ $ost -ne 0 ] #ako nije nula, vratiti gresku
then
	echo "Morate unijeti paran broj fajlova!"
	exit 1
fi

for arg in "$@" #za svaki argument u listi argumenata ("$@" vraca svaki posebno, "$*" vraca sve kao jedan string)
do
	echo "$arg"
	if ! [ -f "$arg" ] #ako argument nije fajl, vratiti gresku
	then
		echo "$arg nije validan fajl!"
		exit 1
	fi
done

i=1 #inicijalizujemo brojac


while [ $i -lt $# ] #vrtimo sve dok je i manji od broja argumenata
do

j=$((i+1))

	echo "a$i."* > "a$j."* #kopiramo iz i-tog u i+1

	i=$(($i + 1)) #inkrementujemo brojac
done
