-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "<C-]>", vim.lsp.buf.definition, { desc = "Goto Definition" })

-- Search layout carried over from acrusedev/nvim-config.
map("n", "<leader>e", LazyVim.pick("files"), { desc = "Find Project Files" })
map("n", "<leader>sf", LazyVim.pick("files"), { desc = "Find Project Files" })
map("n", "<leader>sg", LazyVim.pick("live_grep"), { desc = "Grep Project" })
map({ "n", "x" }, "<leader>sw", LazyVim.pick("grep_word"), { desc = "Search Word or Selection" })
map("n", "<leader>sb", function()
  Snacks.picker.lines()
end, { desc = "Search Buffer Lines" })
map("n", "<leader>s/", function()
  Snacks.picker.grep_buffers()
end, { desc = "Grep Open Buffers" })
map("n", "<leader>sh", function()
  Snacks.picker.help()
end, { desc = "Search Help" })
map("n", "<leader>sk", function()
  Snacks.picker.keymaps()
end, { desc = "Search Keymaps" })
map("n", "<leader>sd", function()
  Snacks.picker.diagnostics()
end, { desc = "Search Diagnostics" })
map("n", "<leader>sr", function()
  Snacks.picker.resume()
end, { desc = "Resume Search" })
map("n", "<leader>s.", LazyVim.pick("oldfiles"), { desc = "Search Recent Files" })
map("n", "<leader>sn", LazyVim.pick.config_files(), { desc = "Search Neovim Config" })
map("n", "<leader>ss", function()
  Snacks.picker.pickers()
end, { desc = "Select Search Picker" })
map("n", "<leader><leader>", function()
  Snacks.picker.buffers()
end, { desc = "Search Buffers" })
map("n", "<leader>/", function()
  Snacks.picker.lines()
end, { desc = "Search Current Buffer" })
