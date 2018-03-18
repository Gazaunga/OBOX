xmodmap .Xmodmap
userresources=$HOME/.Xresources

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

