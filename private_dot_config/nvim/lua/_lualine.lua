require('lualine').setup {
	options = {
		theme = 'dracula',
		icons_enabled = true,
		section_separators = '',
		component_separators = '',
		disabled_filetypes = {}
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch'},
		lualine_c = {{'filename', file_status = true, full_path = true}, require('lsp-status').status},
		lualine_x = {{"diagnostics", sources = {"nvim_lsp"}}, 'encoding', 'fileformat', 'filetype'},
		lualine_y = {'progress'},
		lualine_z = {'location'}
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
	extensions = {}
}
