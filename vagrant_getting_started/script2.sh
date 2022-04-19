#!/bin/bash

for i in $( ls -1p $HOME/importante | grep '/' | sed "s|/||" )
do
	datebu=$( date +'%Y%m%d' )
	name="$i""_""$datebu"
	cd $HOME/importante
	sudo tar -cJf $i.tar.xz $i
	sudo mv $i.tar.xz /media/backup/$name.tar.xz
done
