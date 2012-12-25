#!/bin/bash

ACCOUNT="$1"
DATE=`date +%s`
FILENAME="${ACCOUNT}_${DATE}.tar.bz2"

tar cjf /root/"$FILENAME" /backup/cpbackup/weekly/"$ACCOUNT"/
bash dropbox_uploader.sh upload /root/"$FILENAME"
rm -rf /root/"$FILENAME"