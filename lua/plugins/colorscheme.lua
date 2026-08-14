return {
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
