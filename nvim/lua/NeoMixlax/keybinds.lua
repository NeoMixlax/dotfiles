local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

--------------------
--Vanilla Keymaps --
--------------------

-- Fix * (Keep the cursor position, don't move to next match)
map('n', '*', '*N')

-- Fix n and N. Keeping cursor in center
map('n', 'n', 'nzz')
map('n', 'N', 'Nzz')

-- leader-o/O inserts blank line below/above
map('n', '<leader>O', 'O<ESC>')
map('n', '<leader>o', 'o<ESC>')

-- Move line up and down in NORMAL and VISUAL modes
-- Reference: https://vim.fandom.com/wiki/Moving_lines_up_or_down
map('n', '<C-j>', '<CMD>move .+1<CR>')
map('n', '<C-k>', '<CMD>move .-2<CR>')
map('x', '<C-j>', ":move '>+1<CR>gv=gv")
map('x', '<C-k>', ":move '<-2<CR>gv=gv")

-- Use operator pending mode to visually select the whole buffer
-- e.g. dA = delete buffer ALL, yA = copy whole buffer ALL
map('o', 'A', ':<C-U>normal! mzggVG<CR>`z')
map('x', 'A', ':<C-U>normal! ggVG<CR>')

---------------------
-- Plugins Keymaps --
---------------------

map('n', '<leader>e', '<CMD>NvimTreeToggle<CR>')
