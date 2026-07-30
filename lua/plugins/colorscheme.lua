return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- load before other plugins
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
