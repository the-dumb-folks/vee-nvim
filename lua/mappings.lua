require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
--
-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

-- Define mappings using a simpler style

-- Normal mode mappings
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Toggle Breakpoint" })

map("n", "<leader>dgt", function()
  require('dap-go').debug_test()
end, { desc = "Debug Go Test" })

map("n", "<leader>dgl", function()
  require('dap-go').debug_last()
end, { desc = "Debug Last Go Test" })

map("n", "<leader>gsj", "<cmd> GoTagAdd json <CR>", { desc = "Add JSON Struct Tags" })
map("n", "<leader>gsy", "<cmd> GoTagAdd yaml <CR>", { desc = "Add YAML Struct Tags" })

map("n", "<leader>dpr", function()
  require('dap-python').test_method()
end, { desc = "Debug Python Test Method" })

map("n", "<leader>rcu", function ()
  require('crates').upgrade_all_crates()
end, { desc = "Update Crates" })

-- Additional mappings
map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>", { desc = "Escape to normal mode" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
