local wezterm = require 'wezterm'
local config = wezterm.config_builder()
config.wsl_domains = {
  {
    name = 'WSL:Ubuntu',
    distribution = 'Ubuntu',
  },
}
config.default_domain = 'WSL:Ubuntu'

local mochaOverride = wezterm.color.get_builtin_schemes()['Catppuccin Mocha'];

config.color_schemes = {
    ['DarkMocha'] = mochaOverride,
}

mochaOverride.background = 'black'


config.color_scheme = 'Catppuccin Mocha'

config.colors = {
    --background = '#161616'
    --background = '#191724'
    background = '#0a0910'
}

config.enable_tab_bar = false
config.max_fps = 120

return config
