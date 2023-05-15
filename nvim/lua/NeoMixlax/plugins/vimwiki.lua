local l = {}
l.path = '$HOME/Documentos/the-great-crows-dinasty'
l.syntax = 'markdown'
l.ext = '.md'
vim.g.vimwiki_list = { l }

-- Mapping for timestamp entries
local tscmd = '<CMD>VimwikiMakeDiaryNote<CR>Go<ESC>o- <c-r>=strftime("%H:%M")<cr><ESC>o'
vim.keymap.set('n', '<leader>w<leader>w', tscmd, { noremap = true, silent = true })


