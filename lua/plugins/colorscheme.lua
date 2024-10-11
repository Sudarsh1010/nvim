return {
  -- {
  --   "RRethy/base16-nvim",
  --   name = "base16",
  --   config = function()
  --     require("base16-colorscheme").setup({
  --       base00 = "#000000",
  -- base01 = "#121212",
  -- base02 = "#222222",
  -- base03 = "#333333",
  -- base04 = "#999999",
  -- base05 = "#c1c1c1",
  -- base06 = "#999999",
  -- base07 = "#c1c1c1",
  -- base08 = "#5f8787",
  -- base09 = "#aaaaaa",
  -- base0A = "#e78a53",
  -- base0B = "#fbcb97",
  -- base0C = "#aaaaaa",
  -- base0D = "#888888",
  -- base0E = "#999999",
  -- base0F = "#444444",
  --     })
  --   end,
  -- },

  {
    "slugbyte/lackluster.nvim",
    lazy = false,
    priority = 1000,
    init = function()
      local lackluster = require("lackluster")
      lackluster.setup({
        disable_plugin = {
          bufferline = false,
          cmp = false,
          dashboard = false,
          flash = false,
          git_gutter = false,
          git_signs = false,
          headline = false,
          indentmini = false,
          lazy = false,
          lightbulb = false,
          lsp_config = false,
          mason = false,
          mini_diff = false,
          navic = false,
          noice = false,
          notify = false,
          oil = false,
          rainbow_delimiter = false, -- if you want color-rainbows you should disable this
          scollbar = false,
          telescope = false,
          todo_comments = false,
          tree = false,
          trouble = false,
          which_key = false,
          yanky = false,
        },

        tweak_syntax = {
          comment = lackluster.color.gray4, -- or gray5
        },

        tweak_ui = {
          disable_undercurl = false, -- set to true if you want underline instead of undercurl
          enable_end_of_buffer = false, -- set to true to show the end_of_buffer ~ symbols in the gutter
        },

        tweak_background = {
          normal = "none",
          telescope = "none",
          menu = lackluster.color.gray3,
          popup = "default",
        },
      })
      -- vim.cmd.colorscheme("lackluster")
      -- vim.cmd.colorscheme("lackluster-hack") -- my favorite
      -- vim.cmd.colorscheme("lackluster-mint")
    end,
  },

  -- {
  --   "ellisonleao/gruvbox.nvim",
  --   priority = 1000,
  --   config = function()
  --     require("gruvbox").setup({ transparent_mode = true })
  --   end,
  -- },

  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "lackluster-hack" },
  },

  -- modicator (auto color line number based on vim mode)
  {
    "mawkler/modicator.nvim",
    dependencies = "slugbyte/lackluster.nvim",
    init = function()
      -- These are required for Modicator to work
      vim.o.cursorline = false
      vim.o.number = true
      vim.o.termguicolors = true
    end,
    opts = {},
  },
}
