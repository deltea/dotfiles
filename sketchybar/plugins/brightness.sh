#!/bin/sh

source "$HOME/.config/icons.sh"

if [ "$SENDER" = "brightness_change" ]; then
  BRIGHTNESS="$INFO"

  case "$BRIGHTNESS" in
    [6-9][0-9]|100) ICON=$ICON_BRIGHTNESS_HIGH
    ;;
    [3-5][0-9]) ICON=$ICON_BRIGHTNESS_MEDIUM
    ;;
    [1-9]|[1-2][0-9]) ICON=$ICON_BRIGHTNESS_LOW
    ;;
    *) ICON=$ICON_BRIGHTNESS_OFF
  esac

  sketchybar --set "$NAME" icon="$ICON" label="$BRIGHTNESS%"
fi
