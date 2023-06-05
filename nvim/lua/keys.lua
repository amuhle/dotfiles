--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'jk', '', {})

-- Toggle nvim-tree
map('n', '<C-n>', ":NvimTreeToggle <CR>", {})

-- Toggle more plugins
vim.keymap.set('n', '<leader><leader>', require('telescope.builtin').find_files, { desc = 'Search Files' })
vim.keymap.set('n', '<leader>f',       require('telescope.builtin').live_grep,  { desc = 'Search by Grep' })
vim.keymap.set('n', '<leader>sh',       require('telescope.builtin').help_tags,  { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw',       require('telescope.builtin').grep_string,  { desc = '[S]earch current [w]ord' })
vim.keymap.set('n', '<leader>sd',       require('telescope.builtin').diagnostics,  { desc = '[S]earch current [w]ord' })
vim.keymap.set('n', '<leader>sb',       require('telescope.builtin').buffers,  { desc = '[S]earch existing [B]uffers' })

vim.cmd([[
    command WQ wq
    command Wq wq
    command W w
    command Q q
    command Qa qa
]])

-- Vim inspector
vim.cmd([[
    nmap <F5> <cmd>call vimspector#Launch()<cr>
    nmap <F6> <cmd>call vimspector#Continue()<cr>
    nmap <F8> <cmd>call vimspector#Reset()<cr>
    nmap <F9> <cmd>call vimspector#StepInto()<cr>
    nmap <F10> <cmd>call vimspector#StepOver()<cr>
    nmap <F12> <cmd>call vimspector#StepOut()<cr>
]])

map('n', "Db", ":call vimspector#ToggleBreakpoint()<cr>", {})
map('n', "Dw", ":call vimspector#AddWatch()<cr>", {})
map('n', "De", ":call vimspector#Evaluate()<cr>", {})

-- Code navigation shortcuts
vim.cmd([[
    nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
    nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
    nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
    nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
    nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
    nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
    nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
    nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
    nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
]])

-- Change directory
map('n', '<leader>cd', ":cd %:p:h<CR>:pwd<CR>", {})

