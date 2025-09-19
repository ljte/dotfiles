return {
  "simrat39/symbols-outline.nvim",

  config = function()
    require("symbols-outline").setup({
      highlight_hovered_items = true,
      show_symbol_detail = true,
    })

    vim.keymap.set("n", "<leader>o", ":SymbolsOutline<CR>")
  end
}
