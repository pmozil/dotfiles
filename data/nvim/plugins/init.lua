return {
    {
        "stevearc/conform.nvim",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require "configs.conform"
        end,
    },

    -- These are some examples, uncomment them if you want to see them work!
    {
      "neovim/nvim-lspconfig",
      config = function()
        local on_attach = require("nvchad.configs.lspconfig").on_attach
        local on_init = require("nvchad.configs.lspconfig").on_init
        local capabilities = require("nvchad.configs.lspconfig").capabilities

        local servers = {
            html = {},
            zls = {},
            clangd = {},
            rust_analyzer = {},
            bashls = {},
            pyright = {
                settings = {
                    python = {
                        analysis = {
                            autoSearchPaths = true,
                            typeCheckingMode = "basic",
                        },
                    },
                },
            },
        }

        for name, opts in pairs(servers) do
            opts.on_init = on_init
            opts.on_attach = on_attach
            opts.capabilities = capabilities
            require("lspconfig")[name].setup(opts)
        end
      end,
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "lua-language-server", "stylua",
                "html-lsp", "css-lsp" , "prettier",
                "clangd", "pyright"
            },
        },
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vim", "lua", "vimdoc",
                "html", "css"
            },
        },
    },
}
