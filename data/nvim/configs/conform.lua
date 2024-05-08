require("conform").formatters["clang-format"] = {
    command = "clang-gormat",
    prepend_args = { "-style=file:" .. os.getenv("HOME") .. "/.config/clang-format/conf" },
}

require("conform").setup({
    formatters_by_ft = {
        python = { "isort", "black" },
        c = { "clang-format" },
        cpp = { "clang-format" },
        sh = { "shfmt" },
    },
    format_on_save = {
        lsp_fallback = false,
        async = true,
        timeout_ms = 500,
    },
})
