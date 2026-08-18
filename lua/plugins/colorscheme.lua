return {
  {
    "EdenEast/nightfox.nvim",
    config = function()
      require("nightfox").setup({ options = { transparent = true } })
      -- vim.cmd.colorscheme("carbonfox")
      vim.api.nvim_set_hl(0, "SnacksIndentScope", {
        fg = "#6b7280",
      })
    end,
  },
  {
    "oskarnurm/koda.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("koda").setup({ transparent = true })
      -- vim.cmd.colorscheme("koda-moss")
      vim.api.nvim_set_hl(0, "SnacksIndentScope", {
        fg = "#6b7280",
      })
    end,
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        transparent = true,
        italic_comments = true,
      })
      vim.api.nvim_set_hl(0, "SnacksIndentScope", {
        fg = "#6b7280",
      })

      vim.cmd("colorscheme cyberdream-muted")
    end,
  },
  {
    "wtfox/luna.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme("luna")
    end,
    opts = {},
  },
}
