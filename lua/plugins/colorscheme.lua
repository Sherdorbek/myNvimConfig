return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
        --color_overrides = {
        --  mocha = {
        --    base = "#111116",
        --  },
        --},
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
