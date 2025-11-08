return {
  {
    "andymass/vim-matchup",
    event = "BufReadPost",
    opts = {
      treesitter = {
        enable = true,
        stopline = 500,
      },
      enable = true,
      enable_quotes = true,
    },
    init = function()
      vim.g.matchup_treesitter_stopline = 500
    end,
  },
}