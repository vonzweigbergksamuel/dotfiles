local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("sv", {
    t({
      '<script lang="ts">',
      "\t",
      "</script>",
      "",
      "",
      "<div>",
      "",
      "</div>",
    }),
    i(0),
  }),
}
