local wezterm = require "wezterm"
-- local config = wezterm.config_builder()


local config = {
    color_scheme = "Catppuccin Mocha",
    font_size = 16,
    font = wezterm.font('JetbrainsMono Nerd Font', {weight = "Regular"}),

    use_fancy_tab_bar = false,
    hide_tab_bar_if_only_one_tab = false,
    show_tabs_in_tab_bar = true,
    show_new_tab_button_in_tab_bar = false,
    window_decorations = "INTEGRATED_BUTTONS|RESIZE",

    window_background_opacity = 0.95,
    macos_window_background_blur = 70,
    text_background_opacity = 0.95,
    window_padding = {
        left = 20,
        right = 20,
        top = 0,
        bottom = 5,
    },
}

return config