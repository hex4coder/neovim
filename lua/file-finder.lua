-- Cari file
vim.keymap.set('n','<leader>ff', ':lua require"telescope.builtin".find_files({no_ignore=true, hidden=true})<CR>', {})
-- Cari text dalam file
vim.keymap.set('n','<leader>fg', ':lua require"telescope.builtin".live_grep()<CR>', {})
