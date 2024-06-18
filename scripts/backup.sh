#!/bin/bash

printf "Realizando backup das pastas\n"

cp -v $HOME/.zshrc $HOME/arch-gnome/dotfiles/
cp -v $HOME/.XCompose $HOME/arch-gnome/dotfiles/
cp -rv $HOME/.config/Code\ -\ OSS/User/*.json $HOME/arch-gnome/dotfiles/config/Code\ -\ OSS/User/
cp -rv $HOME/.config/vim $HOME/arch-gnome/dotfiles/config
cp -rv $HOME/.config/kitty $HOME/arch-gnome/dotfiles/config
cp -rv $HOME/.config/neofetch $HOME/arch-gnome/dotfiles/config
cp -rv $HOME/.config/forge $HOME/arch-gnome/dotfiles/config
