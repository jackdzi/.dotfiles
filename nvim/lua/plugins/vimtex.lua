return {
  "lervag/vimtex",
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.

    vim.g.vimtex_fold_enabled = 1
    vim.g.vimtex_view_method = "zathura"
    vim.g.vimtex_fold_types = {
      sections = {
        parse_levels = 0,
        sections = {
          "%(add)?part",
          "%(chapter|addchap)",
          "%(section|addsec)",
          "subsection",
          "subsubsection",
          "qs",
        },
      },
    }
    vim.g.vimtex_quickfix_ignore_filters = {
      "Missing character: There is no",
      "LaTeX Font Warning: Font shape",
      "LaTeX Font Warning: Some font",
      "Package hyperref Warning: Token not allowed",
    }
  end,
}
