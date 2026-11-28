#!/usr/bin/env bash

# Ensure user local binaries are in PATH when launched by compositor
export PATH="$HOME/.local/bin:/usr/local/bin:$PATH"

# Give MangoWM a moment to finish exposing the Wayland data-control socket
sleep 1

# 1. Clear out any existing instances first (prevents background duplicates)
killall -q wl-clip-persist wl-paste 2>/dev/null

# 2. Keep clipboard content after applications close
nohup wl-clip-persist --clipboard regular --reconnect-tries 0 >/dev/null 2>&1 &

# 3. Watch clipboard and store history via cliphist
nohup wl-paste --type text --watch cliphist store >/dev/null 2>&1 &
nohup wl-paste --type image --watch cliphist store >/dev/null 2>&1 &

# 4. Fire up the OLED idle display power manager script
nohup /home/faceyneck/scripts/idle.sh >/dev/null 2>&1 &

# 5. Write a clean timestamp confirmation to your local diagnostic log
echo "Clipboard started successfully at $(date)" > "$HOME/scripts/mango-clipboard-autostart.log"

