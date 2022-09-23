#!/bin/bash 

function baja_audio () {
	youtube-dl --extract-audio --audio-format mp3 $1 &
	echo $d $1
} 

d="Relax"
mkdir $d
cd $d
# Nº1
d="Relax_Bossa"
mkdir $d
cd $d
baja_audio "https://www.youtube.com/watch?v=iXchWUgWlcw"
baja_audio "https://www.youtube.com/watch?v=ZLUgYlmNLB0" 
cd ..
# Nº2
d="Rita_lee"
mkdir $d
cd $d
baja_audio "https://www.youtube.com/watch?v=DNmlhZVx5AE"
baja_audio "https://www.youtube.com/watch?v=xxm7PGiD9o0"
baja_audio "https://www.youtube.com/watch?v=HetRmWnc3_s"
cd ..
# 
d="Bossa_Marley"
mkdir $d
cd $d
baja_audio "https://www.youtube.com/watch?v=7eIQ-LO5-eA"
cd ..
# 


echo "FIN"
