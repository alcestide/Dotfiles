#! /bin/bash
# ./post-install.sh
echo "Post-installation script running."
echo "---------------------------------"
sudo pacman -S --needed base-devel git curl --noconfirm

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S - < packages

if [ -d $HOME/Documents/ ]; then
    break
else
    mkdir -p $HOME/Documents/
fi

cp -r Wallpapers Scripts $HOME/Documents/
sudo cp -r etc/* /etc/
cp -r .config $HOME/
cp -r .icons .themes .oh-my-zsh $HOME/
