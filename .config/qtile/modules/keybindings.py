from libqtile.config import Key
from libqtile.lazy import lazy

mod = "mod4"

Terminal = "alacritty"
Browser = "firefox"
Ranger = "zsh -c '/home/alcestide/Documents/Scripts/wrap_pywal.sh'"

keys = [
         ### Main
         Key([mod], "Return",
             lazy.spawn(Terminal),
             desc='Alacritty'
             ),
         Key([mod], "d",
             lazy.spawn("rofi -show drun -font 'fira 12'"),
             desc='Rofi'
             ),
         Key([mod, "shift"], "w",
             lazy.spawn(Browser),
             desc='Chrome'
             ),
         Key([mod], "Tab",
             lazy.next_layout(),
             desc='Toggle through layouts'
             ),
         Key([mod, "shift"], "Tab",
             lazy.prev_layout()
             ),
         Key([mod], "x",
             lazy.window.kill(),
             desc='Kill active window'
             ),
         Key([mod, "shift"], "q",
             lazy.restart(),
             desc='Restart Qtile'
             ),
         Key([mod, "shift"], "n",
             lazy.spawn("alacritty -e nvim"),
             desc='Neovim'
             ),
         Key([mod, "shift"], "o",
             lazy.spawn("obsidian"),
             desc='Obsidian'
             ),
         Key([mod, "shift"], "e",
             lazy.spawn("emacsclient -a '' -c"),
             desc='Emacs'
             ),
         Key([mod, "shift"], "k",
             lazy.spawn("gitkraken"),
             desc='GitKraken'
             ),
        Key([mod, "shift"], "s",
             lazy.spawn("env LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify %U"),
             desc='Spotfy'
             ),
        Key([mod, "shift"], "c",
             lazy.spawn('thunar'),
             desc='File Manager'
             ),
        Key([], "Print",
             lazy.spawn("flameshot gui"),
             desc='Flameshot'
             ),
        Key([mod], "v",
             lazy.spawn("pavucontrol"),
             desc='Pavucontrol'
             ),
        Key([mod], "b",
             lazy.spawn("blueman-manager"),
             desc='Bluetooth Manager'
             ),
        Key([mod, "Shift"], "F3",
             lazy.spawn("setxkbmap us"),
             lazy.spawn('notify-send -t 900 "Keyboard Layout" "Changed to US."'),
             desc='US Keyboard Layout'
             ),
        Key([mod, "Shift"], "F4",
             lazy.spawn("setxkbmap it"),
             lazy.spawn('notify-send -t 900 "Keyboard Layout" "Changed to IT."'),
             desc='IT Keyboard Layout'
             ),
        Key([mod, "Shift"], "space",
             lazy.spawn("/home/alcestide/Documents/Scripts/toggle_keyboard_layout.sh"),
             desc='RU Keyboard Layout'
             ),
          Key([mod, "shift"], "up",
             lazy.layout.move_up(),
             desc='Move up a section in treetab'
             ),
         Key([mod, "shift"], "down",
             lazy.layout.move_down(),
             desc='Move down a section in treetab'
             ),
         Key([mod, "shift"], "t",
             lazy.spawn("telegram-desktop"),
             desc='Telegram'
             ),
         ### Windows
         Key([mod], "left",
             lazy.layout.left()
             ),
         Key([mod], "down",
             lazy.layout.down(),
             desc='Move focus down in current stack pane'
             ),
         Key([mod], "up",
             lazy.layout.up(),
             desc='Move focus up in current stack pane'
             ),
         Key([mod], "right",
             lazy.layout.right()
             ),
         Key([mod, "shift"], "left",
             #lazy.layout.shuffle_left(),
             #lazy.layout.section.left(),
             ),
         Key([mod, "shift"], "down",
             lazy.layout.shuffle_down(),
             lazy.layout.section_down(),
             desc='Move windows down in current stack'
             ),
         Key([mod, "shift"], "up",
             lazy.layout.shuffle_up(),
             lazy.layout.section_up(),
             desc='Move windows up in current stack'
             ),
         Key([mod, "shift"], "right",
             lazy.layout.shuffle_right(),
             lazy.layout.section_right(),
            ),
         Key([mod, "control"], "left",
             lazy.layout.shrink(),
             lazy.layout.decrease_nmaster(),
             desc='Shrink window (MonadTall), decrease number in master pane (Tile)'
             ),
         Key([mod, "control"], "right",
             lazy.layout.grow(),
             lazy.layout.increase_nmaster(),
             desc='Expand window (MonadTall), increase number in master pane (Tile)'
             ),
         Key([mod], "n",
             lazy.layout.normalize(),
             desc='normalize window size ratios'
             ),
         Key([mod], "m",
             lazy.layout.maximize(),
             desc='toggle window between minimum and maximum sizes'
             ),
         Key([mod, "shift"], "f",
             lazy.window.toggle_floating(),
             desc='toggle floating'
             ),
         Key([mod], "f",
             lazy.window.toggle_fullscreen(),
             desc='toggle fullscreen'
             ),
         Key([mod, "shift"], "l",
             lazy.spawn('betterlockscreen -l dimblur --display 1 --span')
             ),
        # Sound
         Key([mod], "F7", lazy.spawn("mpc toggle")),
         Key([mod], "F9", lazy.spawn("sh /home/alcestide/Documents/Scripts/volume/volnotification.sh mute")),
         Key([mod], "F10", lazy.spawn("sh /home/alcestide/Documents/Scripts/volume/volnotification.sh down")),
         Key([mod], "F11", lazy.spawn("sh /home/alcestide/Documents/Scripts/volume/volnotification.sh up")),
         Key([mod], "F6",  lazy.spawn("mpc next")),
         Key([mod], "F5",  lazy.spawn("mpc prev")),

         Key([mod], "F1", lazy.spawn("bash /home/alcestide/Documents/Scripts/volume/default-sink/starship.sh")),
         Key([mod], "F2", lazy.spawn("bash /home/alcestide/Documents/Scripts/volume/default-sink/usb-audio-interface.sh")),
         Key([mod], "F3", lazy.spawn("bash /home/alcestide/Documents/Scripts/volume/default-sink/linkbuds.sh")),
         Key([], "F1", lazy.spawn("")),
         Key([], "F2", lazy.to_screen(1)),
        ]

cursor_warp=True
