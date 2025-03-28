require("core.plugin-config.lsp-install-config")
require("core.plugin-config.lsp")
require("core.plugin-config.lualine-config")
require("core.plugin-config.formatter-config")
require("core.plugin-config.nvim-tree")
require("core.plugin-config.treesitter")
require("core.plugin-config.telescope-setup")
require("core.plugin-config.git-blame")
require("core.plugin-config.colorizer")

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
