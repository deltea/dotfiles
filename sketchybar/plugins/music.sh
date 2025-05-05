#!/bin/sh
source "$HOME/.config/icons.sh"

PLAYER_STATE="$(echo "$INFO" | jq -r '.state')"
CURRENT_ARTIST="$(echo "$INFO" | jq -r '.artist')"
CURRENT_SONG="$(echo "$INFO" | jq -r '.title')"

# sketchybar --set $NAME icon=$ICON_MUSIC label="$CURRENT_SONG"

# if [ "$NAME" = "music_indicator"]; then
#   if [ "$PLAYER_STATE" = "playing" ]; then
#     sketchybar --set $NAME drawing=on icon=$ICON_MUSIC
#   else
#     sketchybar --set $NAME drawing=off
#   fi
# else
  if [ "$PLAYER_STATE" = "playing" ]; then
    sketchybar --set $NAME drawing=on icon=$ICON_MUSIC label="$CURRENT_SONG - $CURRENT_ARTIST"
    # sketchybar --set $NAME drawing=on
  else
    sketchybar --set $NAME drawing=off #icon=$ICON_MUSIC_PAUSE label="$CURRENT_SONG"
  fi
# fi

# Mus() {
#   if [[ "$PLAYER_STATE" != "playing" ]]; then
#     sketchybar --set $NAME drawing =off
#   fi
# }
