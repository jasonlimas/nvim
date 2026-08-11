# jasonlimas' Neovim Config

[![Neovim](https://img.shields.io/badge/Neovim-0.10%2B-57A143?logo=neovim)](https://neovim.io)

Personal Neovim configuration based on [LazyVim](https://github.com/LazyVim/LazyVim).

## Highlights

- **Colorscheme** — [carbonfox](https://github.com/EdenEast/nightfox.nvim) (nightfox.nvim)
- **Completion** — [blink.cmp](https://github.com/Saghen/blink.cmp) with super-tab preset
- **Dashboard** — Custom [Snacks](https://github.com/folke/snacks.nvim) dashboard
- **Formatting** — [conform.nvim](https://github.com/stevearc/conform.nvim) + Prettier (4-space tabs)
- **Language extras** — Markdown, PHP

## Keymaps

| Key | Action |
|-----|--------|
| `jk` | Exit insert mode |
| `<C-u>` | Scroll up + center cursor |
| `<C-d>` | Scroll down + center cursor |

## Structure

```
~/.config/nvim/
├── init.lua              # Entry point
├── lua/config/
│   ├── lazy.lua          # Plugin manager bootstrap
│   ├── options.lua       # Editor options
│   ├── keymaps.lua       # Custom keymaps
│   └── autocmds.lua      # Autocommands
└── lua/plugins/
    ├── blink.lua         # Completion
    ├── colorscheme.lua   # Theme config
    ├── conform.lua       # Formatter config
    └── snacks.lua        # Dashboard & utilities
```

## Installation

```bash
git clone https://github.com/<your-username>/nvim-config.git ~/.config/nvim
```

Open Neovim, then Lazy will bootstrap itself and install all plugins.
