# alk-Dotfiles
Ever-changing _ricing_ and `*UNIX` OS configuration. Work in progress.

I mostly use Arch-Linux with _tiling-wms_, especially [i3-wm](https://github.com/i3/i3) and currently [qtile](https://github.com/qtile/qtile) (even though I tend to wm-hop quite often 'cause I'm curious of the other alternatives). For what concerns _text editors_, I'm mostly a [Neovim](https://github.com/neovim/neovim) and [Doom Emacs](https://github.com/doomemacs/doomemacs) user, who sometimes also tinkers with JetBrains IDEs. 

Make sure to have all the proper **fonts** installed in your system (qtile require **ttf-icomoon-feather** and JetBrains Mono Nerd). 

The Qtile setup is based on a **two monitors** setup, but should also work just fine on single-monitor setups. If the config **doesn't properly load**, check `python -m ~/.config/qtile/config.py`, install the listed missing **modules** or simply fix the configuration file so it meets your needs.

**Colorschemes** are managed by `pywal` which generates them based on the wallpaper used. 

I use a simple **bash script** ([random_wal.sh](https://github.com/alcestide/Dotfiles/blob/main/random_wal.sh)) that takes a **specified folder** (you need to change it), cycles through it, selects a random image and applies both the wallpaper and the corresponding colorscheme. 

I execute it at Qtile start-up by specifying it inside `.config/qtile/autostart.sh`, where I also specify what others applications I need to start up everytime the window manager boots.

![2023-05-23_18-36](https://github.com/alcestide/Dotfiles/assets/106203061/410fe864-2921-49de-94d7-3cb85bec2cc4)

### **Table of Contents**
* [Configuration](https://github.com/alcestide/Dotfiles#configuration)
  * [Included Files](https://github.com/alcestide/Dotfiles#included-files) 
  * [Screenshots](https://github.com/alcestide/Dotfiles#screenshots)
* [Qtile Keymaps](https://github.com/alcestide/Dotfiles#qtile-keymaps)
* [Nvim Keymaps](https://github.com/alcestide/Dotfiles#nvim-keymaps)

## Configuration

- **Window Manager:** [Qtile](https://github.com/qtile/qtile) 

- **Shell:** [zsh](https://www.zsh.org/) + [oh-my-zsh](https://ohmyz.sh/)

- **Terminal:** [Alacritty](https://github.com/alacritty/alacritty)

- **GTK Theme:** [Material-Black-Blueberry](https://www.gnome-look.org/p/1316887)

- **Icon Theme** [Flat-Remix-Blue-Dark](https://www.gnome-look.org/p/1214931)

- **Mouse Cursor** [Bibata-Modern-Ice](https://www.gnome-look.org/p/1197198)

- **Notification Server** [Notification-Daemon (GNOME)](https://archlinux.org/packages/extra/x86_64/notification-daemon/)

- **Lockscreen:** [Betterlockscreen](https://github.com/betterlockscreen/betterlockscreen)
- 
![2023-07-11_13-27](https://github.com/alcestide/Dotfiles/assets/106203061/ec799937-e554-41e5-89ab-9f02f101e657)
![2023-07-11_13-17](https://github.com/alcestide/Dotfiles/assets/106203061/838b2042-585a-4fa1-adb7-73a5b542f072)
![2023-05-23_19-11](https://github.com/alcestide/Dotfiles/assets/106203061/40d19df5-920f-49e3-8857-408d7780c930)

### Included Files

- `.zshrc`
- `i3wm`
- `qtile`
- `picom`
- `kitty`
- `alacritty`
- `doomemacs`
- `flameshot`
- `nvim`
- `rofi`
- Docker-Compose Boilerplates
- X11 Miscellaneous Configurations
- Bash scripts to manage monitors, keyboard layouts and wallpapers

Included several of the **wallpapers** I use on most of my machines.
### Screenshots

![2023-07-11_13-20](https://github.com/alcestide/Dotfiles/assets/106203061/28eca8a3-4f90-4823-9c57-5ec4daf7f703)
![2023-06-13_12-34](https://github.com/alcestide/Dotfiles/assets/106203061/2dd03ca6-4224-4171-a29a-813dc6fa000b)
![2023-05-25_00-50](https://github.com/alcestide/Dotfiles/assets/106203061/3b0cbbe4-dca3-49a0-8b67-772c43e80493)

## Qtile Keymaps

- `Win + Enter` $\implies$ Open the terminal (Default: alacritty)
- `Win + X` $\implies$ Close focused window
- `Win + F` $\implies$ Toggle Fullscreen
- `Win + Shift + F` $\implies$ Toggle Floating
- `Win + Up/Down` $\implies$ Switch between windows
- `Win + Shift + [1,2,3,...,9]` $\implies$ Move window to specified workspace
- `Win + Tab` $\implies$ Next layout
- `Win + Shift + Tab` $\implies$ Previous layout
- `F1` $\implies$ Switch focus to first monitor
- `F2` $\implies$ Switch focus to second monitor
- `Print` $\implies$ Flameshot Screenshot

## Nvim Keymaps

- `Ctrl + n` $\implies$ Toggle NvimTree
- `Ctrl + F5` $\implies$ Toggle Undotree
- `Space + ff` $\implies$ Open Telescope (Find Files)
- `Ctrl + [n,p]` $\implies$ Next/Previous LSP Completion Result
- `Ctrl + y` $\implies$ Accepts current LSP Completion
- `Tab` $\implies$ **Codeium:** Accepts current completion
