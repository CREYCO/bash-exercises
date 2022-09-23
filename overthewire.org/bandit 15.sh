Bandit Level 15 → Level 16
Level Goal

The password for the next level can be retrieved by submitting the password of the current level to port 30001 on localhost using SSL encryption.

Helpful note: Getting “HEARTBEATING” and “Read R BLOCK”? Use -ign_eof and read the “CONNECTED COMMANDS” section in the manpage. Next to ‘R’ and ‘Q’, the ‘B’ command also works in this version of that command…

Commands you may need to solve this level

ssh, telnet, nc, openssl, s_client, nmap

Primer modo
openssl s_client -connect 127.0.0.1:30001

---
BfMYroe26WYalil77FoDi9qh59eK5xNr  	# paso la contraseña
Correct!
cluFn7wTiGryunymYOu4RcffSxQluehd	# devuelve contraseña del siguiente nivel 16

closed



