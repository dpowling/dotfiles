return {
  "akinsho/bufferline.nvim",
  opts = function()
    local colorscheme = vim.g.colors_name or "default"

    if colorscheme:match("catppuccin") then
      return {
        highlights = require("catppuccin.groups.integrations.bufferline").get(),
      }
    elseif colorscheme:match("gruvbox") then
      return {
        highlights = require("gruvbox").bufferline and require("gruvbox").bufferline() or {},
      }
    else
      return {}
    end
  end,
}
