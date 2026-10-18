#!/usr/bin/env bash

# Start swayidle to handle locking and screen power-off after 5 minutes (300s)
swayidle -w \
    timeout 1300 'gtklock' \
    timeout 1300 'wlopm --off \*' \
    resume 'wlopm --on \*' \
    before-sleep 'gtklock'

