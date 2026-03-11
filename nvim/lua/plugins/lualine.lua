-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",

  config = function()
    local lualine = require("lualine")

    local palettes = {
      everforest = {
        accent  = "#83C092",
        black   = "#272E33",
        bg      = "#2E383C",
        grey    = "#7A8478",
        fg      = "#D3C6AA",
        fg_dim  = "#7A8478",
        insert  = "#D699B6",
        visual  = "#7FBBB3",
        replace = "#E67E80",
        command = "#DBBC7F",
      },
      phosphor = {
        accent  = "#5EC45E",
        black   = "#0C1A0C",
        bg      = "#111F11",
        grey    = "#466046",
        fg      = "#AECAAE",
        fg_dim  = "#789878",
        insert  = "#C440A0",
        visual  = "#2EC4C8",
        replace = "#D84E90",
        command = "#CC7444",
      },
    }

    local function recording_status()
      local reg = vim.fn.reg_recording()
      if reg ~= "" then
        return "Recording @" .. reg
      end
      return ""
    end

    local function build_theme(p)
      return {
        normal = {
          a = { fg = p.black,  bg = p.accent },
          b = { fg = p.fg,     bg = p.bg },
          c = { fg = p.fg_dim, bg = p.black },
          x = { fg = p.black,  bg = p.accent },
        },
        insert  = { a = { fg = p.black, bg = p.insert } },
        visual  = { a = { fg = p.black, bg = p.visual } },
        replace = { a = { fg = p.black, bg = p.replace } },
        command = { a = { fg = p.black, bg = p.command } },
        inactive = {
          a = { fg = p.grey, bg = p.black },
          b = { fg = p.grey, bg = p.black },
          c = { fg = p.grey, bg = p.black },
        },
      }
    end

    local function setup()
      local p = palettes[vim.g.colors_name] or palettes.everforest
      lualine.setup({
        options = {
          theme = build_theme(p),
          disabled_filetypes = { statusline = { "snacks_dashboard" } },
          component_separators = "",
          section_separators = { left = "", right = "" },
          always_show_tabline = false,
        },
        sections = {
          lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
          lualine_b = { "filename", "branch" },
          lualine_c = { "%=" },
          lualine_x = { { recording_status, separator = { left = "" }, right_padding = 2 } },
          lualine_y = { "filetype", "progress" },
          lualine_z = { { "location", separator = { right = "" }, left_padding = 2 } },
        },
        inactive_sections = {
          lualine_a = { "filename" },
          lualine_b = {},
          lualine_c = {},
          lualine_x = {},
          lualine_y = {},
          lualine_z = { "location" },
        },
        tabline = {},
        extensions = {},
      })
    end

    setup()

    vim.api.nvim_create_autocmd("ColorScheme", { callback = setup })
  end,
}
