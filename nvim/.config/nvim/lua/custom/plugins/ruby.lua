return {
  {
    "adam12/ruby-lsp.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    config = function()
      require("ruby-lsp").setup({})
    end,
  },
}
