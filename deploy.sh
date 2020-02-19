#!/usr/bin/env bash

preparation(){
  user="$(whoami)"
  su
  dpkg --add-architecture i386 && apt update
  apt install sudo zsh gawk
  adduser "$user" sudo
  chsh -s "$(which zsh)" "$user"
}

git(){
  apt install git
  git clone https://github.com/ekickx/Dotfiles
  git clone https://github.com/ekickx/sss  
  git clone https://github.com/Ventto/lux
  git clone https://github.com/dunst-project/dunst
}

openbox(){
  apt install openbox obconf lxappearance tint2 rofi lightdm lightdm-gtk-greeter
}

xfce(){
  apt install xfwm4 xfconf xfdesktop4 xfce4-session xfce4-settings xfce4-panel xfce4-pulseaudio-plugin xfce4-sntray-plugin lightdm lightdm-gtk-greeter
}

system(){
  cp -r Dotfiles/.config Dotfiles/.scripts Dotfiles/.zshenv Dotfiles/.profile Dotfiles/.zshrc Dotfiles/.npmrc Dotfiles/.tmux.conf
  cp Dotfiles/etc/lightdm/lightdm.conf /etc/lightdm/lightdm.conf
  cp -r Dotfiles/usr/share/X11/xorg.conf.d/40-libinput.conf /usr/share/X11/xorg.conf.d/40-libinput.conf
}

development(){
  apt install git build-essential fakeroot devscripts make ninja-build cmake meson python-pip python3-pip gir1.2-gtk-2.0 gir1.2-gtk-3.0 neovim
}

thunar(){
  apt install thunar xarchiver thunar-archive-plugin tumbler-plugins-extra catfish gvfs-backends gvfs-fuse
}

graphics(){
  apt install imagemagick feh gimp inkscape
}

multimedia(){
  ffmepeg pulseaudio alsa-utils mpv audacious pavucontrol vokoscreen
}
