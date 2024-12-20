return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        stylelint_lsp = {
          settings = {
            stylelintplus = {
              autoFixOnSave = true,
              autoFixOnFormat = true,
              -- other settings...
            },
          },
        },
        cssls = {},
        -- ruby_ls = {
        --   -- 如果需要自定義設置
        --   settings = {
        --     formatter = "none", -- 關閉 ruby-ls 的格式化，交給 rubocop 處理
        --   },
        -- },
        rubocop = {
          mason = false,
          cmd = { "rubocop-lsp" }, -- 使用 rubocop-lsp 命令
        },
        solargraph = {
          mason = false,
          settings = {
            diagnostics = false, -- 關閉 solargraph 的診斷，讓 rubocop 處理
            formatting = false, -- 關閉 solargraph 的格式化，讓 rubocop 處理
          },
        },
        pylsp = {
          settings = {
            pylsp = {
              plugins = {
                -- formatter options
                black = { enabled = true },
                autopep8 = { enabled = false },
                yapf = { enabled = false },

                -- linter options
                --pylint = { enabled = true, executable = "pylint" },
                pyflakes = { enabled = true },
                pycodestyle = { enabled = false },

                -- type checker
                pylsp_mypy = { enabled = false },

                -- auto-completion options
                jedi_completion = { fuzzy = true },

                -- import sorting
                pyls_isort = { enabled = true },
              },
            },
          },
        },
      },
    },
  },
}
