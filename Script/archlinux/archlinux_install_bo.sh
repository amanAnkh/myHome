#!/usr/bin/sh

# Things to do after install ArchLinux install

#pacman --noconfirm -S sudo
#pacman --noconfirm -Syu

# X SERVER
#sudo pacman --noconfirm -S xorg-server xorg-utils xorg-server-utils xorg-xinit



# Tools
#pacman --noconfirm -S zsh git gcc automake make clang autoconf
#pacman --noconfirm -S curl vlc
#pacman --noconfirm -S emacs
#pacman --noconfirm -S tar gzip unzip unrar
#sh install/yaourt.sh
#echo " -- > Configuration zsh ..."
#echo " -- > Telechargement antigen"
#curl -L git.io/antigen > $HOME/antigen.zsh
#cp ../../conf/zsh/.zshrc_antigen ~/.zshrc
#echo "--> DONE < --"

read -p 'Voulez vous installez gnome ? [Y/n] ' line
if [ $line = 'Y' ]
then
    pacman --noconfirm gdm gnome
    sudo pacman -S gnome-tweak-tool gnome-extra gnome-system-tools
    systemctl enable gdm
else
    echo "Gnome ne sera pas installer !"
fi


#			Daily use packages 


# Desktop

#sudo pacman --noconfirm -S firefox flashplugin

# Plugins for mp3 playback and other media
#sudo pacman --noconfirm -S alsa-oss alsa-lib alsa-utils
