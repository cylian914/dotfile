require("nvim-tree").setup()
local api = require "nvim-tree.api"
vim.keymap.set("n","<leader>t", function()
	if api.tree.is_visible() == true then
		api.tree.close()
	else
		api.tree.focus()
		end
end)
vim.keymap.set("n","<leader>tn", function()
	local path = vim.fn.input("Folder >")
	path = string.gsub(path,"~",vim.fn.getcwd())
	api.tree.close()
	api.tree.open(path)
end)
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
vim.keymap.set("n","<leader>a", mark.add_file)
vim.keymap.set("n","<leader>tt", ui.toggle_quick_menu)

vim.keymap.set("n","<C-&>", function() ui.nav_file(1)  end)
vim.keymap.set("n","<C-é>", function() ui.nav_file(2)  end)
vim.keymap.set("n","<C-\">", function() ui.nav_file(3)  end)
vim.keymap.set("n","<C-\'>", function() ui.nav_file(4)  end)
vim.keymap.set("n","<C-(>", function() ui.nav_file(5)  end)
