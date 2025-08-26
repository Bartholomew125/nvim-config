vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require("config.lazy")
require("options.keymaps")
require("options.options")

-- Colorscheme
vim.cmd.colorscheme("one_monokai")
