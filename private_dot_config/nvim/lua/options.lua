local opt = vim.opt  -- to set options

local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.cmd[[colorscheme dracula]]

local indent = 2
opt.completeopt = {'menuone', 'noinsert', 'noselect'}
opt.shiftwidth = indent
opt.tabstop = indent
opt.number = true
opt.termguicolors = true

map('n', '<leader>ff', '<cmd>lua require(\'telescope.builtin\').find_files()<cr>')
map('n', '<leader>fg', '<cmd>lua require(\'telescope.builtin\').live_grep()<cr>')
map('n', '<leader>fb', '<cmd>lua require(\'telescope.builtin\').buffers()<cr>')
map('n', '<leader>fh', '<cmd>lua require(\'telescope.builtin\').help_tags()<cr>')

-- C/C++ key mappings
map('n', '<leader>cx', '<cmd>! cmake -Sall --preset=release<cr>')
map('n', '<leader>cd', '<cmd>! cmake -Sall --preset=debug<cr>')
map('n', '<leader>cv', '<cmd>! cmake --build build -j4<cr>')

-- Rust key mappings
map('n', '<leader>rt', '<cmd>! cargo build<cr>')
map('n', '<leader>rr', '<cmd>! cargo run<cr>')
