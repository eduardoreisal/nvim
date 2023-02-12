local fmt = require("luasnip.extras.fmt").fmt

local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets('lua', {
  s('var', fmt('local {} = {}', {
    i(1),
    i(2)
  }))
})

local num1 = 100
