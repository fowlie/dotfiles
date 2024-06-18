local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.color_scheme = "Catppuccin Mocha"
config.window_decorations = "NONE"
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 1.0

-- Spawn a fish shell in login mode
config.default_prog = { "/home/linuxbrew/.linuxbrew/bin/fish", "-l" }

return config
