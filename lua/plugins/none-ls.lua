-- Customize None-ls sources

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- go
      null_ls.builtins.diagnostics.golangci_lint.with {
        timeout = 180000,
        method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
        extra_args = function(_)
          local relative_path = require("utils").get_buf_parent_directory_relative_path()
          return { relative_path }
        end,
      },

      -- clang-format
      null_ls.builtins.formatting.clang_format.with {
        filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
      },

      -- refactory
      null_ls.builtins.code_actions.refactoring,
    }
    return config -- return final config table
  end,
}
