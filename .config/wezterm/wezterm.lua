local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.color_scheme = "Catppuccin Mocha"
config.window_decorations = "NONE"
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 1.0

-- config.window_background_opacity = 0.90
-- config.font = wezterm.font("Monaspace Neon", { weight = "Light" })

-- Use a different font for italic text
-- Makes comments in code look hand written
-- config.font_rules = { { italic = true, font = wezterm.font("Monaspace Radon") } }
-- config.font_size = 14.0

-- Spawn a fish shell in login mode
config.default_prog = { "/home/linuxbrew/.linuxbrew/bin/fish", "-l" }

return config
