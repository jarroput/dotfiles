local status, packer = pcall(require, 'packer')
if (not status) then
  print('Packer is not installed')
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  -- language server configurations
  use "neovim/nvim-lspconfig"

  -- autocomplete and snippets
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp" -- nvim-cmp for neovim's built in LSP
  use "hrsh7th/vim-vsnip"
  use "hrsh7th/cmp-buffer"
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- autopair
  use 'windwp/nvim-autopairs'

  -- vscode like pictograms
  use "onsails/lspkind-nvim"

  -- telescope
  use "nvim-lua/plenary.nvim"
  use { "nvim-telescope/telescope.nvim", tag = '0.1.x' }
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- theme
  use 'navarasu/onedark.nvim'
end)
