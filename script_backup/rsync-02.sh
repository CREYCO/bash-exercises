#!/bin/bash

# A script to perform incremental backups using rsync

set -o errexit
set -o nounset
set -o pipefail


#rsync -avzh /home/proxadmin /root/backups/
# z compress
# h 

readonly INCLUIR_DIR="/home/tunga/Documentos/LINUX/SCRIPT_BACKUP/incluir.txt"
readonly MONTAJE_DEV="/dev/sdb4"
readonly MONTAJE_PATH="/media/home"
mount $MONTAJE_DEV $MONTAJE_PATH


rsync -av -r \
  --include-from="${INCLUIR_DIR}" \
   "${MONTAJE_PATH}"
   
umount "${MONTAJE_PATH}"
