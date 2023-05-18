from libqtile.command import lazy
from libqtile.config import Group, Key
from .keybindings import keys, mod

groups = [
        Group(name="1"),
        Group(name="2"),
        Group(name="3"),
        Group(name="4"),
        Group(name="5"),
        Group(name="6"),
        Group(name="7"),
        Group(name="8"),
        Group(name="9"),
        ]

for i in groups:
    keys.extend([
        Key([mod], i.name, lazy.group[i.name].toscreen()),
        Key([mod, "shift"], i.name, lazy.window.togroup(i.name) , lazy.group[i.name].toscreen()),
    ])
