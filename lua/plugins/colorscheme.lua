return {
  -- {
  --   "rebelot/kanagawa.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("kanagawa").setup({
  --       compile = false, -- enable compiling the colorscheme
  --       undercurl = true, -- enable undercurls
  --       commentStyle = { italic = true },
  --       functionStyle = {},
  --       keywordStyle = { italic = true },
  --       statementStyle = { bold = true },
  --       typeStyle = {},
  --       transparent = true, -- do not set background color
  --       terminalColors = true, -- define vim.g.terminal_color_{0,17}
  --       theme = "wave", -- Load "wave" theme when 'background' option is not set
  --       background = { -- map the value of 'background' option to a theme
  --         dark = "wave", -- try "dragon" !
  --         light = "lotus",
  --       },
  --
  --       overrides = function(colors)
  --         local theme = colors.theme
  --         return {
  --           NeotreeNormal = { bg = "none" },
  --           NormalFloat = { bg = "none" },
  --           FloatBorder = { bg = "none" },
  --           FloatTitle = { bg = "none" },
  --
  --           -- Save an hlgroup with dark background and dimmed foreground
  --           -- so that you can use it where your still want darker windows.
  --           -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
  --           NormalDark = { fg = theme.ui.fg_dim, bg = "none" },
  --
  --           -- Popular plugins that open floats will link to NormalFloat by default;
  --           -- set their background accordingly if you wish to keep them dark and borderless
  --           LazyNormal = { bg = "none", fg = theme.ui.fg_dim },
  --           MasonNormal = { bg = "none", fg = theme.ui.fg_dim },
  --
  --           --TelescopeTitle = { fg = theme.ui.special, bold = true },
  --           TelescopePromptNormal = { bg = "none" },
  --           TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = "none" },
  --           TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = "none" },
  --           TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = "none" },
  --           TelescopePreviewNormal = { bg = "none" },
  --           TelescopePreviewBorder = { bg = "none", fg = theme.ui.bg_dim },
  --         }
  --       end,
  --     })
  --   end,
  -- },

  {
    "ellisonleao/gruvbox.nvim",
    config = function()
      require("gruvbox").setup({
        terminal_colors = true, -- define vim.g.terminal_color_{0,17}
        transparent_mode = true,
      })
    end,
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "auto", -- latte, frappe, macchiato, mocha
        background = { -- :h background
          light = "latte",
          dark = "mocha",
        },
        transparent_background = true, -- disables setting the background color.
        show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
        term_colors = trlue, -- sets terminal colors (e.g. `g:terminal_color_0`)
        dim_inactive = {
          enabled = false, -- dims the background color of inactive window
          shade = "dark",
          percentage = 0.15, -- percentage of the shade to apply to the inactive window
        },
        no_italic = false, -- Force no italic
        no_bold = false, -- Force no bold
        no_underline = false, -- Force no underline
        styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
          comments = { "italic" }, -- Change the style of comments
          conditionals = { "italic" },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
          -- miscs = {}, -- Uncomment to turn off hard-coded styles
        },
        color_overrides = {},
        custom_highlights = {},
        default_integrations = true,
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = false,
          mini = {
            enabled = true,
            indentscope_color = "",
          },
        },
      })
    end,
  },

  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      require("rose-pine").setup({
        dark_variant = "main", -- main, moon, or dawn
        styles = {
          bold = true,
          italic = true,
          transparency = true,
        },
      })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "gruvbox" },
  },

  -- modicator (auto color line number based on vim mode)
  {
    "mawkler/modicator.nvim",
    dependencies = "ellisonleao/gruvbox.nvim",
    init = function()
      -- These are required for Modicator to work
      vim.o.cursorline = false
      vim.o.number = true
      vim.o.termguicolors = true
    end,
    opts = {},
  },
}
