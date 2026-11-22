cat << 'EOF' > /home/faceyneck/github/dotfiles/scripts/mango-keybindings.sh
#!/usr/bin/env bash
set -euo pipefail

yad --list \
  --title="MangoWM Keybindings" \
  --width=640 \
  --height=260 \
  --column="Keybinding" \
  --column="Description" \
  --search-column=2 \
  --button="Close:0" \
  "SUPER + Return" "Spawn foot terminal emulator"
EOF
chmod +x /home/faceyneck/github/dotfiles/scripts/mango-keybindings.sh
