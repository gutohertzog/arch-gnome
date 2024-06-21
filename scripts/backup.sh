#!/bin/bash

clear

printf "Realizando backup das pastas\n"

printf "Copiando arquivos\n"
cp -v $HOME/.zshrc $HOME/arch-gnome/dotfiles/
cp -v $HOME/.XCompose $HOME/arch-gnome/dotfiles/

# exporta as configurações do Gnome
dconf dump / | sed -n '/\[org.gnome.desktop.background/,/^$/p' > $HOME/arch-gnome/dotfiles/config/dconf/user-settings.conf
dconf dump / | sed -n '/\[org.gnome.desktop.input-sources/,/^$/p' >> $HOME/arch-gnome/dotfiles/config/dconf/user-settings.conf
dconf dump / | sed -n '/\[org.gnome.desktop.interface/,/^$/p' >> $HOME/arch-gnome/dotfiles/config/dconf/user-settings.conf
dconf dump / | sed -n '/\[org.gnome.desktop.peripherals.keyboard/,/^$/p' >> $HOME/arch-gnome/dotfiles/config/dconf/user-settings.conf
dconf dump / | sed -n '/\[org.gnome.desktop.peripherals.mouse/,/^$/p' >> $HOME/arch-gnome/dotfiles/config/dconf/user-settings.conf
dconf dump / | sed -n '/\[org.gnome.desktop.screensaver/,/^$/p' >> $HOME/arch-gnome/dotfiles/config/dconf/user-settings.conf
dconf dump / | sed -n '/\[org.gnome.desktop.wm.keybindings/,/^$/p' >> $HOME/arch-gnome/dotfiles/config/dconf/user-settings.conf
dconf dump / | sed -n '/\[org.gnome.desktop.wm.preferences/,/^$/p' >> $HOME/arch-gnome/dotfiles/config/dconf/user-settings.conf
dconf dump / | sed -n '/\[org.gnome.settings-daemon.plugins.media-keys/,/^$/p' >> $HOME/arch-gnome/dotfiles/config/dconf/user-settings.conf
# desativado até arrumar os aplicativos e extensões
# [org/gnome/shell]
# dconf dump / | sed -n '/\[org.gnome.shell/,/^$/p' >> $HOME/arch-gnome/dotfiles/config/dconf/user-settings.conf
dconf dump / | sed -n '/\[org.gnome.shell.extensions.blur-my-shell/,/^$/p' >> $HOME/arch-gnome/dotfiles/config/dconf/user-settings.conf
dconf dump / | sed -n '/\[org.gnome.shell.extensions.caffeine/,/^$/p' >> $HOME/arch-gnome/dotfiles/config/dconf/user-settings.conf
dconf dump / | sed -n '/\[org.gnome.shell.extensions.clipboard-indicator/,/^$/p' >> $HOME/arch-gnome/dotfiles/config/dconf/user-settings.conf
dconf dump / | sed -n '/\[org.gnome.shell.extensions.dash-to-dock/,/^$/p' >> $HOME/arch-gnome/dotfiles/config/dconf/user-settings.conf
dconf dump / | sed -n '/\[org.gnome.shell.keybindings/,/^$/p' >> $HOME/arch-gnome/dotfiles/config/dconf/user-settings.conf

cp -rv $HOME/Pictures/wallpapers/* $HOME/arch-gnome/dotfiles/Images/

cp -rv $HOME/.config/Code\ -\ OSS/User/*.json $HOME/arch-gnome/dotfiles/config/Code\ -\ OSS/User/
cp -rv $HOME/.config/kitty $HOME/arch-gnome/dotfiles/config
cp -rv $HOME/.config/neofetch $HOME/arch-gnome/dotfiles/config
cp -rv $HOME/.config/vim $HOME/arch-gnome/dotfiles/config
