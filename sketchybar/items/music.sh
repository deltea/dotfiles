MONITOR_UUID="DCCC57A9-4B9A-42CB-BFBA-94ADF83B523B"
CURRENT_MONITOR=$(sketchybar --query displays | jq -r '.[0].UUID')

echo "Detected UUID: $CURRENT_MONITOR"

if [[ "$CURRENT_MONITOR" == "$MONITOR_UUID" ]]; then
  sketchybar --add item music center \
             --subscribe music media_change \
             --set music script="$PLUGIN_DIR/music.sh" \
                         label.max_chars=100 \
                         icon.drawing=on \
                         icon.font="JetBrainsMono Nerd Font:Bold:12.0" \
                         background.color=$COLOR_ACCENT_3
# else
fi
# sketchybar --add item music q \
#           --subscribe music media_change \
#           --set music script="$PLUGIN_DIR/music.sh" \
#                       icon.drawing=off \
#                       label.drawing=off \
#                       image.drawing=on \
#                       background.image=media.artwork \
#                       background.image.corner_radius=10 \
#                       background.color=$COLOR_ACCENT_3

# sketchybar --add item music_indicator e \
#           --subscribe music_indicator media_change \
#           --set music_indicator script="$PLUGIN_DIR/music.sh" \
#                       icon.drawing=on \
#                       background.color=$COLOR_ACCENT_3
