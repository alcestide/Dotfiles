local wezterm = require 'wezterm'
local config = wezterm.config_builder()

local mochaOverride = wezterm.color.get_builtin_schemes()['Catppuccin Mocha'];
mochaOverride.background = 'black'

config.color_schemes = {
    ['DarkMocha'] = mochaOverride,
}

config.color_scheme = 'DarkMocha'
config.enable_tab_bar = false

return config
