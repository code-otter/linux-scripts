#!/bin/bash
# $1 file to transform
#convert -density 400 $1 -resize 25% -quality 92 ${1%%.*}".jpg"
#convert -density 96 -quality 85 $1 ${1%%.*}".jpg"
convertpdftojpg(){
	convert -verbose -density 150 -trim $1 -quality 100 -flatten -sharpen 0x1.0 ${1%%.*}".jpg"
}

if [ -z $1 ];then
	for i in *.pdf
	do
		convertpdftojpg $i
	done
else
	convertpdftojpg $1
fi
