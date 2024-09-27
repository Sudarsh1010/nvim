return {
  {
    "RRethy/base16-nvim",
    name = "base16",
  },

  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "base16-black-metal-bathory" },
  },

  -- modicator (auto color line number based on vim mode)
  {
    "mawkler/modicator.nvim",
    dependencies = "RRethy/base16-nvim",
    init = function()
      -- These are required for Modicator to work
      vim.o.cursorline = false
      vim.o.number = true
      vim.o.termguicolors = true
    end,
    opts = {},
  },
}
