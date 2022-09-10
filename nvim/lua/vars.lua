--[[ vars.lua ]]

local g = vim.g
g.t_co = 256
g.background = "dark"

-- Update the packpath
local packer_path = vim.fn.stdpath('config') .. '/site'
vim.o.packpath = vim.o.packpath .. ',' .. packer_path


-- Multi cursor
vim.cmd([[
    let g:multi_cursor_use_default_mapping = 0
    let g:multi_cursor_start_word_key      = '<C-k>'
    let g:multi_cursor_select_all_word_key = '<A-k>'
    let g:multi_cursor_start_key           = 'g<C-k>'
    let g:multi_cursor_select_all_key      = 'g<A-k>'
    let g:multi_cursor_next_key            = '<C-k>'
    let g:multi_cursor_prev_key            = '<C-k>'
    let g:multi_cursor_skip_key            = '<C-x>'
    let g:multi_cursor_quit_key            = '<Esc>'
]])
