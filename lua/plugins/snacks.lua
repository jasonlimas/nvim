return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      enabled = true,
      preset = {
        header = [[

    ▒▓▓▓▓▓▓▓▓▓▓▓▓▓▒    ▒▓▓▓▓▒        ▒▓▓▓▓▒  
    ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒    ▒▓▓▓▓▓       ▒▓▓▓▓▒   
   ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒      ▓▓▓▓▓▓▒▒▒▒▒▓▓▓▓▓▒    
                         ▓▓▓▓▓▓▓▓▓▓▓▓▓▒      
                           ▒▒▒▒▒▒▒▒          
    ▒▒▒▒▒▒                                   
   ▓▓▓▓▓▓▓                                   
   ▓▓▓▓▓▓▓▒               ▒▒▒▒▒▒▒            
   ▒▓▓▓▓▓▓▓▒            ▒▓▓▓▓▓▓▓▒            
    ▒▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▒              
     ▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒                
       ▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒                   
                           ]],
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          {
            icon = " ",
            key = "c",
            desc = "Config",
            action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
          },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
      formats = {
        header = {
          align = "center",
        },
      },
      sections = {
        {
          section = "header",
          padding = 4,
        },
        {
          pane = 2,
          {
            { section = "keys", gap = 1, padding = 2 },
            { icon = "✦", title = "Recent Files", section = "recent_files", indent = 2, padding = 2 },
            { section = "startup" },
          },
        },
      },
    },
  },
  init = function()
    vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#ff8389" })
  end,
}
