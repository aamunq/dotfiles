return {
  {
    "mistweaverco/kulala.nvim",
    ft = "http",
    keys = {
      { "<leader>R", "", desc = "+Rest" },
      { "<leader>Rs", "<cmd>lua require('kulala').run()<cr>", desc = "Send the request" },
      { "<leader>Rt", "<cmd>lua require('kulala').toggle_view()<cr>", desc = "Toggle headers/body" },
      { "<leader>Rp", "<cmd>lua require('kulala').jump_prev()<cr>", desc = "Jump to previous request" },
      { "<leader>Rn", "<cmd>lua require('kulala').jump_next()<cr>", desc = "Jump to next request" },
    },
    opts = {},
  },
  -- {
  --   "ngtuonghy/live-server-nvim",
  --   event = "VeryLazy",
  --   build = ":LiveServerInstall",
  --   config = function()
  --     require("live-server-nvim").setup({
  --       custom = {
  --         "--port=8080",
  --         "--no-css-inject",
  --       },
  --       serverPath = vim.fn.stdpath("data") .. "/live-server/", -- default
  --       open = "folder", -- folder|cwd (default: folder)
  --     })
  --   end,
  -- },
  {
    "barrett-ruth/live-server.nvim",
    build = "npm add -g live-server",
    cmd = { "LiveServerStart", "LiveServerStop" },
    config = true,
  },

  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "onsails/lspkind-nvim", -- For icons in completion
      "brenoprata10/nvim-highlight-colors", -- For highlighting colors
    },
    opts = function(_, opts)
      local cmp = require("cmp")
      local highlight_colors = require("nvim-highlight-colors")
      local lspkind = require("lspkind")

      -- Merge with other existing `cmp` configurations if necessary
      opts.formatting = {
        format = function(entry, item)
          -- Apply color formatting using `nvim-highlight-colors`
          local color_item = highlight_colors.format(entry, { kind = item.kind })

          -- Apply icon formatting using `lspkind`
          item = lspkind.cmp_format({
            -- Add any lspkind-specific settings here
          })(entry, item)

          -- Use color highlight group if available
          if color_item.abbr_hl_group then
            item.kind_hl_group = color_item.abbr_hl_group
            item.kind = color_item.abbr
          end

          return item
        end,
      }

      return opts
    end,
  },
}
