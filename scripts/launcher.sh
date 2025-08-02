if ! pgrep -x wofi &> /dev/null 2>&1; then
	wofi --show drun
else
	killall wofi
fi

