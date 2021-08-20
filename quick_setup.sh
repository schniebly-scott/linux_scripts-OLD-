#!/bin/bash
cd ~
mkdir .resources .themes documents Downloads code pics
#-----------install yay------------
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
sudo rm -r yay

#-----install all packages----------
yay -S --noconfirm xorg-server xorg-xinit libxft libxinerama man kitty polybar pnmixer blueman network-manager-applet remmina freerdp vncproto picom-jonaburg-git etherwake net-tools nmap spotify vivaldi-stable xbindkeys python ruby playerctl nitrogen gucharmap grub-customizer git discord bc xorg-xrandr alsa-utils nerd-fonts-complete vlc inkscape wine virtualbox lightdm lightdm-webkit-theme-aether papirus-icon-theme i3-gaps xsslock i3lock-fancy rofi octopi libvncserver powerkit eog xfce4-power-manager gnome-image-viewer filezilla windscribe-cli zoom zscroll-git metasploit usbutils gvim linux-lts linux-lts-headers a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore gstreamer0.10-plugins p7zip p7zip-plugins unrar tar rsync lxappearance thunar lib32-mesa vulkan-radeon lib32-vulkan-radeon vulkan-icd-loader lib32-vulkan-icd-loader


#custom rofi install-----------------
git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
sudo chmod +x setup.sh
./setup.sh #have to select screen size
cd ..
sudo rm -r rofi

#-----clone the repository and make scripts executable----------
git clone https://github.com/schniebly-scott/linux_config.git

sudo rm -r .config/polybar .config/kitty .config/i3 .config/rofi
cp linux_config/* .config/

sudo chmod -R +x ~/.scripts/

sudo rm -r linux_config

#-------------symlinks----------------
ln -s .config/vimrc .vimrc

ln -s .config/zshrc .zshrc

ln -s .config/xbindkeysrc .xbindkeysrc

ln -s .config/asoundrc .asoundrc

#finished
echo "-----------DONE---------------"
