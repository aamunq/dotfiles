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
    opts = {
      transparent = true,
      style = "moon",
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = { style = "light" },
  },
  {
    "akinsho/horizon.nvim",
  },

  {
    "rose-pine/neovim",
    name = "rose-pine",
  },
  {
    "rebelot/kanagawa.nvim",
  },
  {
    "navarasu/onedark.nvim",
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
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
          "horizon",
          "kanagawa",
          "onedark",
          "rose-pine",
          "cyberdream",
        },
        livepreview = true,
      })
    end,
  },
}
