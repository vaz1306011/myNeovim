return {
  "folke/flash.nvim",
  vscode = true,
  keys = {
    { "S", mode = { "n", "x", "o" }, false },
  },
  config = function(_, opts)
    require("flash").setup(opts)
  end,
}
