#!/bin/sh

source "$HOME/.config/icons.sh"

if [ "$SENDER" = "volume_change" ]; then
  VOLUME="$INFO"

  case "$VOLUME" in
    [6-9][0-9]|100) ICON=$ICON_VOLUME_HIGH
    ;;
    [3-5][0-9]) ICON=$ICON_VOLUME_MEDIUM
    ;;
    [1-9]|[1-2][0-9]) ICON=$ICON_VOLUME_LOW
    ;;
    *) ICON=$ICON_VOLUME_OFF
  esac

  sketchybar --set "$NAME" icon="$ICON" label="$VOLUME%"
fi
