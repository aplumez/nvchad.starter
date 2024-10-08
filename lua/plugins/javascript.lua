return {
  {
    "pangloss/vim-javascript",
    ft = { "javascript" },
    config = function()
      vim.g["javascript_plugin_jsdoc"] = 1
    end,
  },
  {
    "jonsmithers/vim-html-template-literals",
    ft = { "javascript" },
  },
}
