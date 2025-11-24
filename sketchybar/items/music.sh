MONITOR_UUID="DCCC57A9-4B9A-42CB-BFBA-94ADF83B523B"
CURRENT_MONITOR=$(sketchybar --query displays | jq -r '.[0].UUID')

echo "Detected UUID: $CURRENT_MONITOR"

# if [[ "$CURRENT_MONITOR" == "$MONITOR_UUID" ]]; then
  sketchybar --add item music center \
             --subscribe music media_change \
             --set music script="$PLUGIN_DIR/music.sh" \
                         label.max_chars=100 \
                         icon.drawing=on \
                         update_freq=1 \
                         icon.font="JetBrainsMono Nerd Font:Bold:12.0" \
                         background.color=$COLOR_FADED
# fi
