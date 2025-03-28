require("formatter").setup({
    filetype = {
        typescript = {
            function()
                return {
                    exe = "prettier",
                    args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote" },
                    stdin = true,
                }
            end,
        },
        typescriptreact = {
            function()
                return {
                    exe = "prettier",
                    args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote" },
                    stdin = true,
                }
            end,
        },
        javascript = {
            function()
                return {
                    exe = "prettier",
                    args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote" },
                    stdin = true,
                }
            end,
        },
        javascriptreact = {
            function()
                return {
                    exe = "prettier",
                    args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote" },
                    stdin = true,
                }
            end,
        },
        json = {
            function()
                return {
                    exe = "prettier",
                    args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote" },
                    stdin = true,
                }
            end,
        },
        yaml = {
            function()
                return {
                    exe = "prettier",
                    args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote" },
                    stdin = true,
                }
            end,
        },
        dart = {
            function()
                return {
                    exe = "dart",
                    args = { "format", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) },
                    stdin = false,
                }
            end,
        },
        lua = {
            function()
                return {
                    exe = "stylua",
                    args = {
                        "--config-path ~/.config/stylua.toml",
                        "-",
                    },
                    stdin = true,
                }
            end,
        },
        go = {
            function()
                return {
                    exe = "gofmt",
                    stdin = true,
                }
            end,
        },
    },
})

vim.api.nvim_exec(
    [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.jsx,*.json,*.ts,*.tsx,*.yml,*.yaml,*.lua,*.go,*.dart FormatWrite
augroup END
]],
    true
)
