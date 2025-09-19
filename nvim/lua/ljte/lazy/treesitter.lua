return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {
	"lua", "python", "elixir", "eex", "heex"
      },
      sync_install = false,
      highlight = { enabled = true },
      indent = { enabled = true },
    })
  end
}
