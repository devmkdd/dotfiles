-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.default_cursor_style = 'SteadyUnderline'

config.color_scheme = 'Catppuccin Frappe'

config.font = wezterm.font("Hack Nerd Font", {weight="Regular", stretch="Normal", style="Normal"})
config.font_size = 14.0

-- ensure alt as composition on mac
config.use_ime = true
config.use_dead_keys = true
config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = true


config.hide_tab_bar_if_only_one_tab = true

-- set decoration to allow resizing but hiding the window bar
config.window_decorations = "RESIZE"

return config
