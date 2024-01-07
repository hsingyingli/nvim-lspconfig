return {
  {
    "nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
      { "roobert/tailwindcss-colorizer-cmp.nvim", config = true },
    },
    opts = function(_, opts)
      table.insert(opts.sources, { name = "emoji" })
    end,
  },
}
