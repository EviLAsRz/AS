#!/bin/bash
test -d $1
if [ $? == 0 ]
then
	path=$1 #mejor pedir absolute path asi no hay ambigüedad de nombre
	a=1
	for i in $( ls -1p $path | grep -v '/' )
	do
        	cd $path
        	name=$( echo $i|awk -F "." '{print $1}' )
        	ext=$( echo $i|awk -F "." '{print $2}' )
        	if [[ $ext != '' ]]
        	then
                	mv $i $a.$ext
        	else
                	mv $i $a
        	fi
        	((a++))
	done
else 
	echo "no es un directorio, saliendo del programa..."
fi
