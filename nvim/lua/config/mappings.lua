-- Mappings

local function map(mode, key, value)
		vim.keymap.set(mode, key, value, {noremap = true, silent = true})
end

-- set leader
map("", "<Space>", "<Nop>") -- Unmap space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Buffers
map("n", "<S-l>", ":bnext<CR>")
map("n", "<S-h>", ":bprevious<CR>")
map("n", "<leader>q", ":BufferClose<CR>")
map("n", "<leader>Q", ":BufferClose!<CR>")

-- Formatting
map("v", "<leader>i", "=gv") -- auto indent

-- Misc
map("n", "<leader>t", ":NvimTreeOpen<CR>") -- File explorer
map("n", "<leader>P", ":PlugInstall<CR>") -- Update plugins
map("n", "<leader>W", ":set wrap!<CR>") -- toggle wrap



