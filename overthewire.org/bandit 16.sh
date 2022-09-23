
Bandit Level 16 → Level 17
Level Goal

The credentials for the next level can be retrieved by submitting the password of the current level to a port on localhost in the range 31000 to 32000. First find out which of these ports have a server listening on them. Then find out which of those speak SSL and which don’t. There is only 1 server that will give the next credentials, the others will simply send back to you whatever you send to it.
Commands you may need to solve this level

ssh, telnet, nc, openssl, s_client, nmap
Helpful Reading Material

    Port scanner on Wikipedia

nmap --open -T5 -v -n  -p31000-32000 127.0.0.1

Starting Nmap 7.40 ( https://nmap.org ) at 2022-08-05 17:15 CEST
Initiating Ping Scan at 17:15
Scanning 127.0.0.1 [2 ports]
Completed Ping Scan at 17:15, 0.00s elapsed (1 total hosts)
Initiating Connect Scan at 17:15
Scanning 127.0.0.1 [1001 ports]
Discovered open port 31046/tcp on 127.0.0.1
Discovered open port 31790/tcp on 127.0.0.1
Discovered open port 31960/tcp on 127.0.0.1
Discovered open port 31691/tcp on 127.0.0.1
Completed Connect Scan at 17:15, 1.15s elapsed (1001 total ports)
Nmap scan report for 127.0.0.1
Host is up (0.00026s latency).
Not shown: 996 closed ports, 1 filtered port
Some closed ports may be reported as filtered due to --defeat-rst-ratelimit
PORT      STATE SERVICE
31046/tcp open  unknown
31691/tcp open  unknown
31790/tcp open  unknown
31960/tcp open  unknown

Read data files from: /usr/bin/../share/nmap
Nmap done: 1 IP address (1 host up) scanned in 1.20 seconds

PROBANDO PUERTOS

openssl s_client -connect 127.0.0.1:31790


  Start Time: 1659712880
    Timeout   : 7200 (sec)
    Verify return code: 18 (self signed certificate)
    Extended master secret: yes
---
cluFn7wTiGryunymYOu4RcffSxQluehd
Correct!

-----BEGIN RSA PRIVATE KEY-----

copio el contenido en un sub-dir temporal
mktemp -d
/tmp/tmp.f4exxvClza
cd /tmp/tmp.f4exxvClza
bandit16@bandit:/tmp/tmp.f4exxvClza$ nano id_rsa
bandit16@bandit:/tmp/tmp.f4exxvClza$ chmod 600 id_rsa # es necesario cambiar el pernmiso para el propietario

bandit16@bandit:/tmp/tmp.f4exxvClza$ ssh -i id_rsa bandit17@localhost	# accedo al siguiente nivel 17
bandit17@bandit:~$ cat /etc/bandit_pass/bandit17 		# tengo la clave para el sig. nivel
xLYVMN9WE5zQ5vHacb0sZEVqbrp7nBTn
















