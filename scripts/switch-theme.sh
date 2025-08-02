#!/bin/sh


set -e

theme=$@

if [ $theme == ""]; then
  echo "need an existing theme or the system will crash"
  exit 1
fi

rm ~/.config/hypr/scripts/launcher.sh ~/.config/hypr/scripts/waybar.sh ~/.config/hypr/scripts/startup.sh ~/.config/hypr/scripts/kitty.sh

cp -r ~/.config/hypr/themes/$theme/scripts/* ~/.config/hypr/scripts/

hyprctl reload

