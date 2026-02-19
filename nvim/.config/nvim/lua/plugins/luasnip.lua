return {
  "L3MON4D3/LuaSnip",
  opts = function()
    -- Load snippets from Lua files only
    require("luasnip.loaders.from_lua").lazy_load({
      paths = vim.fn.stdpath("config") .. "/lua/snippets",
    })
  end,
}
