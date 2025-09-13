return {
	"saghen/blink.cmp",
	dependencies = {
		"archie-judd/blink-cmp-words",
		"MahanRahmati/blink-nerdfont.nvim",
		"erooke/blink-cmp-latex",
		"ribru17/blink-cmp-spell",
		"Kaiser-Yang/blink-cmp-avante",
	},
	build = "cargo build --release",
	version = "1.*",

	opts = {
		fuzzy = { implementation = "prefer_rust" },
		-- ...
		-- Optionally add 'dictionary', or 'thesaurus' to default sources

		keymap = {
			preset = "default",
			["<S-Space>"] = { "show", "show_documentation", "hide_documentation" },
			["<Tab>"] = { "select_next", "fallback" },
			["<S-Tab>"] = { "select_prev", "fallback" },
			["<C-n>"] = { "scroll_documentation_down", "fallback" },
			["<C-e>"] = { "scroll_documentation_down", "fallback" },
			["C-y"] = { "select_and_accept" },
			--["<CR>"] = { "select_and_accept" },
		},
		appearance = {
			nerd_font_variant = "normal",
		},
		sources = {
			default = { "lsp", "path", "buffer", "nerdfont", "codecompanion" },
			providers = {

				-- Use the thesaurus source
				codecompanion = {
					module = "codecompanion",
					name = "codecompanion",
					opts = { insert = true },
				},
				nerdfont = {
					module = "blink-nerdfont",
					name = "Nerd Fonts",
					score_offset = 15,
					opts = { insert = true },
				},
			},

			-- Setup completion by filetype
			per_filetype = {
				text = { "dictionary" },
				codecompanion = { "codecompanion" },
				markdown = { "thesaurus", "dictionary" },
				vimwiki = { "dictionary", "omni", "thesaurus", "nerdfont", "cmp_zotcite" },
			},
		},
		-- ...
	},
	-- ...
}
