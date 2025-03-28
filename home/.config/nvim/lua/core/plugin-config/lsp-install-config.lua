local lsp_installer = require("nvim-lsp-installer")

lsp_installer.settings({
    ui = {
        icons = {
            server_installed = "",
            server_pending = "ﰣ",
            server_uninstalled = "✗"
        }
    }
})
