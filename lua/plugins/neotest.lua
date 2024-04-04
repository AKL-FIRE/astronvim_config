return {
  "nvim-neotest/neotest",
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
