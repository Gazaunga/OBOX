# Reclaim Ctrl-S and Ctrl-Q used for suspend/resume and use it for modern mapppings
stty -hupcl -ixon -ixoff
stty stop undef
stty susp undef

if [ "$TERM" = "screen" ]; then
    export TERM=screen-256color
fi

export XDG_CONFIG_HOME=$HOME/.config
