sed -n '/^[[:space:]]*#BEGIN_KB/,/^[[:space:]]*#END_KB/p' ~/.config/mango/config.conf |
  grep -E '^[[:space:]]*bind[[:space:]]*=' |
  awk '
    {
      desc = $0
      sub(/^.*##[[:space:]]*/, "", desc)

      line = $0
      sub(/[[:space:]]*##.*$/, "", line)
      sub(/^[[:space:]]*bind[[:space:]]*=[[:space:]]*/, "", line)

      split(line, parts, ",")
      print parts[1] " + " parts[2]
      print desc
    }
  ' | yad --list \
    --title="MangoWM Keybindings" \
    --width=700 \
    --height=320 \
    --column="Keybinding" \
    --column="Description" \
    --search-column=2 \
    --button="Close:0"
