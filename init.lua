local config = {
  colorscheme = "tokyonight",
  mappings = require "user.core.mappings",
  plugins = {
    init = {
      {
        "folke/tokyonight.nvim",
        as = "tokyonight"
      },
    },
  },
  polish = function()
    require "user.core.autocmds"
  end,
}

require "user.core.options"

return config
