#!/usr/bin/bash

DATE=`date +%m%d%Y`
RETENTIONDAYS=28
BACKUPDIR=/sqlbackup
HOSTNAME=$(hostname)

/usr/bin/mysqldump -uroot -pSecretP@ss! --all-databases > /${BACKUPDIR}/${HOSTNAME}_${DATE}.sql

find ${BACKUPDIR}/${HOSTNAME}_* -type f -mtime +${RETENTIONDAYS} -exec rm -f {} \;
