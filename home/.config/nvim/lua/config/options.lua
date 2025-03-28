local opts = {
	shiftwidth = 4,
	tabstop = 4,
	expandtab = true,
	wrap = false,
	termguicolors = true,
	number = true,
	relativenumber = true,
}

-- Set transparent backgrounds for various groups
local highlight_groups = {
  'Normal',
  'NormalFloat',
  'NormalNC',
  'NvimTreeWindowPicker',
  'NvimTreeNormal'
}

for _, group in ipairs(highlight_groups) do
  vim.api.nvim_set_hl(0, group, { bg = 'none' })
end

-- Set transparent backgrounds for various groups
local highlight_groups = {
  'Normal',
  'NormalFloat',
  'NormalNC',
  'NvimTreeWindowPicker',
  'NvimTreeNormal'
}

for _, group in ipairs(highlight_groups) do
  vim.api.nvim_set_hl(0, group, { bg = 'none' })
end

-- Set other options
--vim.cmd.colorscheme("spaceduck")
