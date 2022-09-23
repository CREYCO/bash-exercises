#!/bin/bash
#ssh tungasuca@192.168.1.70 "screen -d -m /home/tungasuca/Música/baja_musica.sh"
#ssh tungasuca@192.168.1.70 "screen -d -m /home/tungasuca/Música/bajaBudaBar.sh"
ssh -t tungasuca@192.168.1.70 "nohup /home/tungasuca/Música/bajaBudaBar.sh &"
