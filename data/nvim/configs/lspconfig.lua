-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
    html = {},
    clangd = {
    },
    rust_analyzer = {},
    bashls = {},
    tsserver = {},
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

local configs = require "nvchad.configs.lspconfig"

for name, opts in pairs(servers) do
    opts.on_init = configs.on_init
    opts.on_attach = configs.on_attach
    opts.capabilities = configs.capabilities

    require("lspconfig")[name].setup(opts)
end
