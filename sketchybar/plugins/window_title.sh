#!/bin/sh

case $INFO in
  "Arc") ICON=󰖟 ;;
  "Code") ICON=󰨞 ;;
  "Discord") ICON= ;;
  "FaceTime") ICON= ;;
  "Finder") ICON=󰀶 ;;
  "Google Chrome") ICON= ;;
  "VLC") ICON=󰕼 ;;
  "Ghostty") ICON=󰊠 ;;
  "kitty") ICON=󰄛 ;;
  "Messages") ICON= ;;
  "Notion") ICON=󰎚 ;;
  "Preview") ICON= ;;
  "Spotify") ICON= ;;
  "TextEdit") ICON= ;;
  "Slack") ICON= ;;
  "Godot") ICON= ;;
  "zoom.us") ICON=  ;;
  "System Settings") ICON= ;;
  "Steam Helper") ICON= ;;
  "Aseprite") ICON=󰏘 ;;
  "Blender") ICON= ;;
  "Inkscape") ICON= ;;
  "Terminal") ICON= ;;
  "iTerm2") ICON= ;;
  "Obsidian") ICON= ;;
  *) ICON= ;;
esac

if [ "$SENDER" = "front_app_switched" ]; then
  sketchybar --set "$NAME" label="$INFO" icon="$ICON" #icon.drawing=true background.color=0x00282828 background.height=30 icon.padding_left=12 label.padding_right=12 background.corner_radius=20 background.border_width=2 background.border_color=0xffa9b1d6
fi
