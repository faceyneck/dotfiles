#!/bin/bash
# set -eu

# msg="Please specify destination ie /run/media/<you>/backupData/<you> no / on end!!!!"

# DEST=${1:?$msg}
DEST="/run/media/<you>/backupData/<you>" # SET THIS TO THE DEST WHERE YOU WANT TO BACKUP

if [ "$DEST" == "" ]; then
    echo $msg
    exit 1;
fi

if [ ! -d "$DEST" ]; then
    echo "destination directory does not exist or isn't a directory"
    exit 1;
fi

if [ "${DEST:-1}" == '/' ]; then
    echo "no / on the end!"
    exit 1;
fi

DATE=$(date)
LOGFILE="$DEST/backup.log"
ERRFILE="$DEST/backup.err"

exec 1>>$LOGFILE
exec 2>>$ERRFILE

echo -e "\n\n*********************************\nbacking up home dir on $DATE to $DEST" >> $LOGFILE
echo -e "\n\n*********************************\nbacking up home dir on $DATE to $DEST" >> $ERRFILE

df -h $DEST >> $LOGFILE

# backup installed programs
[ ! -d $DEST/userinstalled.packages ] && mkdir $DEST/userinstalled.packages
sudo dnf history userinstalled | sort > $DEST/userinstalled.packages/$(date +%F)

flatpak list > $DEST/flatpak.installed/$(date +%F)

cd ~

# backup obvious home dirs
rsync -av backup.sh $DEST
rsync -av bin $DEST
rsync -av Desktop $DEST
rsync -av Documents $DEST
rsync Downloads $DEST
rsync -av Music $DEST
rsync -av Pictures $DEST
rsync -av Public $DEST
rsync -av Templates $DEST
rsync -av Videos $DEST

# backup non-obvious stuff
mkdir $DEST/dotFiles 2>/dev/null

rsync -av .mozilla $DEST/dotFiles

DATE=$(date)
echo -e "backup complete $DATE\n" >> $LOGFILE
echo -e "backup complete $DATE\n"

