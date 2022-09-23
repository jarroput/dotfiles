require('settings')
require('highlight')
require('maps')
require('plugins')
require('lsp')

-- Automatically run :PackerCompile whenever plugins.lua is updated
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

require('lualine').setup {
  options = { theme = 'nightfly' }
}

require('onedark').setup {
  style = 'darker'
}
require('onedark').load()
