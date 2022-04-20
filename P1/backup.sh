#!/bin/bash

path=$HOME/importante
for i in $( ls -1p $HOME/importante | grep '/' | sed "s|/||" )
do
        datebu=$( date +'%Y%m%d' )
        name="$i""_""$datebu"
	cd $path
	for j in $( ls -1t $i )
	do
		cd $i
		sudo tar -cJf /media/backup/$name.tar.xz $(ls -1t | head -5)
		cd ..
	done
done
