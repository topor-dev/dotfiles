ping -q -c 1 1.1.1.1 2>/dev/null 1>&2 
if [ $? -gt 0 ]; then
	out="${pre}down :("
	color=#ff0000
else
	out="${pre}ALIVE!"
	color=#ceff99
fi
printf "$out\n$out\n$color"
