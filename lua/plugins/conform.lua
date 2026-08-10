return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        -- Set your preferred formatter tab width here
        prettier = {
          prepend_args = { "--tab-width", "4" },
        },
      },
    },
  },
}
