#!/usr/bin/env bash

# Force-kill any hanging background loops
killall -q nm-applet

# Explicitly load the system-wide high-contrast icon variables
export GTK_THEME="Breeze-Dark"
export ICON_THEME="breeze-dark"
export XCURSOR_THEME="Breeze_Light"

# Give the Sway system-tray daemon exactly two seconds to settle 
sleep 2

# Execute the applet cleanly using the AppIndicator backend framework
exec /usr/bin/nm-applet --indicator
