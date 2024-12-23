-- bootstrap lazy.nvim, LazyVim and your plugins
--
vim.opt.wrap = true
vim.opt.guifont = { "JetBrains Mono:h10" }
vim.g.neovide_remember_window_size = true
vim.api.nvim_set_hl(0, "Conceal", { fg = "#ebdbb2"})
vim.g.python3_host_prog=vim.fn.expand("~/.virtualenvs/neovim/bin/python3")


require("config.lazy")
