-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.conceallevel = 1
opt.cmdheight = 0
opt.clipboard = "unnamedplus"
opt.relativenumber = false
opt.termguicolors = true
opt.ignorecase = true
opt.smartcase = true
opt.scrolloff = 15

opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- LSP Server to use for Python.
vim.g.lazyvim_python_lsp = "pyright"
vim.g.lazyvim_python_ruff = "ruff"

vim.g.root_spec = { "cwd" }
vim.g.omni_sql_no_default_maps = 1
vim.g.python3_host_prog = "/opt/homebrew/bin/python3"
