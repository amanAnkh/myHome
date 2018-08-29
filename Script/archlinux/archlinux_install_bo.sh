#!/usr/bin/sh

# Things to do after install ArchLinux install

#pacman --noconfirm -S sudo
#pacman --noconfirm -Syu

#================================================
# X SERVER
#================================================
#sudo pacman --noconfirm -S xorg-server xorg-utils xorg-server-utils xorg-xinit xorg-xprop


#================================================
# Tools
#================================================

#pacman --noconfirm -S zsh git gcc automake make clang autoconf
#pacman --noconfirm -S wget curl vlc
#pacman --noconfirm -S emacs
#pacman --noconfirm -S tar gzip unzip unrar
#sh install/yaourt.sh
#echo " -- > Configuration zsh ..."
#echo " -- > Telechargement antigen"
#curl -L git.io/antigen > $HOME/antigen.zsh
#cp ../../conf/zsh/.zshrc_antigen ~/.zshrc
#echo "--> DONE < --"

#wget https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip
#unzip *.zip
#mkdir -p /usr/share/fonts/Hack
#sudo cp ttf/*.ttf /usr/share/fonts/Hack/
#fc-cache -f -v
#rm *.zip
#rm -r ttf

#================================================
# G N O M E  & &  I 3
#================================================
read -p 'Voulez vous installez gnome ? [Y/n] ' line
if [ $line = 'Y' ]
then
    pacman --noconfirm gdm gnome
    sudo pacman -S gnome-tweak-tool gnome-extra gnome-system-tools
    systemctl enable gdm
    yaourt -S gnome-terminal-transparency
else
    echo "Gnome ne sera pas installer !"
fi
read -p 'Voulez vous installez i3 ? [Y/n] ' line
if [ $line = 'Y' ]
then
    #pacman -S i3 dmenu lxappearance arc-gtk-theme rofi compton
    #yaourt -S sardi-icons
    sh install/polybar.sh
else
    echo "i3 ne sera pas installer !"
fi
#================================================
#			Daily use packages 
#================================================

# Desktop

#sudo pacman --noconfirm -S firefox chromium  flashplugin
#sudo pacman --noconfirm nitrogen

# Plugins for mp3 playback and other media
#sudo pacman --noconfirm -S alsa-oss alsa-lib alsa-utils

# Comunication
#sudo pacman --noconfirm -S irssi

# P2P
#sudo pacman --noconfirm -S transmission-gtk

# Virtualisation
#sudo pacman --noconfirm qemu

# Faut vraiment tout classer ?
#sudo pacman --noconfirm -S scrot
#sudo pacman --noconfirm -S xprob

#================================================
# C O N F I G U R A T I O N
#================================================


#================================================
# Programming & Chall
#================================================
#sudo pacman --noconfirm xxd
#sudo pacman --noconfirm gdb
#git clone https://github.com/longld/peda.git ~/.peda
#echo "source ~/.peda/peda.py" >> ~/.gdbinit
#echo "DONE! debug your program with gdb and enjoy"

#sh install/sublime_text_3.sh


#================================================
# offensive Sec
#================================================


#================================================
# Security
#================================================

sudo echo "auth optional pam_faildelay.so delay=4000000" >> /etc/pam.d/system-login

# voir firejail (sandbox)