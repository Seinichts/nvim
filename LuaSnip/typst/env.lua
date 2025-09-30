local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep
local line_begin = require("luasnip.extras.expand_conditions").line_begin
local tex = require("util.latex")
local get_visual = function(args, parent)
  if #parent.snippet.env.SELECT_RAW > 0 then
    return sn(nil, t(parent.snippet.env.SELECT_RAW))
  else -- If SELECT_RAW is empty, return a blank insert node
    return sn(nil, i(1))
  end
end

return {
  s(
    { trig = "mk", snippetType = "autosnippet" },
    fmta(
      [[
      $<>$
      ]],
      {
        i(1),
      }
    ),
    { condition = tex.in_text }
  ),
  s(
    { trig = "dm", snippetType = "autosnippet" },
    fmta(
      [[
      $
      <>
      $
      ]],
      {
        i(1),
      }
    ),
    { condition = tex.in_text }
  ),
  s(
    { trig = "#thm", snippetType = "autosnippet" },
    fmta(
      [[
      #theorem(<>)[
        <>
      ]
      ]],
      {
        i(1),
        i(0),
      }
    ),
    { condition = line_begin }
  ),
  s(
    { trig = "#pf", snippetType = "autosnippet" },
    fmta(
      [[
      #proof[
        <>
      ]
      ]],
      {
        i(0),
      }
    ),
    { condition = tex.in_text }
  ),
  s(
    { trig = "#def", snippetType = "autosnippet" },
    fmta(
      [[
      #definition(<>)[
        <>
      ]
      ]],
      {
        i(1),
        i(0),
      }
    ),
    { condition = line_begin }
  ),
  s(
    { trig = "#exa", snippetType = "autosnippet" },
    fmta(
      [[
      #example[
        <>
      ]
      ]],
      {
        i(0),
      }
    ),
    { condition = line_begin }
  )
}
