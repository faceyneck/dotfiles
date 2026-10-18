#!/usr/bin/env bash

# Define the paths to your socket and your gammastep script
export MANGO_INSTANCE_SIGNATURE="/run/user/1000/mango-$(pgrep mango | head -n 1).sock"
GAMMA_SCRIPT="/home/faceyneck/scripts/gammasteppy.sh"

# Fetch the current HDR status from MangoWM
# (Using a quick timeout so watch doesn't hang the script)
IS_HDR=$(timeout 0.2 mmsg watch all-monitors 2>/dev/null | grep -o '"is_hdr":true' | head -n 1)

if [ "$IS_HDR" = '"is_hdr":true' ]; then
    # --------------------------------------------------------------------------
    # TURNING HDR OFF -> Engage SDR and restore your custom Gammastep configuration
    # --------------------------------------------------------------------------
    mmsg dispatch togglehdr,model:AW3425DW
    
    # Wait half a second for the display pipeline to settle, then launch gammastep
    sleep 0.5
    bash "$GAMMA_SCRIPT"
else
    # --------------------------------------------------------------------------
    # TURNING HDR ON -> Kill color filters first, then engage the HDR container
    # --------------------------------------------------------------------------
    pkill -x gammastep 2>/dev/null || true
    
    # Wait for gamma tables to reset completely, then flip the monitor to HDR
    sleep 0.1
    mmsg dispatch togglehdr,model:AW3425DW
fi

