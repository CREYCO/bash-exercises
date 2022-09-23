#!/bin/bash

# A script to perform incremental backups using rsync

set -o errexit
set -o nounset
set -o pipefail



readonly MONTAJE_DEV="/dev/sdb4"
readonly MONTAJE_PATH="/media/home"
mount $MONTAJE_DEV $MONTAJE_PATH
#
readonly INCLUIR_DIR="/home/tunga/Documentos/LINUX/SCRIPT_BACKUP/incluir.txt"

cat "$INCLUIR_DIR"
#find $MONTAJE_PATH
echo "Espero <Enter>"
read a

mkdir -p "${MONTAJE_PATH}"

rsync -av -v -d \
  --include-from="${INCLUIR_DIR}" \
   "${MONTAJE_PATH}"

umount "$MONTAJE_PATH"
