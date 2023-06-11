-- Update leader key
vim.g.mapleader = " "

-- fetch keymap
local map = vim.api.nvim_set_keymap
-- mapping keyboard
map('n', 'n', [[:NvimTreeToggle<CR>]], {})
map('n', '<leader>n', [[:NvimTreeFocus<CR>]], {})

-- For DAP Delve Golang
-- F5 untuk debugging
map('n', '<F5>', [[:lua require'dap'.continue()<CR>]], {})
-- CTRL+b untuk toggle breakpoint
map('n', '<C-b>', [[:lua require'dap'.toggle_breakpoint()<CR>]], {})
-- Press CTRL + c to toggle Breakpoint with Condition
map('n', '<C-c>', [[:lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint Condition: '))<CR>]], {})
-- Press CTRL + l to toggle Logpoint
map('n', '<C-l>', [[:lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log Point Msg: '))<CR>]], {})
-- Pressing F10 to step over
map('n', '<F10>', [[:lua require'dap'.step_over()<CR>]], {})
-- Pressing F11 to step into
map('n', '<F11>', [[:lua require'dap'.step_into()<CR>]], {})
-- Pressing F12 to step out
map('n', '<F12>', [[:lua require'dap'.step_out()<CR>]], {})
-- Press F6 to open REPL
map('n', '<F6>', [[:lua require'dap'.repl.open()<CR>]], {})
-- Press dl to run last ran configuration (if you used f5 before it will re run it etc)
map('n', 'dl', [[:lua require'dap'.run_last()<CR>]], {})
-- Press Ctrl+d to toggle debug mode, will remove NvimTree also
map('n', '<C-d>', [[:NvimTreeToggle<CR> :lua require'dapui'.toggle()<CR>]], {})

-- Tagbar toggle
map('n', '<F8>', [[:TagbarToggle<CR>]], {})

-- Flutter
map('n', '<leader>fa', [[:FlutterRun<CR>]], {})
map('n', '<leader>fr', [[:FlutterHotReload<CR>]], {})
map('n', '<leader>fR', [[:FlutterHotRestart<CR>]], {})
map('n', '<leader>fq', [[:FlutterQuit<CR>]], {})
map('n', '<leader>fv', [[:FlutterVisualDebug<CR>]], {})
map('n', '<leader>vs', [[:FlutterVSplit<CR>]], {})
map('n', '<leader>ft', [[:FlutterTab<CR>]], {})
map('n', '<leader>o', [[:FlutterOutlineToggle<CR>]], {})


-- Tab
map('n', '<C-t>', '[[:enew<CR>]]', {})
map('n', '<C-x>', '[[:bd<CR>]]', {})
map('n', '<Tab>', [[:bn<CR>]], {})
map('n', '<S-Tab>', [[:bp<CR>]], {})


-- For Resizing Split
map('n', '<C-Down>', [[:resize +3<CR>]], {})
map('n', '<C-Up>', [[:resize -3<CR>]], {})
map('n', '<C-Right>', [[:vertical resize +3<CR>]], {})
map('n', '<C-Left>', [[:vertical resize -3<CR>]], {})
--map('n', '<leader>th', [[<C-w>t<C-w>h<CR>]], {})
--map('n', '<leader>tk', [[<C-w>t<C-w>k<CR>]], {})

