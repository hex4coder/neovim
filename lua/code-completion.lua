-- completeopt is used to manage code suggestions
-- menuone: show popup even when there is only one suggestion
-- noinsert: Only insert text when selection is confirmed
-- noselect: force us to select one from the suggestions
vim.opt.completeopt = {'menuone', 'noselect', 'noinsert', 'preview'}
-- shortmess is used to avoid excessive messages
vim.opt.shortmess = vim.opt.shortmess + { c = true}

local cmp = require'cmp'
cmp.setup({ 
  -- Mapping Keyboard untuk code completion
  mapping = {
	  -- Shift+TAB kembali ke sugesti kode sebelumnya
	  ['<S-Tab>'] = cmp.mapping.select_prev_item(),
	  -- TAB untuk menuju sugesti kode selanjutnya
	  ['<Tab>'] = cmp.mapping.select_next_item(),
	  -- Ctrl+Shift+f untuk scroll backward pada deskripsi kode
	  ['<C-S-f>'] = cmp.mapping.scroll_docs(-4),
	  -- Ctrl+f untuk scroll forward pada deskripsi kode
	  ['<C-f>'] = cmp.mapping.scroll_docs(4),
	  -- Ctrl+Space untuk mengaktifkan code completion pada posisi cursor
	  ['<C-Space>'] = cmp.mapping.complete(),
	  -- Ctrl+e untuk keluar dari code completion
	  ['<C-e>'] = cmp.mapping.close(),
	  -- CR (Tombol Enter) untuk memilih kode pada code completion
	  ['<CR>'] = cmp.mapping.confirm({
		  behavior = cmp.ConfirmBehavior.Insert,
		  select = true,
	  })
  },

  -- Source yang digunakan dalam code completion
  sources = {
	  { name = 'path' },
	  { name = 'nvim_lsp', keyword_length = 3 },
	  { name = 'nvim_lsp_signature_help' },
	  { name = 'nvim_lua', keyword_length = 2 },
	  { name = 'buffer', keyword_length = 2 },
	  { name = 'vsnip', keyword_length = 2 },
  },

  -- Snippet untuk vsnip
  snipped = {
	expand = function(args)
		vim.fn["vsnip#anonymous"](args.body)
	end,
  },

  -- Tambahkan border
  window = {
	completion = cmp.config.window.bordered(),
	documentation = cmp.config.window.bordered(),
  },

  -- add formating of the different sources
  formatting = {
      fields = {'menu', 'abbr', 'kind'},
      format = function(entry, item)
          local menu_icon ={
              nvim_lsp = 'λ',
              vsnip = '⋗',
              buffer = 'b',
              path = 'p'
          }
          item.menu = menu_icon[entry.source.name]
          return item
      end,
  },

})
