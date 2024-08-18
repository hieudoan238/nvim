local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

return {
s({trig="tt", dscr="Expands 'tt' into '\texttt{}'"},
  fmta(
    "\\texttt{<>}",
    { i(1) }
  )
),


-- \frac
s({trig="frac", dscr="Expands 'ff' into '\frac{}{}'"},
  fmt(
    "\\frac{<>}{<>}",
    {
      i(1),
      i(2)
    },
    {delimiters = "<>"}   )
),
-- Equation
s({trig="eq", dscr="Expands 'eq' into an equation environment"},
  fmta(
     [[
       \begin{equation*}
           <>
       \end{equation*}
     ]],
     { i(1) }
  )
),
s({trig=';texinit',dscr='boilerplate start'},
  fmta(
     [[
      \documentclass[12pt]{<>}
      \usepackage{graphicx}


      \title{<>}
      \author{Eish}
      \date{<>}

      \begin{document}
      \maketitle
      <>
      \end{document}

     ]],
     { i(1),
      i(2),
      i(3),
      i(4)}
  )
),
s({trig="env",dscr="begin env at will",snippetType='autosnippet' },
  fmta(
    [[
      \begin{<>}
          <>
      \end{<>}
    ]],
    {
      i(1),
      i(2),
      rep(1),  -- this node repeats insert node i(1)
    }
  )
),
}
