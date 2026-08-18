return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-mini/mini.icons" },
  opts = function()
    local utils = require("core.utils")
    local icons = LazyVim.config.icons

    local filetype_map = {
      lazy = { name = "lazy.nvim", icon = "💤" },
      minifiles = { name = "minifiles", icon = "🗂️ " },
      snacks_terminal = { name = "terminal", icon = "🐚" },
      mason = { name = "mason", icon = "🔨" },
      snacks_picker_input = { name = "picker", icon = "🔍" },
    }

    return {
      options = {
        component_separators = { left = " ", right = " " },
        section_separators = { left = " ", right = " " },
        theme = "auto",
        globalstatus = true,
        disabled_filetypes = { statusline = { "dashboard", "alpha" } },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { { "branch", icon = " " } },
        lualine_c = {
          {
            "diagnostics",
            symbols = {
              error = icons.diagnostics.Error,
              warn = icons.diagnostics.Warn,
              info = icons.diagnostics.Info,
              hint = icons.diagnostics.Hint,
            },
          },
          { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
          { LazyVim.lualine.pretty_path() },
          {
            function()
              local tab_count = vim.fn.tabpagenr("$")
              if tab_count > 1 then
                return vim.fn.tabpagenr() .. " of " .. tab_count
              end
            end,
            cond = function()
              return vim.fn.tabpagenr("$") > 1
            end,
            icon = "󰓩",
            color = utils.get_hlgroup("Special", nil),
          },
          {
            function()
              return require("nvim-navic").get_location()
            end,
            cond = function()
              return package.loaded["nvim-navic"] and require("nvim-navic").is_available()
            end,
            color = utils.get_hlgroup("Comment", nil),
          },
        },

        lualine_x = {
          {
            ---@diagnostic disable: undefined-field
            require("noice").api.status.mode.get,
            cond = function()
              local ignore = {
                "-- INSERT --",
                "-- TERMINAL --",
                "-- VISUAL --",
                "-- VISUAL LINE --",
                "-- VISUAL BLOCK --",
              }
              local mode = require("noice").api.status.mode.get()
              return require("noice").api.status.mode.has() and not vim.tbl_contains(ignore, mode)
            end,
            color = utils.get_hlgroup("Comment"),
            ---@diagnostic enable: undefined-field
          },
          {
            require("lazy.status").updates,
            cond = require("lazy.status").has_updates,
            color = utils.get_hlgroup("String"),
          },
          {
            "diff",
            symbols = {
              added = icons.git.added,
              modified = icons.git.modified,
              removed = icons.git.removed,
            },
            source = function()
              local gitsigns = vim.b.gitsigns_status_dict
              if gitsigns then
                return {
                  added = gitsigns.added,
                  modified = gitsigns.changed,
                  removed = gitsigns.removed,
                }
              end
            end,
          },
        },
        lualine_y = {
          {
            "progress",
          },
          {
            "location",
            color = utils.get_hlgroup("Boolean"),
          },
        },
        lualine_z = {
          {
            "datetime",
            style = "  %X",
          },
        },
      },
    }
  end,
}
