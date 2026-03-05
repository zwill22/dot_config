local branch = {
		"branch",
		icon = "",
}

local mode = {
		"mode",
		fmt = function(str)
				return "-- " .. str .. " --"
		end,
}

local diagnostics = {
		"diagnostics",
		sources = {"nvim_diagnostic"},
		sections = {"error", "warn"},
		symbols = {
				error = " ",
				warn = " ",
		},
		colored = true,
		update_in_insert = false,
		always_visible = true,
		cond = function()
				return vim.bo.filetype ~= "markdown"
		end,
}

local diff = {
		"diff",
		colored = true,
		symbols = {
				added = " ",
				modified = " ",
				removed = " "
		},
}

local progress = function()
		local current_line = vim.fn.line(".")
		local total_lines = vim.fn.line("$")
		local cars = {"", "", ""}
		local line_ratio = current_line / total_line
		local index = math.ceil(line_ration * #chars)
		return chars[index] .. " " .. math.floor(line_ratio * 100) .. "%%"
end


require('lualine').setup {
		options = {
				icons_enabled = true,
				theme = 'auto',
				component_separators = { left = '', right = ''},
				section_separators = { left = ' ', right = ' '},
				disabled_filetypes = {
						statusline = {},
						winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				always_show_tabline = true,
				globalstatus = false,
				refresh = {
						statusline = 1000,
						tabline = 1000,
						winbar = 1000,
						refresh_time = 16, -- ~60fps
						events = {
								'WinEnter',
								'BufEnter',
								'BufWritePost',
								'SessionLoadPost',
								'FileChangedShellPost',
								'VimResized',
								'Filetype',
								'CursorMoved',
								'CursorMovedI',
								'ModeChanged',
						},
				}
		},
		sections = {
				lualine_a = {branch},
				lualine_b = {mode},
				lualine_c = {diagnostic},
				lualine_x = {diff, "fileformat", "filetype"},
				lualine_y = {"location"},
				lualine_z = {progress},
		},
		inactive_sections = { 
				lualine_a = {},
				lualine_b = {},
				lualine_c = {'filename'},
				lualine_x = {'location'},
				lualine_y = {},
				lualine_z = {}
		},
		tabline = {},
		winbar = {},
		inactive_winbar = {},
		extensions = {
				"nvim-tree"
		}
}

