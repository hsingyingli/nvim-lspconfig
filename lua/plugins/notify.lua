return {
  {
    "rcarriga/nvim-notify",
    keys = {
      {
        "<leader>un",
        function()
          require("notify").dismiss({ silent = true, pending = true })
        end,
        desc = "Dismiss all Notifications",
      },
    },
    opts = {
      background_colour = "#000000",
      timeout = 2000,
      max_height = function()
        return math.floor(vim.o.lines * 0.40)
      end,
      max_width = function()
        return math.floor(vim.o.columns * 0.35)
      end,
      on_open = function(win)
        vim.api.nvim_win_set_config(win, { zindex = 100 })
      end,
    },
    init = function()
      -- when noice is not enabled, install notify on VeryLazy
    end,
  },
}
