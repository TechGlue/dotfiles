local opt = vim.opt
vim.opt.termguicolors = true

-- keybindings
vim.g.mapleader = ' '
vim.keymap.set("n", "<leader>pv", vim.cmd.Explore)
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', {noremap=true})

-- quality of life 
opt.relativenumber = true
opt.mouse = 'a'
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.wrap = true
opt.breakindent = true
opt.shiftwidth = 2
opt.expandtab = false
opt.tabstop = 4

opt.smartcase      = true
opt.cursorline     = true
opt.title          = true
opt.hlsearch       = false

--color scheme 
local status, _ = pcall(require, "biscuit")
if (status) then
		vim.cmd[[colorscheme solarized-osaka]]
end

-- save on the space bar click 
vim.api.nvim_set_keymap('n', '<space>', ':w<CR>', {noremap=true})
-- enable shift tab to move block of code in normal mode
vim.api.nvim_set_keymap('n', '<S-Tab>', ':b#<CR>', {noremap=true})
-- enable tab in normal mode
vim.api.nvim_set_keymap('n', '<Tab>', ':b#<CR>', {noremap=true})
-- prettier shortcut 
vim.api.nvim_set_keymap('n', '<leader>pp', ':Prettier<CR>', {noremap=true})
-- copilot shortcut
vim.api.nvim_set_keymap('n', '<leader>c', ':Copilot<CR>', {noremap=true})
-- toggle term
vim.api.nvim_set_keymap('n', '<leader>tt', ':ToggleTerm<CR>', {noremap=true})
-- exit term
vim.api.nvim_set_keymap('t', '<ESC>', '<C-\\><C-n>', {noremap=true})
-- lsp hover vim.lsp.buf.hover()
vim.api.nvim_set_keymap('n', '<leader>lh', ':lua vim.lsp.buf.hover()<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<leader>ww', ':WhichKey<CR>', {noremap=true})
-- shortcut vim vertical split
vim.api.nvim_set_keymap('n', '<leader>vs', ':vsplit<CR>', {noremap=true})
-- shortcut vim horizontal split
vim.api.nvim_set_keymap('n', '<leader>hs', ':split<CR>', {noremap=true})
