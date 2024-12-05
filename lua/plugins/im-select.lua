if require("utils").get_os() == "mac" then
  ---@type LazySpec
  return {
    "keaising/im-select.nvim",
    event = "User AstroFile",
    opts = {},
  }
else
  return {}
end
