local cmp = require("cmp")

cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    mapping = {
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<Tab>"] = function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
                fallback()
            end
        end,
        ["<S-Tab>"] = function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            else
                fallback()
            end
        end,
    },
    sources = {
        { name = "nvim_lsp" },
        { name = "vsnip" },
        { name = "buffer" },
    },
})

-- Setup typescript lspconfig.
require("lspconfig").tsserver.setup({
    capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
})

--Rust lsp
local nvim_lsp = require("lspconfig")
local opts = {
    tools = { -- rust-tools options
        autoSetHints = true,
        --        hover_with_actions = true,
        inlay_hints = {
            show_parameter_hints = false,
            parameter_hints_prefix = "",
            other_hints_prefix = "",
        },
    },

    -- all the opts to send to nvim-lspconfig
    -- these override the defaults set by rust-tools.nvim
    -- see https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#rust_analyzer
    server = {
        -- on_attach is a callback called when the language server attachs to the buffer
        -- on_attach = on_attach,
        settings = {
            -- to enable rust-analyzer settings visit:
            -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
            ["rust-analyzer"] = {
                -- enable clippy on save
                checkOnSave = {
                    command = "clippy",
                },
            },
        },
    },
}
require("rust-tools").setup(opts)

--golang
require("lspconfig").gopls.setup({})

vim.cmd([[nnoremap gd :lua vim.lsp.buf.definition()<CR>]])
vim.cmd([[nnoremap K :lua vim.lsp.buf.hover()<CR>]])
vim.cmd([[nnoremap <leader>. :lua vim.lsp.buf.code_action()<CR>]])
vim.cmd([[nnoremap <leader>rn :lua vim.lsp.buf.rename()<CR>]])
