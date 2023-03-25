local icons = require "user.icons"

require('neorg').setup {
  load = {
    ["core.defaults"] = {}, -- Loads default behaviour
    ["core.norg.concealer"] = {
      config = {
        icons = {
          todo = {
            -- uncertain = { icon = icons.kind.Event },
            -- urgent = { icon = icons.kind.Event },
          },
        },
      },
    }, -- Adds pretty icons to your documents
    ["core.norg.dirman"] = { -- Manages Neorg workspaces
    config = {
      workspaces = {
        notes = "~/neorg/notes/",
      },
      default_workspace = "notes",
    },
  },
},
        }
