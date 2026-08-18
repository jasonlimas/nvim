return {
  {
    "EdenEast/nightfox.nvim",
    config = function()
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
      vim.cmd.colorscheme("koda-moss")
      vim.api.nvim_set_hl(0, "SnacksIndentScope", {
        fg = "#6b7280",
      })
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
