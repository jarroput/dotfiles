source "$XDG_CONFIG_HOME/zsh/aliases"

# enable autocompletion
autoload -Uz compinit; compinit

# autocomplete hidden files
_comp_options+=(globdots)
source ~/dotfiles/zsh/external/completion.zsh

fpath=($ZDOTDIR/external $fpath)

# prompt styling setup
autoload -Uz prompt_setup; prompt_setup 

# Push the current directory visited to the stack
setopt AUTO_PUSHD

# Do not store duplicate directories in the stack
setopt PUSHD_IGNORE_DUPS

# Do not print the directory stack after using pushd or popd
setopt PUSHD_SILENT

# vi mode
bindkey -v
export KEYTIMEOUT=1
autoload -Uz cursor_mode && cursor_mode

if [ "$(tty)" = "/dev/tty1? ];
then 
    pgrep i3 || exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
fi
