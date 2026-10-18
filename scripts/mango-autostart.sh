#!/usr/bin/env bash

# 1. Clear out any existing instances first (prevents background duplicates)
killall wl-clip-persist wl-paste 2>/dev/null

# 2. Keep clipboard content after applications close
wl-clip-persist --clipboard regular --reconnect-tries 0 &

# 3. Watch clipboard and store history via cliphist
wl-paste --type text --watch cliphist store &
wl-paste --type image --watch cliphist store &

# 4. Write a clean timestamp confirmation to your local diagnostic log
echo "Clipboard started successfully at $(date)" > "$HOME/scripts/mango-autostart.log"

