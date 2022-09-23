at -c 36 | tail -6
cd /home/tungasuca/Música || {
         echo 'Execution directory inaccessible' >&2
         exit 1
}
sh baja_musica.sh
