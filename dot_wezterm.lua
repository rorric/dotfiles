-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
  end

  -- This is where you actually apply your config choices

  -- For example, changing the color scheme:
  config.color_scheme = 'Dracula+'
  config.font = wezterm.font_with_fallback{
  	'JuliaMono',
  	'CaskaydiaCove Nerd Font Mono',
  	'Source Han Mono'
  }
  config.font_size = 11.0
  -- Spawn a Nushell in login mode
  config.default_prog = { 'D:/Software/Scoop/apps/nu/current/nu.exe' }

  -- and finally, return the configuration to wezterm
  return config
