#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s autocd

alias doas="doas --"
alias p="doas pacman"
alias ls="ls --color=auto"
alias la="ls -A"
alias bt="bluetoothctl"
alias br="xrandr --output eDP1 --brightness"

export EDITOR=nvim

PS1='[\u@\h \W]\$ '
export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock
export MOZ_ENABLE_WAYLAND=1
