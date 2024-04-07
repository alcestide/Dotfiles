import json
import os
from libqtile.config import Screen
from libqtile import layout, bar, widget, hook
from libqtile import qtile
from . import colors

fn = 'JetBrainsMono Nerd Font MononJetBrainsMono NFM',

layout_theme = {
    "border_width": 0,
    "margin": 0,
    "border_focus": colors.ColorC,
    "border_normal": colors.ColorZ,
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
    background=colors.ColorA
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
                    foreground=colors.ColorC,
                    background=colors.ColorC,
                    padding=4,
                    size_percent=50,
                 ),
                 widget.TextBox(
                    text="",
                    foreground =colors.ColorZ,
                    background=colors.ColorC,
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
                     inactive=colors.ColorI,
                     active=colors.ColorG,
                     rounded=True,
                     highlight_color=colors.ColorA,
                     highlight_method="block",
                     this_current_screen_border=colors.ColorC,
                     other_screen_border="#99cfe0",
                     block_highlight_text_color=colors.ColorZ,
                 ),
                 widget.WindowName(font = 'Fira Code', fontsize = 12, center_aligned=True),
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
                , font="Fira Code"),
                widget.Spacer(length=15),

                 widget.TextBox(
                    text='',
                    font='icomoon-feather',
                    fontsize=14,
                ),
                widget.Memory(font="Fira Code",
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
            48,
            margin=[20, 230, 20, 230],
            opacity=0.85,
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
                    foreground=colors.ColorC,
                    background=colors.ColorC,
                    padding=4,
                    size_percent=50,
                 ),
                 widget.TextBox(
                    text="",
                    foreground =colors.ColorZ,
                    background=colors.ColorC,
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
                     inactive=colors.ColorI,
                     active=colors.ColorG,
                     rounded=True,
                     highlight_color=colors.ColorA,
                     highlight_method="block",
                     this_current_screen_border=colors.ColorC,
                     other_screen_border="#99cfe0",
                     block_highlight_text_color=colors.ColorZ,
                 ),
                 widget.WindowName(font = 'Fira Code', fontsize = 12, center_aligned=True),
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
                , font="Fira Code"),
                widget.Spacer(length=15),

                 widget.TextBox(
                    text='',
                    font='icomoon-feather',
                    fontsize=14,
                ),
                widget.Memory(font="Fira Code",
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
            48,
            margin=[20, 230, 20, 230],
            opacity=0.85,
        ),
        bottom=bar.Gap(0),
        left=bar.Gap(0),
        right=bar.Gap(0),
    ),
]
