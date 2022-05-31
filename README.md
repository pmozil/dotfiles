# Dotfiles

Though the setup should work on any GNU and even non-GNU system, the install script only works on Arch and it's derrivatives right now.

# Installation

> $ ./data/install-packages yay

Works like this: yay installs all the packages required for the dotfiles and more. You can always specify another AUR helper, but the packages in `data/packages` are the names of said packages in AUR. Pacman **will** fail, as some packages are from AUR.

## $HOME files

Check dotbot config for whatever you wish.

**You neen python-yaml for dotbot**

**Be careful, as it will delete old files**
And then

> $ ./install

#### Also, check out the [wallpaper chooser script](scripts/select-background.sh)

![](data/wp.gif)

## Grub

> \# cd data && ./config-root.sh

## Here's the [backgrounds](backgrounds.md)
