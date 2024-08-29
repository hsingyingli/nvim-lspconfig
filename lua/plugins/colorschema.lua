-- return {
--   "folke/tokyonight.nvim",
--   lazy = true,
--   opts = {
--     style = "night",
--     styles = {
--       -- Style to be applied to different syntax groups
--       -- Value is any valid attr-list value for `:help nvim_set_hl`
--       comments = { italic = false },
--       keywords = { italic = false },
--       functions = {},
--       variables = {},
--       -- Background styles. Can be "dark", "transparent" or "normal"
--       sidebars = "dark", -- style for sidebars, see below
--       floats = "dark", -- style for floating windows
--     },
--   },
-- }
return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = {
      flavour = "auto", -- latte, frappe, macchiato, mocha
      background = { -- :h background
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false, -- disables setting the background color.
      show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
      term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
      dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
      },
      no_italic = true, -- Force no italic
      no_bold = true, -- Force no bold
      no_underline = true, -- Force no underline
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = {}, -- Change the style of comments
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
      },
      color_overrides = {},
      custom_highlights = {},
      default_integrations = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
-- return {
--   {
--     "Mofiqul/dracula.nvim",
--     lazy = true,
--     priority = 1000,
--     opts = function()
--       return {
--         -- customize dracula color palette
--         colors = {
--           bg = "#282A36",
--           fg = "#F8F8F2",
--           selection = "#44475A",
--           comment = "#6272A4",
--           red = "#FF5555",
--           orange = "#FFB86C",
--           yellow = "#F1FA8C",
--           green = "#50fa7b",
--           purple = "#BD93F9",
--           cyan = "#8BE9FD",
--           pink = "#FF79C6",
--           bright_red = "#FF6E6E",
--           bright_green = "#69FF94",
--           bright_yellow = "#FFFFA5",
--           bright_blue = "#D6ACFF",
--           bright_magenta = "#FF92DF",
--           bright_cyan = "#A4FFFF",
--           bright_white = "#FFFFFF",
--           menu = "#21222C",
--           visual = "#3E4452",
--           gutter_fg = "#4B5263",
--           nontext = "#3B4048",
--           white = "#ABB2BF",
--           black = "#191A21",
--         },
--         -- show the '~' characters after the end of buffers
--         show_end_of_buffer = true, -- default false
--         -- use transparent background
--         transparent_bg = true, -- default false
--         -- set custom lualine background color
--         lualine_bg_color = "#44475a", -- default nil
--         -- set italic comment
--         italic_comment = false, -- default false
--         -- overrides the default highlights with table see `:h synIDattr`
--         -- You can use overrides as table like this
--         -- overrides = {
--         --   NonText = { fg = "white" }, -- set NonText fg to white
--         --   NvimTreeIndentMarker = { link = "NonText" }, -- link to NonText highlight
--         --   Nothing = {} -- clear highlight of Nothing
--         -- },
--         -- Or you can also use it like a function to get color from theme
--         overrides = function(colors)
--           return {
--             --NonText = { fg = colors.white }, -- set NonText fg to white of theme
--             Special = { fg = colors.green, italic = false },
--             SpecialComment = { fg = colors.comment, italic = false },
--             Todo = { fg = colors.purple, bold = true, italic = false },
--             ["@type.builtin"] = { fg = colors.cyan, italic = false },
--             ["@text.emphasis"] = { fg = colors.yellow, italic = false }, -- italic
--             ["@text.uri"] = { fg = colors.yellow, italic = false }, -- urls
--             htmlItalic = { fg = colors.purple, italic = false },
--             BufferInactive = { fg = colors.comment, bg = colors.black, italic = false },
--             BufferInactiveIndex = { fg = colors.nontext, bg = colors.black, italic = false },
--             BufferInactiveMod = { fg = colors.yellow, bg = colors.black, italic = false },
--             BufferInactiveSign = { fg = colors.nontext, bg = colors.black, italic = false },
--             AlphaFooter = { fg = colors.purple, italic = false },
--           }
--         end,
--       }
--     end,
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "dracula-soft",
--     },
--   },
-- }
