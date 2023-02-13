local fmt = require("luasnip.extras.fmt").fmt

local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local func = ls.function_node

local date = function() return {os.date('%d-%m-%Y')} end

ls.add_snippets(nil, {
  all = {
    s({
      trig = "date",
      namr = "Date",
      dscr = "Date in the form of DD-MM-YYYY"
    }, {
      func(date, {}),
    }),
  },
})

ls.add_snippets('lua', {
  s('req', fmt("local {} = require('{}')", {
    i(1), i(2)
  }))
})

ls.add_snippets('python', {
  s('def', fmt('def {}({}): \n\t{}', {
    i(1),
    i(2),
    i(3)
  }))
})

ls.add_snippets('python', {
  s('class', fmt('class {}({}): \n\t def __init__(self,{}): \n\t\t{}', {
    i(1),
    i(2),
    i(3),
    i(4)
  }))
})

