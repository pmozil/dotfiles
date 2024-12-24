require("conform").formatters["clang-format"] = {
    command = "clang-format",
    prepend_args = { "-style=file:" .. os.getenv("HOME") .. "/.config/clang-format/conf" },
    -- prepend_args = { "-style=file:~/.config/clang-format/conf" },
}

require("conform").setup({
    formatters_by_ft = {
        python = { "isort", "black" },
        c = { "clang-format" },
        cpp = { "clang-format" },
        sh = { "shfmt" },
        zig = { "zig fmt" },
    },

    format_after_save = {
        lsp_fallback = false,
        async = true,
        timeout_ms = 500,
    },
})
