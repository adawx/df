-- ============================================================================
-- Key Remapping & Generic Vim Config (with noremap equivalents)
-- ============================================================================

-- Set options
vim.opt.hidden = true
vim.opt.mouse = 'a'

-- Split navigation (non-recursive)
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })

-- Key Rebinds
vim.keymap.set('n', '<space>', ':', { noremap = true })
vim.keymap.set('n', '<Tab>', ':bnext<CR>', {noremap = true})
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', {noremap = true})
vim.keymap.set('n', '<F6>', ':UndotreeToggle<CR>', {noremap = true})
vim.keymap.set('n', '<F7>', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<F8>', ':Bclose!<CR>', {noremap = true})
vim.keymap.set('n', '<F10>', ':Bclose<CR>', {noremap = true})
vim.keymap.set('n', '<F11>', ':wBclose<CR>', {noremap = true})
vim.keymap.set('n', '<C-u>', '<C-u>zz', {noremap = true})
vim.keymap.set('n', '<C-d>', '<C-d>zz', {noremap = true})
vim.keymap.set('n', '<C-o>', '<C-o>zz', {noremap = true})
vim.keymap.set('n', 'n', 'nzz', {noremap = true})
vim.keymap.set('n', 'N', 'Nzz', {noremap = true})

-- Leader Rebinds & Clipboard
vim.keymap.set('n', '<leader>fm', ':Format<CR>', {noremap = true})
vim.keymap.set('n', '<leader>sv', ':source $MYVIMRC<CR>', {noremap = true})
vim.keymap.set('n', '<leader>ev', ':e $MYVIMRC<CR>', {noremap = true})
vim.keymap.set('n', '<leader>ev', ':e $MYVIMRC<CR>', {noremap = true})
vim.keymap.set('v', '<leader>y', '"+y', {noremap = true})
vim.keymap.set('n', '<leader>Y', '"+yg_', {noremap = true})
vim.keymap.set('n', '<leader>y', '"+y', {noremap = true})
vim.keymap.set('n', '<leader>yy', '"+yy', {noremap = true})
vim.keymap.set('n', '<leader>p', '"+p', {noremap = true})
vim.keymap.set('n', '<leader>P', '"+P', {noremap = true})
vim.keymap.set('v', '<leader>p', '"+p', {noremap = true})
vim.keymap.set('v', '<leader>P', '"+P', {noremap = true})

-- Cursor Config
vim.opt.guicursor = 'a:blinkon250'

-- Search Config
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Indenting
vim.opt.shiftwidth = 2
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.number = true
vim.opt.relativenumber = true

-- Rust Config
vim.cmd('syntax enable')
vim.cmd('filetype plugin indent on')
vim.g.rustfmt_autosave = 1

-- Winbar Configuration
vim.opt.winbar = table.concat({
  "%1*\\ %n\\ %*",       -- buffer number
  "%3*%y%*",             -- file type
  "%4*\\ %<%f%*",        -- full path
  "%2*%m%*",             -- modified flag
  "%1*%=%5l%*",          -- current line
  "%2*/%L%*",            -- total lines
  "%1*%4v\\ %*",         -- virtual column number
  "%2*0x%04B\\ %*"       -- character under cursor
})

-- Markdown Preview
vim.g.mkdp_auto_close = 0
vim.keymap.set('n', '<F1>', '<Plug>MarkdownPreview', { noremap = true })
