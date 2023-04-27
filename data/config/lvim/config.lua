--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

lvim.builtin.project.manual_mode = true
vim.opt.mouse = ""
vim.opt.autoread = true
vim.opt.ignorecase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.tabstop = 8
vim.opt.softtabstop = 8
vim.opt.ts = 4
vim.opt.sw = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true

-- vim.cmd("source $HOME/.config/nvim/nvim_init.vim")

-- general
lvim.log.level = "warn"
lvim.format_on_save.enabled = true

-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "`"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<C-c>"] = ":noh<cr>"
lvim.keys.normal_mode["<leader>o"] = ":fzf <return>"
lvim.keys.normal_mode["<leader>e"] = ":goyo <return>"
lvim.keys.normal_mode["<leader>d"] = ":nerdtree <return>"
lvim.keys.normal_mode["<leader>t"] = ":toggleterm <return>"
lvim.keys.normal_mode["<leader>t"] = ":toggletermtoggleall <return>"
lvim.keys.normal_mode["<space>"] = "/"
lvim.keys.normal_mode["<C-c>"] = ":noh <Return>"
lvim.keys.normal_mode["<C-j>"] = "<C-W>j"
lvim.keys.normal_mode["<C-k>"] = "<C-W>k"
lvim.keys.normal_mode["<C-h>"] = "<C-W>h"
lvim.keys.normal_mode["<C-l>"] = "<C-W>l"

lvim.keys.insert_mode["<C-H>"] = "<C-W>"

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "right"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true
lvim.builtin.treesitter.highlight.enable = false

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    { command = "black", filetypes = { "python" }, extra_args = { "--line-length", "80" } },
    { command = "isort", filetypes = { "python" } },
    {
        -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
        command = "prettier",
        ---@usage arguments to pass to the formatter
        -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
        extra_args = { "--print-with", "80" },
        ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
        filetypes = { "typescript", "typescriptreact" },
    },
    {
        command = "clang-format",
        filetypes = { "c", "cpp", "java" },
        extra_args = { "-style", "{BasedOnStyle: LLVM, IndentWidth: 4, TabWidth: 4, ColumnLimit: 80}" },
    }
}

-- set additional linters
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
    { command = "flake8", filetypes = { "python" } },
    {
        -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
        command = "shellcheck",
        ---@usage arguments to pass to the formatter
        -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
        extra_args = { "--severity", "warning" },
    },
    {
        command = "codespell",
        ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
        filetypes = { "javascript", "python" },
    },

}

lvim.plugins = {
    { 'junegunn/goyo.vim' },
    { 'karb94/neoscroll.nvim' },
    { 'chrisbra/unicode.vim' },
    { 'junegunn/fzf' },
    { 'tikhomirov/vim-glsl' },
}

require("toggleterm").setup {
    size = function(term)
        if term.direction == "horizontal" then
            return 20
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
        end
    end,
}
