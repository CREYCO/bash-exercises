#!/bin/bash 

function baja_audio () {
	youtube-dl --extract-audio --audio-format mp3 $1 &
	echo $d $1
} 

d="miMusica"
mkdir $d
cd $d


# Nº1
d="Pether_Franton"
mkdir $d
cd $d
baja_audio "https://www.youtube.com/watch?v=g0Eo-gIWzhU&list=PL0C2F5FCFB014E5BD"
cd ..

# Nº2
d="Beatles_Let_it_Be"
mkdir $d
cd $d
baja_audio "https://www.youtube.com/playlist?list=PL0jp-uZ7a4g8yAYvmdbQ2Uh8ZEgqrV0Qf"
baja_audio "https://www.youtube.com/playlist?list=OLAK5uy_lVppDcVh5TI5HLCdhcn5zV3EFxNCEpAog"
cd ..

# Nº3
d="Santana"
mkdir $d
cd $d
baja_audio "https://www.youtube.com/playlist?list=PL81qIOaQorx9p5zGJtIQUypIQusbifbjL"
baja_audio "https://www.youtube.com/watch?v=ZZP-WYpC2HE"
baja_audio "https://www.youtube.com/playlist?list=PLRUZVZvJQsC0a3nrticQf3kOQptlDV1FP"
cd ..


# Nº4
d="Rolligns"
mkdir $d
cd $d
baja_audio "https://www.youtube.com/watch?v=YzjZEci-EiU&list=PLRUZVZvJQsC34fs77CabMXZDc781qjRl6"
cd ..

# Nº5
d="Bethoven"
mkdir $d
cd $d
baja_audio "https://www.youtube.com/watch?v=Fe9LYCorfiE"
cd ..

