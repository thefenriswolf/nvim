return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  enabled = true,
  dependencies = {
    -- completion engine
    { "saghen/blink.cmp" },
    -- LSP status updates
    { "j-hui/fidget.nvim", opts = {} },
    {
      "folke/lazydev.nvim",
      ft = "lua", -- only load on lua files
      opts = {
        inlay_hints = { enabled = true },
        library = {
          -- See the configuration section for more details
          -- Load luvit types when the `vim.uv` word is found
          { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        },
      },
    },
  },
  config = function()
    vim.lsp.config("gopls", {
      root_markers = { "go.mod", ".git" },
      cmd = { "gopls" },
    })
    vim.lsp.enable("gopls", true)
  end,
}
