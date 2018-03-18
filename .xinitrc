xmodmap .Xmodmap
userresources=$HOME/.Xresources

exec openbox-session

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

