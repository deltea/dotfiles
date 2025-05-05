#!/bin/sh

source "$HOME/.config/icons.sh"

if $(system_profiler SPBluetoothDataType | awk '/Connected:/ {flag=1} /Not Connected:/ {flag=0} flag && /soundcore space one/ {found=1} END {exit !found}'); then
  sketchybar --set bluetooth drawing=on
else
  sketchybar --set bluetooth drawing=off
fi
