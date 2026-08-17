return {
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    priority = 1000,
    opts = {
      preset = "minimal",
      options = {
        add_messages = {
          display_count = true,
        },
        multilines = {
          enabled = true,
        },
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false,
      },
    },
  },
}
