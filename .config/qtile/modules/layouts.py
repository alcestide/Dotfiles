from libqtile import layout

layout_theme = {"border_width": 0,
                "margin": 40,
                "border_focus": None,
                "border_normal": None
                }

bsp_layout_theme = {"border_width": 0,
                    "margin": 10,
                    "border_focus": "",
                    "border_normal": ""
                    }

layout_border = dict(
    border_focus = "#000000",
    border_normal = "#000000",
)

floating_layout = layout.Floating(
border_width=0,
border_focus="#000000",
border_normal="#000000",
)


layouts = [
        layout.MonadTall(**layout_theme),
        layout.MonadWide(**layout_theme),
        layout.Bsp(**bsp_layout_theme),
        #layout.Stack(stacks=2, **layout_theme),
        layout.Columns(**layout_theme),
        #layout.RatioTile(**layout_theme),
        #layout.Tile(shift_windows=True, **layout_theme),
        #layout.VerticalTile(**layout_theme),
        layout.Zoomy(),
        layout.Matrix(**bsp_layout_theme),
        #layout.Max(**layout_theme),
        #layout.Stack(**layout_theme),
        layout.RatioTile(**layout_theme),
        layout.TreeTab(**layout_theme),
        layout.Floating(**layout_border,
        border_width = 1,),
]
