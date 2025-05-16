#!/bin/sh

for i in "${!SPACE_ICONS[@]}"; do
  sid=$(($i + 1))
  space=(
    space=$sid
    script="$PLUGIN_DIR/space.sh"
    label.drawing=off
    icon.drawing=on
    icon.padding_left=6
    icon.padding_right=12
    icon.font="JetBrainsMono Nerd Font:Bold:20.0"
    background.color=$COLOR_ACCENT_3
  )

  sketchybar --add space space."$sid" left \
             --set space."$sid" "${space[@]}"
done

# spaces bracket
sketchybar --add bracket spaces "/space\..*/" \
           --set spaces background.color=$COLOR_ACCENT_4 \
                        label.padding_left=4 \
                        label.padding_right=4
