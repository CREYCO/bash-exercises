1:19:10
Bandit Level 12 → Level 13
Level Goal
The password for the next level is stored in the file data.txt, which is a hexdump of a file that has been repeatedly compressed. For this level it may be useful to create a directory under /tmp in which you can work using mkdir. For example: mkdir /tmp/myname123. Then copy the datafile using cp, and rename it using mv (read the manpages!)

Commands you may need to solve this level
grep, sort, uniq, strings, base64, tr, tar, gzip, bzip2, xxd, mkdir, cp, mv, file

xxd --> hexadecimal

Utilizado un Script--> decompressor.sh

#!/bin/bash

name_decompressed=$(7z l content.gzip |grep "Name" -A 2 | tail -n | awk 'NF{print $NF}'
7z x content.gzip > /dev/null/ 2>&1

while true: do
	7z l $name_decompressed > /dev/null 2>&1
	
	if [ "$(echo $?)" == "0" ]; then
		decompressed_next=$(7z l $name_decompressed.gzip |grep "Name" -A 2 | tail -n | awk 'NF{print $NF}'
		7z x $name_decompressed.gzip > /dev/null 2>&1 && name_decompressed=$decompressed_next
	else
		exit 1
	fi
done			 

cat data9.bin 
The password is 8ZjyCRiBWFYkneahHwxCv3wb2a1ORpYL

