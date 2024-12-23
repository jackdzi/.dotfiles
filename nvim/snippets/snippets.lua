local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

local function box_top(args)
  local text = args[1][1] -- Get the text from the first node
  local width = #text + 2
  return "┌" .. string.rep("─", width) .. "┐"
end

local function box_bottom(args)
  local text = args[1][1]
  local width = #text + 2
  return "└" .. string.rep("─", width) .. "┘"
end

ls.add_snippets("all", {
  s("box", {
    f(box_top, { 1 }),
    t({ "", "│ " }),
    i(1),
    t({ " │", "" }),
    f(box_bottom, { 1 }),
    i(0),
  }),
})

ls.add_snippets("tex", {
  s("cont", {
    t({ "\\begin{center}", "  {\\small cont. on next page}" }),
    t({ "", "\\end{center}" }),
  }),
})

ls.add_snippets("tex", {
  s("algorithm", {
    t({
      "\\begin{algorithm}[h]",
      "{\\small",
      "\\LinesNumbered",
      "\\KwIn{}",
      "\\KwOut{}",
      "\\vspace{0.1in}",
      "",
      "\\Return{}\\;",
      "  \\caption{{\\bf name}}",
      "}",
      "\\end{algorithm}",
    }),
  }),
})

ls.add_snippets("all", {
  s("textemp", {
    t({
      "\\documentclass[a4paper,10pt]{article}",
      "\\usepackage[utf8]{inputenc}",
      "\\newcommand{\\myparagraph}[1]{\\paragraph{#1}\\mbox{}\\\\}",
      "\\usepackage[a4paper,margin=3.5cm]{geometry} %Sets the page geometry",
      "\\usepackage{url}",
      "\\usepackage{dirtytalk}",
      "\\usepackage{graphicx} % Package for \\includegraphics",
      "\\usepackage{wrapfig} % Figure wrapping",
      "\\usepackage[T1]{fontenc} % Output font encoding for international characters",
      "\\setlength{\\parskip}{1em} % Set space when paragraphs are used",
      "\\usepackage{amssymb}",
      "\\usepackage{amsmath}",
      "\\usepackage{tcolorbox}",
      "\\usepackage{mathtools}",
      "\\usepackage{stmaryrd}",
      "",
      "% Lets you use \\blankpage to make a blank page",
      "\\newcommand{\\blankpage}{",
      "\\newpage",
      "\\thispagestyle{empty}",
      "\\mbox{}",
      "\\newpage",
      "}",
      "",
      "% Self Explanatory",
      "\\newtheorem{theorem}{Theorem}[section]",
      "\\newtheorem{definition}{Definition}[section]",
      "\\newtheorem{corollary}{Corollary}[theorem]",
      "\\newtheorem{lemma}[theorem]{Lemma}",
      "\\newtheorem{proof}{Proof}[section]",
      "",
      "% Other",
      "\\DeclarePairedDelimiter\\floor{\\lfloor}{\\rfloor} %Floor function",
      "",
      "\\begin{document}",
      "    \\begin{titlepage}",
      "    \\begin{center}",
      "        \\vspace*{3cm}",
      "",
      "        \\Huge",
      "        \\textbf{",
    }),
    i(1, "Class"),
    t({ "}", "", "        \\vspace{0.5cm}", "        \\LARGE", "        " }),
    i(2, "______"),
    t({
      "",
      "        \\vspace{1.5cm}",
      "",
      "        \\textbf{Jack Dzialo}",
      "",
      "        \\vfill",
      "",
      "    \\end{center}",
      "\\end{titlepage}",
      "",
      "\\end{document}",
    }),
  }),
})

ls.add_snippets("all", {
  s("rmdtemp", {
    t({
      "---",
      "title: '______'",
      "author: 'Jack Dzialo'",
      "date: '`r Sys.Date()`'",
      "output:",
      "  pdf_document: default",
      "  html_document:",
      "    highlight: tango",
      "urlcolor: blue",
      "---",
    }),
  }),
})

ls.add_snippets("all", {
  s("qmdtemp", {
    t({
      "---",
      'title: ""',
      'author: "Jack Dzialo"',
      'date: "`r Sys.Date()`"',
      "format: pdf",
      "pdf: default",
      "html: default",
      "pdf-engine: pdflatex",
      "editor: visual",
      "fontsize: 10pt",
      "geometry: margin=1in",
      "toc: false",
      "toc-depth: 2",
      "---",
      "```{r setup, include=FALSE}",
      "knitr::opts_chunk$set(echo = TRUE)",
      "```",
    }),
  }),
})
