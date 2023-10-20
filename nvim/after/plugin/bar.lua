local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
-- Move to previous/next
map('n', '<leader>N', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<leader>n', '<Cmd>BufferNext<CR>', opts)
-- close out of current window
map('n', '<leader>x', '<Cmd>BufferClose<CR>', opts)
