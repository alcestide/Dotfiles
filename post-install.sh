#! /bin/bash
# ./post-install.sh
#     /\   | |             | | (_)   | |     
#    /  \  | | ___ ___  ___| |_ _  __| | ___ 
#   / /\ \ | |/ __/ _ \/ __| __| |/ _` |/ _ \
#  / ____ \| | (_|  __/\__ \ |_| | (_| |  __/
# /_/    \_\_|\___\___||___/\__|_|\__,_|\___|
                                            
echo "Alcestide's post-installation script running..."
echo "============================================"
validity=no
while [ "$validity" = no ]; do
read -p "Are you sure you want to continue (y/n)? " choice
case "$choice" in 
    y|Y ) validity=yes && printf "\n -- Continuing... -- \n\n" ;;
    n|N ) printf "-- Quitting script. -- \n" && exit 0;;
    * ) printf "\n -- Input is invalid. -- \n\n";;
esac
done
printf "Installing required deps...\n\n"
sudo pacman -S --needed --noconfirm base-devel git curl --noconfirm
printf "\nInstalling Yay...\n\n" && cd $HOME
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd $HOME && git clone https://github.com/alcestide/Dotfiles && cd $HOME/Dotfiles/ &&
printf "\nInstalling packages listed in file...\n\n"
yay -S --needed --noconfirm - < packages
[ ! -d "$HOME/Documents/" ] && mkdir -p $HOME/Documents/ 
printf "\nCopying configuration files...\n\n"
cp -r Wallpapers Scripts $HOME/Documents/
# sudo cp -r etc/* /etc/
cp -r .config $HOME/
cp -r .icons .themes .oh-my-zsh .Xdefaults .Xresources .zshrc $HOME/
if [[ $SHELL != "/usr/bin/zsh" ]]; then
    chsh -s /usr/bin/zsh
    printf "\nShell changed to zsh.\n\n" 
else
    printf "\nYour shell is already zsh.\n\n" 
fi
zsh
