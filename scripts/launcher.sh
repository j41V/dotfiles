if ! pgrep -x wofi &> /dev/null 2>&1; then
	wofi -s ~/.config/hypr/themes/black-n-white/wofi/style.css --show drun
else
	killall wofi
fi

