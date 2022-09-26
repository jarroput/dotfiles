local o = vim.o
local wo = vim.wo
local bo = vim.bo

vim.scriptencoding = 'utf-8'

-- global options
o.encoding = 'utf-8'
o.syntax = true
o.fileencoding = 'utf-8'
o.title = true
o.autoindent = true
o.swapfile = true
o.dir = '/tmp'
o.smartcase = true
o.mouse = 'a'
o.smarttab = true
o.scrolloff = 10
o.ignorecase = true
o.breakindent = true
o.wrap = true
o.laststatus = 2
o.showcmd = true
o.backspace = "start,eol,indent"
o.shell = 'fish'
o.wildignore = '*/node_modules/*,*/_build/*'
o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2

-- window-local options
wo.number = true
wo.relativenumber = true

-- buffer-local options
bo.expandtab = true

-- turn off paste when leaving insert mode
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste"
})
