require("alex.lsp-install-config")
require("alex.lsp")
require("alex.lualine-config")
require("alex.formatter-config")
require("alex.nvim-tree")
require("alex.treesitter")
require("alex.telescope-setup")
require("alex.git-blame")

vim.o.updatetime = 250
vim.cmd([[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])

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
