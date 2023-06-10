require'nvim-treesitter.configs'.setup {
	ensure_installed = {"go", "lua", "dart"},

	sync_install = false,

	auto_install = true,

	highlight = {
		enable = true
	}
}
