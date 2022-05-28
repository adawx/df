require("alex.lsp-install-config")
require("alex.lsp")
require("alex.lualine-config")
require("alex.formatter-config")

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
