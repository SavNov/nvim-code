-- This is my keybindings file.
-- The basics:
vim.keymap.set("i", "nnn", "<Esc>")
vim.keymap.set("n", ";", ":")
vim.keymap.set("n", "<M-m>", "h", { noremap = true })
vim.keymap.set("n", "<M-n>", "gj")
vim.keymap.set("n", "<M-e>", "gk")
vim.keymap.set("n", "<M-i>", "l", { noremap = true })
vim.keymap.set("v", "<M-m>", "h", { noremap = true })
vim.keymap.set("v", "<M-n>", "gj")
vim.keymap.set("v", "<M-e>", "gk")
vim.keymap.set("v", "<M-i>", "l", { noremap = true })
vim.keymap.set("n", "q", "b")
vim.keymap.set("n", "f", "e")
vim.keymap.set("n", "t", "f", { noremap = true })
-- vim.keymap.set("n", "j", "gj")
-- vim.keymap.set("n", "k", "gk")

-- Obsidian
vim.keymap.set("n", "<leader>ob", ":ObsidianBacklinks<CR>")
vim.keymap.set("n", "<leader>os", ":ObsidianSearch<CR>")
return {}
