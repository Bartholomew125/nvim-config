-- Keymaps have also been defined for blink.cmp. See plugin definition.

-- Telescope
local telescope = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescope.find_files, { desc = "Search for files (Telescope)" })
vim.keymap.set("n", "<leader>fw", telescope.live_grep, { desc = "Search for words in files (Telescope)" })
vim.keymap.set("n", "<leader>fb", telescope.buffers, { desc = "Search for buffers (Telescope)" })

-- Neotree
vim.keymap.set("n", "<C-n>", "<cmd>:Neotree toggle position=left<cr>", { desc = "Toggle directory tre (Neotree)" })

-- Remap line commenting from gc to <leader> /
vim.keymap.set("v", "<leader>/", "gc", { remap = true, silent = true, desc = "Comment line/lines" })

-- Run the run.bat file in the current directory
vim.keymap.set("n", "<leader>!", "<cmd>:!run.bat<cr>", { desc = "Run the run.bat in the current directory" })

-- Display errors and warnings
vim.keymap.set("n", "<leader>e", "<C-w>d", { remap = true, desc = "Display errors and warnings" })

-- Stop highlighting search
vim.keymap.set("n", "<ESC>", "<cmd>noh<cr>", { desc = "Unhighlight search" })

-- LSP
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", { desc = "Go to definition" })

-- Terminal
vim.keymap.set("t", "<ESC><ESC>", "<C-\\><C-n>")

-- Window switching
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to down window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to up window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Toggle terminal lazygit
vim.keymap.set("n", "<leader>g", "<cmd>lua _lazygit_toggle()<cr>", { desc = "Toggle lazygit terminal" })

-- Toggle hex view
vim.keymap.set("n", "<leader>hx", function() require("hex_reader").toggle() end, { desc = "Toggle hex reader" })

-- Faster write keybind
vim.keymap.set("n", "<leader>w", "<cmd>:w<cr>", { desc = "Write the file" })
