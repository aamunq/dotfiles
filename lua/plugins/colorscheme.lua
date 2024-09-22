return {
  {
    "sainnhe/sonokai",
    priority = 1000,
    config = function()
      vim.g.sonokai_transparent_background = "100"
      vim.cmd.colorscheme("sonokai")
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "moon" },
  },

  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = { style = "light" },
  },

  {
    "zaldih/themery.nvim",
    config = function()
      require("themery").setup({
        themes = {
          "sonokai",
          "tokyonight",
          "catppuccin",
          "gruvbox",
        },
        livepreview = true,
      })
    end,
  },
}
