return {
  {
    "lervag/vimtex",
    lazy = false,
    init = function()
      vim.g.vimtex_compiler_method = "latexmk"

      -- vim.g.vimtex_view_method = "general"
      -- vim.g.vimtex_view_general_viewer = "/usr/bin/atril"
      -- vim.g.vimtex_view_general_options = "--synctex-forward @line:@col:@tex @pdf"

      vim.g.vimtex_view_method = "general"
      vim.g.vimtex_view_general_viewer = "atril"
      vim.g.vimtex_view_general_options = "@pdf"

      vim.g.vimtex_toc_autoclose = 0
    end,
  },
}

