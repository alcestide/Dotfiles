#! /bin/bash
# ./post-install.sh
#     /\   | |             | | (_)   | |     
#    /  \  | | ___ ___  ___| |_ _  __| | ___ 
#   / /\ \ | |/ __/ _ \/ __| __| |/ _` |/ _ \
#  / ____ \| | (_|  __/\__ \ |_| | (_| |  __/
# /_/    \_\_|\___\___||___/\__|_|\__,_|\___|
                                            
echo "Post-installation script running."
echo "---------------------------------"
sudo pacman -S --needed base-devel git curl --noconfirm
echo "Installing Yay..." && cd $HOME
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd $HOME && git clone https://github.com/alcestide/Dotfiles && cd Dotfiles
echo "Installing packages listed in file..."
yay -S --needed - < packages
[ ! -d "$HOME/Documents/" ] && mkdir -p $HOME/Documents/ 
echo "Copying configuration files..."
cp -r Wallpapers Scripts $HOME/Documents/
# sudo cp -r etc/* /etc/
cp -r .config $HOME/
cp -r .icons .themes .oh-my-zsh .Xdefaults .Xresources .zshrc $HOME/
if [[ $SHELL != "/usr/bin/zsh" ]]; then
    chsh -s /usr/bin/zsh
    printf "Shell changed to zsh.\n" 
else
    printf "Your shell is already zsh.\n" 
fi
zsh
