require "nvchad.mappings"

-- add yours here
vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })

local builtin = require "telescope.builtin"

-- Shortcut for searching your Neovim configuration files
vim.keymap.set("n", "<leader>sn", function()
  builtin.find_files { cwd = vim.fn.stdpath "config" }
end, { desc = "[S]earch [N]eovim files" })

-- Shortcuts for searching Jai docs
vim.keymap.set("n", "<leader>sj", function()
  builtin.find_files { search_dirs = { "~/dev/JAI_DEV/jai-beta-1-090/" } }
end, { desc = "[S]earch [J]ai files" })

vim.keymap.set("n", "<leader>gj", function()
  builtin.live_grep { search_dirs = { "~/dev/JAI_DEV/jai-beta-1-090/" } }
end, { desc = "Live [G]rep [J]ai files" })

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
