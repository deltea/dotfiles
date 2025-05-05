#!/bin/sh

sketchybar --set "$NAME" icon= background.drawing=false icon="$([[ $SELECTED == true ]] && echo "" || echo "")" #background.drawing="$SELECTED"
