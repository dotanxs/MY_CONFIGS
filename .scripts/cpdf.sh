#!/bin/sh

# script to convert files to pdf depending on the extension.

filename=$( fzf )
file=$( echo "$filename" | cut -d '.' -f 1 )
ext=$( echo "$filename" | cut -d '.' -f 2 )
case $ext in
	md) pandoc "$filename" --pdf-engine=xelatex -o "$file".pdf
		;;
	tex) pandoc "$filename" --pdf-engine=xelatex -o "$file".pdf
		;;
	ms) groff -ms "$filename" -T pdf > "$file".pdf
		;;
	mm) groff -mm "$filename" -T pdf > "$file".pdf
		;;
	me) groff -me "$filename" -T pdf > "$file".pdf
		;;
	*) echo "$filename : Not processed"
		;;
esac
	
	
