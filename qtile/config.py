# -*- coding: utf-8 -*-
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

wmname = "LG3D"

# Extra
cursor_warp=True
