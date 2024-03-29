# Dotfiles

Though the setup should work on any GNU and even non-GNU system, the package install script only works on arch and debian derrivatives right now.

## Screenshots

![](data/screenshots/menu.png)
![](data/screenshots/apps.png)

## Here's the [backgrounds](backgrounds.md)

# Installation

> $ ./data/install-packages arch yay

Works like this: yay installs all the packages required for the dotfiles and more. You can always specify another AUR helper, but the packages in `data/packages` are the names of said packages in AUR. Pacman **will** fail, as some packages are from AUR.

[Here's lunar vim](https://www.lunarvim.org/)

## $HOME files

Check dotbot config for whatever you wish.

**You need `python-yaml` for dotbot**

**Be careful, as it will delete old files**
And then

> $ ./install

## /etc/ files

### Grub

> \# cd data && ./config-root.sh

### Don't forget to create /etc/doas.conf
