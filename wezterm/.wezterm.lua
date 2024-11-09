local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.adjust_window_size_when_changing_font_size = false
config.automatically_reload_config = true
config.bypass_mouse_reporting_modifiers = "SHIFT"
config.color_scheme = 'Molokai'
--config.disable_default_mouse_bindings = true
config.enable_scroll_bar = true
config.enable_tab_bar = false
config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 13.0
config.scrollback_lines = 5000
config.window_decorations = "RESIZE"

return config
