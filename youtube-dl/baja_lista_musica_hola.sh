#!/bin/bash 

function baja_audio () {
	youtube-dl --extract-audio --audio-format mp3 $1 &
	echo $d $1
} 

d="Hola_Beats"
mkdir $d
cd $d
#
# Nº1
d="STUDY_TIME_Part_1"
mkdir $d
cd $d
baja_audio "https://www.youtube.com/watch?v=a6MU-bwuOvo"
cd ..
# Nº2
d="STUDY_TIME_Part_2"
mkdir $d
cd $d
baja_audio "https://www.youtube.com/watch?v=K2D97-5iSzs"
cd ..
# 
d="There_is_someone_there"
mkdir $d
cd $d
baja_audio "https://www.youtube.com/watch?v=UZqHTJXzZco&list=PLTSD4uLgmzzulGrCblq4AYQmSQbhBO3b0"
cd ..
# 
d="Black"
mkdir $d
cd $d
baja_audio "https://www.youtube.com/watch?v=YJwu1oNG6Zk&list=PLTSD4uLgmzzsS7Y_vDkM9pnWagILZDT7p"
cd ..
# 
d="Continuous_delivery"
mkdir $d
cd $d
baja_audio "https://www.youtube.com/watch?v=zxN9kxRVr98&list=PLTSD4uLgmzzuyodt1SZkqKFoah_OWWyJ9"
cd ..
# 
d="Bobby_Richards-Tak"
mkdir $d
cd $d
baja_audio "https://www.youtube.com/watch?v=wB1ycYpJ4dA&list=PLTSD4uLgmzzs5z-q1khWMRxyItlpBdS-z"
cd 

echo "FIN"
