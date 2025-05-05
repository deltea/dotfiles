#!/bin/sh

sketchybar --add item window_title left \
           --subscribe window_title front_app_switched \
           --set window_title script="$PLUGIN_DIR/window_title.sh" \
                              icon.drawing=on \
                              background.color=$COLOR_ACCENT_3 \
                              label.color=$COLOR_FG_0 \
                              icon.color=$COLOR_FG_0 \

