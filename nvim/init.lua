-- NeoVim Config

-- Setup Vim-plug
local data_dir = vim.fn.stdpath('data')
if vim.fn.empty(vim.fn.glob(data_dir .. '/site/autoload/plug.vim')) == 1 then
	vim.cmd('silent !curl -fLo ' .. data_dir .. '/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
	vim.o.runtimepath = vim.o.runtimepath
	vim.cmd('autocmd VimEnter * PlugInstall --sync | source $MYVIMRC')
end

local vim = vim
local Plug = vim.fn['plug#']

-- Set global options
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.start_time = vim.fn.reltime()

vim.loader.enable()
vim.call('plug#begin')

-- Plugins list
Plug('catppuccin/nvim', { ['as'] = 'catppuccin' }) -- color scheme
Plug('nvim-lualine/lualine.nvim') -- status line
Plug('nvim-tree/nvim-web-devicons') -- pretty icons
Plug('folke/which-key.nvim') -- mappings popup
Plug('goolord/alpha-nvim') --pretty startup
Plug('nvim-treesitter/nvim-treesitter') -- improved syntax highlighting
Plug('mfussenegger/nvim-lint') -- async linter
Plug('nvim-tree/nvim-tree.lua') -- file explorer
Plug('windwp/nvim-autopairs') -- automatically pair brackets etc.
Plug('lewis6991/gitsigns.nvim') --git
Plug('numToStr/Comment.nvim') -- comments
Plug('norcalli/nvim-colorizer.lua') --color highlight
Plug('ibhagwan/fzf-lua') --fuzzy finder and grep
Plug('numToStr/FTerm.nvim') --floating terminal
-- Plug('ron-rs/ron.vim') --ron syntax highlighting
-- Plug('MeanderingProgrammer/render-markdown.nvim') --render md inline
-- Plug('emmanueltouzery/decisive.nvim') --view csv files
-- Plug('folke/twilight.nvim') --surrounding dim

vim.call("plug#end")

-- Config files
require("config.autocmd")
require("config.options")
require("config.mappings")

-- Plugin files
require("plugins.theme")
require("plugins.status-line")
require("plugins.which-key")
require("plugins.nvim-tree")

