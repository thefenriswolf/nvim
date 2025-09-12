return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = true,
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "c",
      "lua",
      "vim",
      "vimdoc",
      "query",
      "elixir",
      "heex",
      "javascript",
      "html",
    },
    highlight = { enable = true },
    indent = { enable = true },
  },
}
