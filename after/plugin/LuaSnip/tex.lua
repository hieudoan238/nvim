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

\usepackage{graphicx}
\usepackage{listings}
\usepackage{xcolor}

\definecolor{codegreen}{rgb}{0,0.5,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

\lstdefinestyle{mystyle}{
backgroundcolor=\color{backcolour},   
commentstyle=\color{codegreen},
keywordstyle=\color{magenta},
numberstyle=\tiny\color{codegray},
stringstyle=\color{codepurple},
basicstyle=\ttfamily\footnotesize,
breakatwhitespace=false,         
breaklines=true,                 
captionpos=b,                    
keepspaces=true,                 
numbers=left,                    
numbersep=5pt,                  
showspaces=false,                
showstringspaces=false,
showtabs=false,                  
tabsize=2
}
\lstset{style=mystyle}






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
s({trig="env",dscr="begin env at will"},
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
  ),
    {condition = line_begin}
),
}
