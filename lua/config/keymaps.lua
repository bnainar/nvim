-- jk to Esc
-- Insert Mode bindings won't work for VSCode insert mode
vim.keymap.set({ 'i', 'v' }, 'jk', '<Esc>');
vim.keymap.set({ 'i', 'v' }, 'kj', '<Esc>');

-- Ctrl-S to :w
vim.keymap.set({ 'i', 'v', 'n' }, '<C-s>', '<cmd>w<CR>');

if vim.g.vscode then
    vim.keymap.set({ 'x', 'n', 'o' }, 'gc', '<Plug>VSCodeCommentary');
    vim.keymap.set('n', 'gcc', '<Plug>VSCodeCommentaryLine');
end
