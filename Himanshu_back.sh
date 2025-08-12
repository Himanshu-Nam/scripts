#!/bin/bash
<< help
this is my backup scripts
help

src=$1
des=$2
# timedate=$(date '+%Y-%m-%d-%H-%M-%S')

timestamp=$(date '+%Y-%m-%d-%H-%M-%S')
zip -r "$des\backup-$timestamp.zip" $src > /dev/null
#aws sync s3 $dest s3://backupslinuxscripts
echo "Backup done"

