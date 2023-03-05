local wezterm = require 'wezterm'
local my_scheme = wezterm.color.get_builtin_schemes()['Molokai']

local default_prog = { 'bash', '-l' }

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
    default_prog = { 'powershell', '-NoLogo' }
end

if wezterm.target_triple == "x86_64-apple-darwin" then 
    default_prog = { 'bash', '-l' }
end

return {
    font = wezterm.font_with_fallback {
        'FiraCode NF',
    },
    color_schemes = {
        ['MyScheme'] = my_scheme,
    },
    color_scheme = 'MyScheme',
    window_background_opacity = 0.8,
    use_ime = false,
    hide_tab_bar_if_only_one_tab = true,
    adjust_window_size_when_changing_font_size = false,
    launch_menu = launch_menu,
    default_prog = default_prog
}