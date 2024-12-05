return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<leader>bD"] = {
            function()
              require("astronvim.utils.status").heirline.buffer_picker(
                function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
              )
            end,
            desc = "Pick to close",
          },
          -- tables with the `name` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          -- quick save
          -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

          -- overseer
          ["<leader>X"] = { desc = " " .. "Task" },
          ["<leader>Xr"] = { "<cmd>:OverseerRun<cr>", desc = "Run task" },
          ["<leader>Xt"] = { "<cmd>:OverseerToggle<cr>", desc = "Toggle task log" },

          -- compiler
          ["<leader>Xx"] = { "<cmd>:CompilerOpen<cr>", desc = "Open code runner" },

          -- dap
          ["<leader>dl"] = { "<cmd>:DapLoadLaunchJSON<cr>", desc = "Load launch.json" },

          -- telescope search with parameters
          ["<leader>fg"] = {
            "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
            desc = "Find words with parameters",
          },
          ["grr"] = { "<cmd>:Telescope lsp_references<cr>", desc = "find symbols references" },
          ["gI"] = { "<cmd>:Telescope lsp_implementations<cr>", desc = "find symbols implementations" },

          -- flash
          ["<leader>j"] = {
            function() require("flash").jump() end,
            desc = "Flash",
          },
        },
      },
    },
  },
}
