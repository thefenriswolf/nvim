-- Leader Key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- vs - Makes vertical split
vim.keymap.set("n", "vs", "<C-W>v", { desc = "Vertical Split" })
-- ss - Makes horizontal split
vim.keymap.set("n", "ss", "<C-W>s", { desc = "Horizontal Split" })

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
