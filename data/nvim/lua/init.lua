require('lspconfig-config')
require('lualine-config')
require('nvim-tree-config')
require('diagnostics')
require('nvim-cmp-config')
require('tokyonight')
require('mason').setup()
require('toggleterm').setup()
require('mason-lspconfig').setup()

require('Comment').setup({
    ignore = '^$',
    toggler = {
        line = '<leader>/',
        block = '<leader>/',
    },
    opleader = {
        line = '<leader>/',
        block = '<leade/>/',
    },
})


require('nvim-treesitter.configs').setup {
  ensure_installed = { 'c', 'lua', 'vim', 'vimdoc', 'query' },
  sync_install = false,
  auto_install = true,
  ignore_install = { 'javascript' },

  highlight = {
    enable = true,
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,
    additional_vim_regex_highlighting = false,
  },
}

-- vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
--     pattern = { '*.c', '*.cpp', '*.h', '*.hpp', '*.cu', '*.glsl' },
--     desc = 'Auto-format c/cpp/cuda files after saving',
--     callback = function()
--         local fileName = vim.api.nvim_buf_get_name(0)
--         vim.cmd(':silent !clang-format -i -style=llvm ' .. fileName)
--     end,
--     group = autocmd_group,
-- })

vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
    pattern = { '*.py' },
    desc = 'Auto-format python files after saving',
    callback = function()
        local fileName = vim.api.nvim_buf_get_name(0)
        vim.cmd(':silent !black ' .. fileName)
    end,
    group = autocmd_group,
})
