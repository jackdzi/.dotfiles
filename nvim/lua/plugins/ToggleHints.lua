return {
  vim.api.nvim_create_user_command("Th", function()
    require("clangd_extensions.inlay_hints").toggle_inlay_hints()
  end, {}),
}
