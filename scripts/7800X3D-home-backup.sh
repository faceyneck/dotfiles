#!/usr/bin/env bash


rsync -aHAX --info=progress2 \
  --exclude='.cache/' \
  --exclude='.local/share/Trash/' \
  --exclude='__pycache__/' \
  /home/faceyneck/ /mnt/9TBMedia/7800X3D-home-backup-11-25-2026/
