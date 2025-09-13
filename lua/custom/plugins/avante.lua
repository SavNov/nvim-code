-- lazy.nvim
return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
		"saghen/blink.cmp",
		"ravitemer/mcphub.nvim",
		"MeanderingProgrammer/render-markdown.nvim",
	},
	opts = {
		adapter = "lmstudio",
		strategies = {
			chat = {
				adapter = "lmstudio",
				--model = "koboldai_-_llama2-13b-erebus-v3",
			},
			inline = {
				adapter = "lmstudio",
				--model = "koboldai_-_llama2-13b-erebus-v3",
			},
		},
		-- NOTE: The log_level is in `opts.opts`
		opts = {
			log_level = "DEBUG", -- or "TRACE"
		},
	},
	config = function()
		require("codecompanion").setup({

			extensions = {
				mcphub = {
					callback = "mcphub.extensions.codecompanion",
					opts = {
						make_vars = true,
						make_slash_commands = true,
						show_result_in_chat = true,
					},
				},
			},
			adapters = {
				acp = {
					lmstudio = function()
						return require("codecompanion.adapters").extend("lmstudio", {
							env = {
								api_key = "00000",
							},
						})
					end,
				},
				lmstudio = function()
					return require("codecompanion.adapters").extend("openai_compatible", {
						env = {
							url = "http://localhost:1234",
							api_key = "API_KEY",
						},
					})
				end,
			},
			opts = {
				log_level = "DEBUG", -- or "TRACE"
			},
		})
	end,
	-- Other package managers
}
