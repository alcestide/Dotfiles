import os
import re
import socket
import subprocess
from libqtile import qtile, hook
from libqtile.config import Click, Drag, Group, KeyChord, Key, Match, Screen
from libqtile.command import lazy
from libqtile import layout, bar, widget, hook
from libqtile.utils import guess_terminal
from typing import List
from modules.screens import screens
from modules.keybindings import keys, mod
from modules.layouts import layouts, layout_theme, bsp_layout_theme, floating_layout
from modules.mouse import mouse
from modules.groups import groups

# Autostart Script
@hook.subscribe.startup_once
def start_once():
    home = os.path.expanduser('~')
    subprocess.call([home + '/.config/qtile/autostart.sh'])

terminal = 'alacritty'
wmname = "LG3D"

@hook.subscribe.client_new
def disable_floating(window):
    rules = [
        Match(wm_class="mpv")
    ]

    if any(window.match(rule) for rule in rules):
        window.togroup(qtile.current_group.name)
        window.cmd_disable_floating()

# Extra
def float_to_front(qtile):
    """
    Bring all floating windows of the group to front
    """
    for window in qtile.currentGroup.windows:
        if window.floating:
            window.cmd_bring_to_front()

#cursor_warp=True
