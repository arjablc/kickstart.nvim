local opt = vim.opt
vim.g.have_nerd_font = true


opt.number = true
opt.relativenumber = true
opt.cursorline = true

--wrapped lines have same indent
opt.breakindent = true
--tabs and indent
opt.expandtab = true
opt.autoindent = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.smartindent = true


-- no case on search, case only if there is a capital letter
opt.ignorecase = true
opt.smartcase = true

--sign column is the signs like plus and minus

--backspace
--opt.backspace = "indent, eol, start"
--dunno this didn't work
opt.scrolloff = 8

--How splits should open
opt.splitright = true
opt.splitbelow = true

--For the columns'
opt.termguicolors = true


--for default register
opt.clipboard = 'unnamedplus'
--not using because of a wsl installation
--#region
--for obisdian.nvim
vim.opt_local.conceallevel = 2
