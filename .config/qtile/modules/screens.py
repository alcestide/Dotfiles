import json
import os
from libqtile.config import Screen
from libqtile import layout, bar, widget, hook
from libqtile import qtile

### Colors

fn = 'JetBrainsMono Nerd Font MononJetBrainsMono NFM',

colors = os.path.expanduser('/home/alcestide/.cache/wal/colors.json')
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
    "border_width": 0,
    "margin": 0,
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
    font='icomoon-feather',
    fontsize=10,
    padding=5,
    background=ColorA
)
extension_defaults = widget_defaults.copy()


### Mouse_callback functions
def open_pavu():
    qtile.cmd_spawn("pavucontrol")

def open_settings():
    qtile.cmd_spawn("rofi -show p -modi p:rofi-power-menu")

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
                    font = "icomoon-feather",
                    fontsize = 24,
                    padding =10,
                    mouse_callbacks = {"Button1" : open_settings},
                 ),
                 widget.GroupBox(
                     font='Cantarell Bold',
                     fontsize=11,
                     margin_y=4,
                     margin_x=4,
                     padding_y=9,
                     padding_x=4,
                     borderwidth=6,
                     inactive=ColorI,
                     active=ColorG,
                     rounded=True,
                     highlight_color=ColorA,
                     highlight_method="block",
                     this_current_screen_border=ColorC,
                     other_screen_border="#99cfe0",
                     block_highlight_text_color=ColorZ,
                 ),
                 widget.WindowName(font = 'Fira Code', fontsize = 12, center_aligned=True),
                 widget.Spacer(length=bar.STRETCH),
                 widget.Mpd2(status_format='{play_status} {artist} - {title}', font = 'Fira Code'),
                 widget.Spacer(length=bar.STRETCH),
                widget.Systray(font='icomoon-feather',
                               background='#000000',
                               foreground='#000000'),

                widget.CurrentLayoutIcon(scale=0.45, padding= 10),
                widget.Spacer(length=15),

widget.TextBox(                    text='',
                    font='icomoon-feather',
                    fontsize=14,
                ),
                widget.CPU(format='{freq_current}GHz {load_percent}%'
                ),
                widget.Spacer(length=15),

                 widget.TextBox(
                    text='',
                    font='icomoon-feather',
                    fontsize=14,
                ),
                widget.Memory(
                    measure_mem='G'
                ),
                     widget.Spacer(length=20),
                
                widget.TextBox(
                    text='',
                    font='icomoon-feather',
                    fontsize=15,
                ),
                widget.Clock(),
                widget.Spacer(length=20)
                           ],
            42,
            margin=[0, 0, 0, 0],
            opacity=0.90,
        ),
        bottom=bar.Gap(0),
        left=bar.Gap(0),
        right=bar.Gap(0),
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
                    font = "icomoon-feather",
                    fontsize = 18,
                    padding=9,
                 ),
                 widget.GroupBox(
                     font='icomoon-feather',
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
            margin=[0, 0, 0, 0],
            opacity=0.8,
        ),
        bottom=bar.Gap(18),
        left=bar.Gap(18),
        right=bar.Gap(18),
    ),
]
