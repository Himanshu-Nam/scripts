#!/bin/bash
<<help
This is backup scripts to save scripts folder to S3
help
#added comments
src=$1
des=$2
timedate=$(date '+%Y-%m-%d-%H-%M-%S')
zip -r "$des/backup-$timedate.zip" $src > /dev/null
aws s3 sync "$des" s3://backupslinuxscripts


echo "Backup completed and uplaoded in s3 successfully"
