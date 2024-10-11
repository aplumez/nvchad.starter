local opts = require("nvchad.configs.cmp")

local cmp_ok, cmp = pcall(require, "cmp")

if cmp_ok then
  -- opts.mapping["<CR>"] = cmp.mapping.confirm {
  --   behavior = cmp.ConfirmBehavior.Insert,
  --   select = true,
  -- }
  -- opts.mapping["<Tab>"] = cmp.mapping.select_next_item {}
end

return opts
