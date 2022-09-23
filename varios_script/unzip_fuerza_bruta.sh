#!/bin/bash
#The password is here: http://tinybit.cc/7bf3ebd1

echo "ZIP-JTR Decrypt Script";

if [ $# -ne 2 ]
then
echo "Usage $0 <zipfile> <wordlist>";
xit;
fi

unzip -l $1
for i in $(john --wordlist=$2 --rules --stdout) 
do
 echo -ne "\rtrying \"$i\" " 
 unzip -o -P $i $1 >/dev/null 2>&1 
 STATUS=$?
 if [ $STATUS -eq 0 ]; then
 	echo -e "\nArchive password is: \"$i\"" 
 	break
 fi
done
