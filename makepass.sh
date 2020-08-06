#!/bin/bash
rand=$(echo $(( $RANDOM % 4 + 1 )))
#echo $rand
upper=("A" "B" "C" "D" "E" "F" "G" "H" "I" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z")
lower=("a" "b" "c" "d" "e" "f" "g" "h" "i" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z")
number=(0 1 2 3 4 5 6 7 8 9)
symbol=("." "," ":" ";" "!" "'" "^" "+" "%" "&" "/" "(" ")" "=" "_" "*" "<" ">" "#" "$" "½" "{" "[" "]" "}" "@")

if [[ $1 == "" ]] || [[ $1 == " " ]];then
        printf "Yardım Sayfasına ulaşmak\n --help, -h, -help, ? \n"
fi     
if [[ $1 == "--help" ]] || [[ $1 == "-help" ]] || [[ $1 == "?" ]] || [[ $1 == "-h" ]];then
	printf "Yardım Sayfası \n -c, --count kaç karakterlik bir şifre oluşturmak istersiniz \n -u, --upper büyük harf olsun \n -l, --lower küçük harf olsun \n -s, --symbol semboller olsun\n"
fi

if [[ $1 == "-c" ]] || [[ $1 == "--count" ]];then

for i in 25 ;
do 
	
rand=$(echo $(( $RANDOM % 4 + 1 )))
echo ${lower[0]}

	if [ $rand -eq 1 ];then
	randu=$(echo $(( $RANDOM % 24 + 0 )))
		for i in ${upper[$randu]};
		do
	     		echo $i
		done
	fi
	if [ $rand -eq 2 ];then
	randl=$(echo $(( $RANDOM % 24 + 0 )))
        	for z in ${lower[$randl]};
        	do
                	echo $z
		done
	fi
	if [ $rand -eq 3 ];then
	randn=$(echo $(( $RANDOM % 9 + 0 )))
        	for g in ${number[$rand]};
        	do
                	echo $g
        	done
	fi
	if [ $rand -eq 3 ];then
	rands=$(echo $(( $RANDOM % 24 + 0 )))
        	for x in ${number[$rand]};
        	do
                	echo ${number[$x]}
        	done
	fi

done
fi

