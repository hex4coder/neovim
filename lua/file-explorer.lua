-- disable netrw pada saat init.lua di load.
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolor ke true untuk mengaktifkan highlight
vim.opt.termguicolors = true

-- konfigurasi kosong untuk default
require('nvim-tree').setup({
	--open_on_setup = true,
	--ignore_buffer_on_setup = true,
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
