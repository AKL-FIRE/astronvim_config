-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- lsp pack
  { import = "astrocommunity.pack.lua" },
  vim.fn.executable "go" == 1 and { import = "astrocommunity.pack.go" } or {},
  vim.fn.executable "thriftgo" == 1 and { import = "astrocommunity.pack.thrift" } or {},
  vim.fn.executable "npm" == 1 and { import = "astrocommunity.pack.html-css" } or {},
  vim.fn.executable "npm" == 1 and { import = "astrocommunity.pack.tailwindcss" } or {},
  vim.fn.executable "npm" == 1 and { import = "astrocommunity.pack.typescript" } or {},
  vim.fn.executable "npm" == 1 and { import = "astrocommunity.pack.json" } or {},
  vim.fn.executable "npm" == 1 and { import = "astrocommunity.pack.yaml" } or {},
  vim.fn.executable "npm" == 1 and { import = "astrocommunity.pack.prisma" } or {},
  (vim.fn.executable "python" == 1 or vim.fn.executable "python3" == 1) and { import = "astrocommunity.pack.python" }
    or {},
  (vim.fn.executable "gcc" == 1 or vim.fn.executable "clang" == 1) and { import = "astrocommunity.pack.cpp" } or {},
  vim.fn.executable "cmake" == 1 and { import = "astrocommunity.pack.cmake" } or {},
  vim.fn.executable "rustc" == 1 and { import = "astrocommunity.pack.rust" } or {},
  vim.fn.executable "bash" == 1 and { import = "astrocommunity.pack.bash" } or {},

  -- editting
  { import = "astrocommunity.editing-support.nvim-devdocs" },

  -- cmp
  { import = "astrocommunity.completion.cmp-cmdline" },
  { import = "astrocommunity.completion.copilot-cmp" },

  -- spectre
  { import = "astrocommunity.search.nvim-spectre" },

  -- code-runner
  { import = "astrocommunity.code-runner.compiler-nvim" },

  -- motion
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.motion.flash-nvim" },
  {
    "folke/flash.nvim",
    keys = nil,
  },

  -- lsp
  { import = "astrocommunity.lsp.actions-preview-nvim" },
  { import = "astrocommunity.lsp.lsplinks-nvim" },

  -- utility
  { import = "astrocommunity.utility.telescope-live-grep-args-nvim" },
  { import = "astrocommunity.utility.noice-nvim" },
  {
    "folke/noice.nvim",
    opts = {
      routes = {
        {
          filter = {
            event = "msg_show",
            any = {
              { find = "%d+L, %d+B" },
              { find = "; after #%d+" },
              { find = "; before #%d+" },
            },
          },
          view = "mini",
        },
        { filter = { event = "msg_show", find = "AutoSave: saved at%s" }, opts = { skip = true } },
        { filter = { event = "notify", find = "No information available" }, opts = { skip = true } },
      },
    },
  },
}
