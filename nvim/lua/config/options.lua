local options = {
		autoindent = false,
		backup = false,
		cindent = true,	-- C indenting
		clipboard = "unnamedplus", -- system clipboard
		concealcursor = "nc", -- Conceal cursor in normal mode and for command-line editing
		conceallevel = 2, -- hide concealed text unless replacement defined
		cursorline = true, -- highlight current line
		foldlevel = 99, -- diable folding
		history = 100, -- command-line history
		ignorecase = true, -- ignore case while searching
		laststatus = 3, -- Only the last window will always have a status line
		mouse = "a", -- enable mouse
		number = true, -- Print line numbers
		numberwidth = 4, -- Width of line numbers
		relativenumber = false, -- Relative numbers off
		ruler = false, -- Disable extra numbering
		showcmd = false,
		showmode = false, -- show current mode
		smartcase = true,
		smarttab = true, -- indentation
		smoothscroll = true, -- linked to screen lines
		spell = off, -- enable for spell checking
		spelllang = "en_gb", -- english
		splitkeep = "screen", -- Scroll behaviour for opening and closing windows
		swapfile = false, -- disable swap file
		tabstop = 4, -- tab width
		termguicolors = true, -- use terminal colours
		title = false, -- disable titlebar in window
		undofile = true, -- undos are saved to file
		wrap = true,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.diagnostic.config({
	signs = false,
})

-- Additional options
vim.g.loaded_perl_provider = 0


