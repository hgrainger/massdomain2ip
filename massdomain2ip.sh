#!/bin/ksh
file="output.txt"
while IFS= read line
do
	host "$line"|grep " has address "|cut -d" " -f4
done <"$file"
