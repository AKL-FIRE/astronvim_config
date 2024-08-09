if require("utils").get_os() == "mac" then
  return {
    "keaising/im-select.nvim",
    event = "User AstroFile",
    config = function() require("im_select").setup {} end,
  }
else
  return {}
end
