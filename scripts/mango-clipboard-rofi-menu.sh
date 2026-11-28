#!/usr/bin/env bash

# Exporting $PATH so there aren't any more fucking myserious issues
export PATH="$HOME/.local/bin:$PATH"

# Fetch the history, pipe to rofi, decode the token, and copy it
cliphist list | rofi -dmenu -p "Clipboard" | cliphist decode | wl-copy

