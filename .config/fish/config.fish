alias cfg="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

set fish_greeting

if string match -q 'screen*' -- $TERM
    powerline-config tmux setup
end

