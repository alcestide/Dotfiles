import json
import os
from libqtile.config import Screen
from libqtile import layout, bar, widget, hook


### Colors

fn = 'JetBrainsMono Nerd Font MononJetBrainsMono NFM',

colors = os.path.expanduser('~/.cache/wal/colors.json')
colordict = json.load(open(colors))
ColorZ=(colordict['colors']['color0'])
ColorA=(colordict['colors']['color1'])
ColorB=(colordict['colors']['color2'])
ColorC=(colordict['colors']['color3'])
ColorD=(colordict['colors']['color4'])
ColorE=(colordict['colors']['color5'])
ColorF=(colordict['colors']['color6'])
ColorG=(colordict['colors']['color7'])
ColorH=(colordict['colors']['color8'])
ColorI=(colordict['colors']['color9'])


layout_theme = {
    "border_width": 3,
    "margin": 9,
    "border_focus": ColorC,
    "border_normal": ColorZ,
    "font": "JetBrainsMono Nerd Font",
    "grow_amount": 2,
}

layouts = [
    layout.Max(**layout_theme),
    layout.Stack(num_stacks=2, **layout_theme),
    layout.Floating(**layout_theme, fullscreen_border_width=3, max_border_width=3),
    #layout.Columns(border_focus_stack='#d75f5f'),
]

widget_defaults = dict(
    font='novamono for powerline bold',
    fontsize=10,
    padding=5,
    background=ColorA
)
extension_defaults = widget_defaults.copy()


### Mouse_callback functions
def open_pavu():
    qtile.cmd_spawn("pavucontrol")

def open_instantsettings():
    qtile.cmd_spawn("instantstartmenu")

screens = [
    Screen(
        top=bar.Bar(
            [
                 widget.Sep(
                    linewidth=2,
                    foreground=ColorC,
                    background=ColorC,
                    padding=4,
                    size_percent=50,
                 ),
                 widget.TextBox(
                    text="",
                    foreground =ColorZ,
                    background=ColorC,
                    font = "feather",
                    fontsize = 24,
                    padding =10,
                    mouse_callbacks = {"Button1": open_instantsettings},
                 ),
                 widget.GroupBox(
                     font='space mono for powerline bold',
                     fontsize=12,
                     margin_y=4,
                     margin_x=4,
                     padding_y=5,
                     padding_x=3,
                     borderwidth=7,
                     inactive=ColorI,
                     active=ColorG,
                     rounded=True,
                     highlight_color=ColorA,
                     highlight_method="block",
                     this_current_screen_border=ColorC,
                     other_screen_border="#99cfe0",
                     block_highlight_text_color=ColorZ,
                 ),
                widget.WindowName(),
                widget.Systray(),
                widget.Spacer(length=10),
                widget.CPU(format='{freq_current}GHz {load_percent}%'
                ),
                     widget.Spacer(length=20),

                 widget.TextBox(
                    text='',
                    font='feather',
                    fontsize=15,
                ),
                widget.Memory(
                    measure_mem='G'
                ),
                     widget.Spacer(length=20),

                widget.TextBox(
                    text='',
                    font='feather',
                    fontsize=15,
                ),
                widget.Clock(),
                widget.Spacer(length=20)
                           ],
            42,
            margin=[23, 20, 0, 20],
            opacity=0.8,
        ),
        bottom=bar.Gap(5),
        left=bar.Gap(5),
        right=bar.Gap(5),
    ),
    Screen(
        top=bar.Bar(
            [
                 widget.Sep(
                    linewidth=2,
                    foreground=ColorC,
                    background=ColorC,
                    padding=8,
                    size_percent=50,
                 ),
                 widget.TextBox(
                    text="",
                    foreground =ColorZ,
                    background=ColorC,
                    font = "feather",
                    fontsize = 18,
                    padding=9,
                    mouse_callbacks = {"Button1": open_instantsettings},
                 ),
                 widget.GroupBox(
                     font='space mono for powerline bold',
                     fontsize=11,
                     margin_y=4,
                     margin_x=4,
                     padding_y=5,
                     padding_x=3,
                     borderwidth=7,
                     inactive=ColorG,
                     active=ColorA,
                     rounded=True,
                     highlight_color=ColorG,
                     highlight_method="block",
                     this_current_screen_border=ColorA,
                     other_screen_border=ColorA,
                     other_current_screen_border=ColorA,
                     block_highlight_text_color=ColorZ,
                 ),
                widget.Spacer(),
                widget.Clock(),
                widget.TextBox(
                    text=" ",
                    foreground=ColorZ,
                    background=ColorZ,
                    fontsize=20,
                    padding=10,
                ),
                           ],
            40,
            margin=[25, 20, 0, 20],
            opacity=1,
        ),
        bottom=bar.Gap(18),
        left=bar.Gap(18),
        right=bar.Gap(18),
    ),
]
