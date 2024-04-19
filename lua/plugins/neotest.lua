return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = function(_, opts)
    local opt = {
      adapters = {
        require "neotest-go" {
          args = { "-count=1", "-timeout=60s" },
        },
      },
    }
    return require("astrocore").extend_tbl(opts, opt)
  end,
}
