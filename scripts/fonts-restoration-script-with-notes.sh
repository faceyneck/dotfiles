#!/usr/bin/env bash

# These are the steps we used to restore the fonts before. Adjust them 
# as-needed, depending on where the fonts backup directories are
# extracted to.
# Fonts backed up - at least in one location - on the 9TBMedia drive

cp -rn /tmp/laptop-extract/home/*/.local/share/fonts/* ~/.local/share/fonts/ 2>/dev/null || true
cp -rn /tmp/laptop-extract/usr/share/fonts/* ~/.local/share/fonts/ 2>/dev/null || true
cp -r /tmp/laptop-extract/home/*/.config/fontconfig/* ~/.config/fontconfig/ 2>/dev/null || true
