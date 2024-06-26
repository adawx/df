require("alex.lsp-install-config")
require("alex.lsp")
require("alex.lualine-config")
require("alex.formatter-config")
require("alex.nvim-tree")
require("alex.treesitter")
require("alex.telescope-setup")
require("alex.git-blame")
require("alex.colorizer")

vim.o.updatetime = 250
vim.cmd([[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])

-- Copilot settings
vim.g.copilot_assume_mapped = true
vim.api.nvim_set_keymap("i", "<C-l>", "copilot#Accept('<CR>')", { expr = true, silent = true })
vim.keymap.set("i", "<C-j>", "copilot#Next()", { expr = true, silent = true })
vim.keymap.set("i", "<C-k>", "copilot#Previous()", { expr = true, silent = true })

P = function(v)
    print(vim.inspect(v))
    return v
end

if pcall(require, "plenary") then
    RELOAD = require("plenary.reload").reload_module

    R = function(name)
        RELOAD(name)
        return require(name)
    end
end
