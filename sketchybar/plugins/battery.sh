# !/bin/sh

source "$HOME/.config/icons.sh"

PERCENTAGE="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)"
CHARGING="$(pmset -g batt | grep 'AC Power')"

if [ "$PERCENTAGE" = "" ]; then
  exit 0
fi

case "${PERCENTAGE}" in
  9[0-9]|100) ICON=$ICON_BATTERY_FULL
  ;;
  [6-8][0-9]) ICON=$ICON_BATTERY_HIGH
  ;;
  [3-5][0-9]) ICON=$ICON_BATTERY_MEDIUM
  ;;
  [1-2][0-9]) ICON=$ICON_BATTERY_LOW
  ;;
  *) ICON=$ICON_BATTERY_EMPTY
esac

if [[ "$CHARGING" != "" ]]; then
  ICON=$ICON_BATTERY_CHARGING
fi

sketchybar --set "$NAME" icon="$ICON" label="${PERCENTAGE}%"
