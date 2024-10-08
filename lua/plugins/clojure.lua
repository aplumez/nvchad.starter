local ft_clojure = { "clojure" }

return {
  {
    "Olical/conjure",
    ft = ft_clojure,
    dependencies = {
      {
        "PaterJason/cmp-conjure",
        config = function()
          local cmp = require "cmp"
          local config = cmp.get_config()
          table.insert(config.sources, {
            name = "buffer",
            option = {
              sources = {
                { name = "conjure" },
              },
            },
          })
          cmp.setup(config)
        end,
      },
    },
    config = function(_, _)
      require("conjure.main").main()
      require("conjure.mapping")["on-filetype"]()
    end,
  },
  {
    "eraserhd/parinfer-rust",
    build = "cargo build --release",
    ft = ft_clojure,
  },
  {
    "guns/vim-sexp",
    ft = ft_clojure,
  },
  {
    "tpope/vim-repeat",
    ft = ft_clojure,
  },
  {
    "tpope/vim-surround",
    ft = ft_clojure,
  },
  {
    "tpope/vim-sexp-mappings-for-regular-people",
    ft = ft_clojure,
  },
  {
    "clojure-vim/vim-jack-in",
    ft = ft_clojure,
    cmd = { "Clj", "Lein", "Boot" },
  },
}
