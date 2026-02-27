return {
	{
		"RRethy/base16-nvim",
		priority = 1000,
		config = function()
			require('base16-colorscheme').setup({
				base00 = '#17130b',
				base01 = '#17130b',
				base02 = '#d8d3cd',
				base03 = '#d8d3cd',
				base04 = '#474441',
				base05 = '#fffaf4',
				base06 = '#fffaf4',
				base07 = '#fffaf4',
				base08 = '#ff1100',
				base09 = '#ff1100',
				base0A = '#ff8f00',
				base0B = '#29ff00',
				base0C = '#ffc77f',
				base0D = '#ff8f00',
				base0E = '#ffdbad',
				base0F = '#ffdbad',
			})

			vim.api.nvim_set_hl(0, 'Visual', {
				bg = '#d8d3cd',
				fg = '#fffaf4',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Statusline', {
				bg = '#ff8f00',
				fg = '#17130b',
			})
			vim.api.nvim_set_hl(0, 'LineNr', { fg = '#d8d3cd' })
			vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#ffc77f', bold = true })

			vim.api.nvim_set_hl(0, 'Statement', {
				fg = '#ffdbad',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Keyword', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Repeat', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Conditional', { link = 'Statement' })

			vim.api.nvim_set_hl(0, 'Function', {
				fg = '#ff8f00',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Macro', {
				fg = '#ff8f00',
				italic = true
			})
			vim.api.nvim_set_hl(0, '@function.macro', { link = 'Macro' })

			vim.api.nvim_set_hl(0, 'Type', {
				fg = '#ffc77f',
				bold = true,
				italic = true
			})
			vim.api.nvim_set_hl(0, 'Structure', { link = 'Type' })

			vim.api.nvim_set_hl(0, 'String', {
				fg = '#29ff00',
				italic = true
			})

			vim.api.nvim_set_hl(0, 'Operator', { fg = '#474441' })
			vim.api.nvim_set_hl(0, 'Delimiter', { fg = '#474441' })
			vim.api.nvim_set_hl(0, '@punctuation.bracket', { link = 'Delimiter' })
			vim.api.nvim_set_hl(0, '@punctuation.delimiter', { link = 'Delimiter' })

			vim.api.nvim_set_hl(0, 'Comment', {
				fg = '#d8d3cd',
				italic = true
			})

			local current_file_path = vim.fn.stdpath("config") .. "/lua/plugins/dankcolors.lua"
			if not _G._matugen_theme_watcher then
				local uv = vim.uv or vim.loop
				_G._matugen_theme_watcher = uv.new_fs_event()
				_G._matugen_theme_watcher:start(current_file_path, {}, vim.schedule_wrap(function()
					local new_spec = dofile(current_file_path)
					if new_spec and new_spec[1] and new_spec[1].config then
						new_spec[1].config()
						print("Theme reload")
					end
				end))
			end
		end
	}
}
