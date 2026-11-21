#!/usr/bin/env bash

# Fetch the history, pipe to rofi, decode the token, and copy it
cliphist list | rofi -dmenu -p "Clipboard" | cliphist decode | wl-copy

