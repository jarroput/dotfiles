local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    'elixir',
    'eex',
    'heex',
    'html',
    'erlang',
    'surface',
    'json',
    'css',
    'sql',
    'lua'
  },
  autotag = {
    enable = true
  }
}
