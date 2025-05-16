-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  -- init = function()
  --   vim.g.lualine_laststatus = vim.o.laststatus
  --   if vim.fn.argc(-1) > 0 then
  --     -- set an empty statusline till lualine loads
  --     vim.o.statusline = " "
  --   else
  --     -- hide the statusline on the starter page
  --     vim.o.laststatus = 0
  --   end
  -- end,

  opts = function()
    -- PERF: we don't need this lualine require madness 🤷
    local lualine_require = require("lualine_require")
    lualine_require.require = require

    local colors = {
      blue = "#8aadf4",
      cyan = "#8bd5ca",
      black = "#24273a",
      grey = "#5b6078",
      red = "#ed8796",
      violet = "#c6a0f6",
      white = "#cad3f5",
    }

    local bubbles_theme = {
      normal = {
        a = { fg = colors.black, bg = colors.violet },
        b = { fg = colors.white, bg = colors.grey },
        c = { fg = colors.white, bg = colors.black },
      },

      insert = { a = { fg = colors.black, bg = colors.blue } },
      visual = { a = { fg = colors.black, bg = colors.cyan } },
      replace = { a = { fg = colors.black, bg = colors.red } },

      inactive = {
        a = { fg = colors.white, bg = colors.black },
        b = { fg = colors.white, bg = colors.black },
        c = { fg = colors.white, bg = colors.black },
      },
    }

    local opts = {
      options = {
        theme = bubbles_theme,
        component_separators = "",
        section_separators = { left = "", right = "" },
        always_show_tabline = false,
      },
      sections = {
        lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
        lualine_b = { "filename", "branch" },
        lualine_c = {
          "%=", --[[ add your center components here in place of this comment ]]
        },
        lualine_x = {},
        lualine_y = { "filetype", "progress" },
        lualine_z = {
          { "location", separator = { right = "" }, left_padding = 2 },
        },
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
    }

    -- do not add trouble symbols if aerial is enabled
    -- And allow it to be overriden for some buffer types (see autocmds)
    -- if vim.g.trouble_lualine and LazyVim.has("trouble.nvim") then
    --   local trouble = require("trouble")
    --   local symbols = trouble.statusline({
    --     mode = "symbols",
    --     groups = {},
    --     title = false,
    --     filter = { range = true },
    --     format = "{kind_icon}{symbol.name:Normal}",
    --     hl_group = "lualine_c_normal",
    --   })
    --   table.insert(opts.sections.lualine_c, {
    --     symbols and symbols.get,
    --     cond = function()
    --       return vim.b.trouble_lualine ~= false and symbols.has()
    --     end,
    --   })
    -- end

    return opts
  end,
}
