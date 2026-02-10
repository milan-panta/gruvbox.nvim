# Gruvbox for Neovim

A version of the gruvbox-hard colorscheme for Neovim.
The closest implementation of the gruvbox-hard palette I like
loads 4x slower than this and breaks lazy loading with integrated
plugins, so I wrote my own version.

## Getting started

### [lazy.nvim](https://lazy.folke.io)

```lua
{
    "milan-panta/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd("colorscheme gruvbox")
    end,
}
```

## Options

Configure options _before_ setting colorscheme.

```lua
require("gruvbox").setup({
    dim_inactive_windows = false,
    extend_background_behind_borders = false,

    enable = {
        terminal = true,
    },

    styles = {
        bold = true,
        italic = true,
        transparency = false,
    },

    groups = {
        border = "fg4",
        link = "purple_lite",
        panel = "bg_second",

        error = "red_lite",
        hint = "aqua_lite",
        info = "blue_lite",
        ok = "green_lite",
        warn = "yellow_lite",
        note = "yellow_dark",
        todo = "aqua_dark",

        git_add = "green_dark",
        git_change = "yellow_dark",
        git_delete = "red_dark",
        git_dirty = "orange_dark",
        git_ignore = "gray",
        git_merge = "purple_dark",
        git_rename = "blue_dark",
        git_stage = "purple_dark",
        git_text = "yellow_lite",
        git_untracked = "bg2",

        h1 = "red_dark",
        h2 = "yellow_dark",
        h3 = "green_dark",
        h4 = "aqua_dark",
        h5 = "blue_dark",
        h6 = "purple_dark",
    },

    highlight_groups = {},

    before_highlight = function(group, highlight, palette) end,
})

vim.cmd("colorscheme gruvbox")
```

## Extras

Matching gruvbox configs for other tools live in `extras/`. Copy them into your own dotfiles.

| Tool | File | Usage |
|------|------|-------|
| [tmux](https://github.com/tmux/tmux) | `extras/tmux/gruvbox.conf` | `source-file path/to/gruvbox.conf` in your `tmux.conf` |
| [Starship](https://starship.rs) | `extras/starship/starship.toml` | Append the palette to your `starship.toml` and set `palette = "gruvbox"` |
| [Yazi](https://yazi-rs.github.io) | `extras/yazi/gruvbox.yazi/flavor.toml` | Copy `gruvbox.yazi/` into `~/.config/yazi/flavors/` and set `use = "gruvbox"` in `theme.toml` |
| [Ghostty](https://ghostty.org) | `extras/ghostty/gruvbox` | Add `background = #1b1b1b` to your Ghostty config (pairs with built-in "Gruvbox Dark Hard" theme) |

## Credits

- Architecture based on [rosé pine for neovim](https://github.com/rose-pine/neovim)
- Colors from the [gruvbox](https://gitlab.com/motaz-shokry/gruvbox.nvim) palette
