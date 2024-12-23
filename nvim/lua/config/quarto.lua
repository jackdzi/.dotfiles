return {
    "quarto-dev/quarto-nvim",
      opts = {
      debug = false,
      closePreviewOnExit = true,
      lspFeatures = {
        enabled = false,
        chunks = "curly",
        languages = { "r", "python" },
        diagnostics = {
          enabled = false,
        },
        completion = {
          enabled = true,
        },
      },
      write_to_disk = true,
      codeRunner = {
        enabled = true,
        default_method = 'molten', -- 'molten' or 'slime'
        ft_runners = {python = 'molten'}, -- filetype to runner, ie. `{ python = "molten" }`.
        -- Takes precedence over `default_method`
        never_run = { "yaml" }, -- filetypes which are never sent to a code runner
      },
  }
}
