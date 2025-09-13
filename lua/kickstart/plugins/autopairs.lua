-- autopairs
-- https://github.com/windwp/nvim-autopairs

return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	-- Optional dependency
	dependencies = { "seghan/blink.cmp" },
	config = function()
		local autopairs = require("nvim-autopairs")
		-- If you want to automatically add `(` after selecting a function or method
		autopairs.setup({
			check_ts = true,
			enable_check_bracket_line = false,
		})
	end,
}
