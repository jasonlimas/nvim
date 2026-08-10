return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- load before other plugins
  },
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
  {
    "EdenEast/nightfox.nvim",
    config = function()
      vim.cmd.colorscheme("carbonfox")
      vim.api.nvim_set_hl(0, "SnacksIndentScope", {
        fg = "#6b7280",
      })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "carbonfox",
    },
  },
}
