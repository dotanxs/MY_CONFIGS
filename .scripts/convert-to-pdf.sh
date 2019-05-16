#!/bin/sh

# script to convert files to pdf depending on the extension.

fullname=$( fzf )
filename=$( echo "$filename" | cut -d '.' -f 1 )
case $fullname in
	*.md) pandoc "$fullname" --pdf-engine=xelatex -o "$filename".pdf
		;;
	*.tex) pandoc "$fullname" --pdf-engine=xelatex -o "$filename".pdf
		;;
	*.ms) groff -ms "$fullname" -T pdf > "$filename".pdf
		;;
	*.mm) groff -mm "$fullname" -T pdf > "$filename".pdf
		;;
	*.me) groff -me "$fullname" -T pdf > "$filename".pdf
		;;
	*) echo "$fullname : Not processed"
		;;
esac
	
	
