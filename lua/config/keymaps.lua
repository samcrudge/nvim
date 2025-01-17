vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Disable Recording & Ex Mode
vim.keymap.set("", "q", "<nop>")
vim.keymap.set("", "Q", "<nop>")

-- : to ;
vim.keymap.set("n", ";", ":", { noremap = true })

-- QuickFix
vim.keymap.set("n", "<C-q>", ":call QuickFixToggle()<CR>")

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Center page on find/scroll
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("i", "<C-c>", "<Esc>")

-- Clear search with <esc>
vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>")

-- Add undo break-points
vim.keymap.set("i", ",", ",<c-g>u")
vim.keymap.set("i", ".", ".<c-g>u")
vim.keymap.set("i", ";", ";<c-g>u")

-- Better indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Paste without copying the selected content
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste without copying the selected content" })

-- Treat ctrl-c as ESC for visual block mode
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Diagnostic keymaps
vim.keymap.set("n", "gl", vim.diagnostic.open_float, { desc = "Open diagnostic in float" })

-- toggle wrap
vim.keymap.set("n", "<leader>ww", "<cmd>set wrap!<CR>", { desc = "Toggle wrap" })

-- Key mapping for Zen Mode
vim.api.nvim_set_keymap("n", "<leader>z", ":ZenMode<CR>", { noremap = true, silent = true })

-- Other key mappings
vim.api.nvim_set_keymap("n", "<leader>ff", ":Telescope find_files<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fg", ":Telescope live_grep<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fb", ":Telescope buffers<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fh", ":Telescope help_tags<CR>", { noremap = true, silent = true })
