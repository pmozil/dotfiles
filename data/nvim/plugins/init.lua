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
      opts = {
          diagnostics = {
              virtual_text = false,
              signs = false,
          },
      },
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
            vim.lsp.config(name, opts)
        end
      end,
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "lua-language-server", "stylua",
                "html-lsp", "css-lsp" , "prettier",
                "clangd", "pyright", "zls"
            },
        },
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vim", "lua", "vimdoc",
                "html", "css", "cpp", "zig"
            },
        },
    },
}
