sketchybar --add item battery right \
           --subscribe battery system_woke power_source_change \
           --set battery script="$PLUGIN_DIR/battery.sh" \
                         icon.drawing=on \
                         icon.font="JetBrainsMono Nerd Font:Bold:12.0" \

