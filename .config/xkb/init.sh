# load the keyboard definitions
export XKBDIR="$HOME/.config/xkb"
export XKBMAPFILE="$XKBDIR/keymap/my"
(sleep 10 && xkbcomp -w0 -I"$XKBDIR" "$XKBMAPFILE" "${DISPLAY}" )&
unset XKBDIR XKBMAPFILE
