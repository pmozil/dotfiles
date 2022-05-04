#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s autocd

# Aliases
alias doas="doas --"
alias p="doas pacman"
alias ls="ls --color=auto"
alias la="ls -A"
alias bt="bluetoothctl"
alias br="xrandr --output eDP1 --brightness"

# Prompt
PS1='[\u@\h \[\033[0;32m\]$(pwd)\[\033[0m\]]\$ '

# Exports
export EDITOR=nvim
export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock
export MOZ_ENABLE_WAYLAND=1

# Start sway if tty=1
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then sway; fi
