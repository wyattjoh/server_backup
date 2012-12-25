#!/bin/bash

ACCOUNT="$1"
DATE=`date +%s`
FILENAME="${ACCOUNT}_backup_${DATE}.tar.bz2"

tar cjf /tmp/"$FILENAME" /backup/cpbackup/weekly/"$ACCOUNT"/
touch /tmp/"$FILENAME"
bash dropbox_uploader.sh upload /tmp/"$FILENAME" /"${ACCOUNT}"/"${FILENAME}"
rm -rf /tmp/"$FILENAME"