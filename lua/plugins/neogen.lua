return {
  {
    "danymat/neogen",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    keys = {
      {
        "nc",
        function()
          require("neogen").generate({ type = "class" })
        end,
        desc = "Neogen class",
      },
      {
        "nf",
        function()
          require("neogen").generate({ type = "func" })
        end,
        desc = "Neogen function",
      },
    },
    opts = { snippet_engine = "luasnip" },
  },
}
