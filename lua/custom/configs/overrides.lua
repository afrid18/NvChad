local M = {}

M.treesitter = {
  ensure_installed = {
    "c",
    "cpp",
    "css",
    "go",
    "html",
    "javascript",
    "lua",
    "markdown",
    "markdown_inline",
    "tsx",
    "typescript",
    "vim",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      -- init_selection = "<CR>",
      -- scope_incremental = "<CR>",
      node_incremental = "<TAB>",
      node_decremental = "<S-TAB>",
    },
  },
}

M.mason = {
  ensure_installed = {
    -- Python
    "black",
    "flake8",
    "mypy",
    "pyright",
    "ruff",

    -- go
    "gopls",

    -- markdown
    "marksman",

    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.nvimtsautotag = {
  ft = {
    "astro",
    "glimmer",
    "gohtmltmpl",
    "gotexttmpl",
    "gotmpl",
    "handlebars",
    "hbs",
    "html",
    "javascript",
    "javascriptreact",
    "jsx",
    "markdown",
    "php",
    "rescript",
    "svelte",
    "tsx",
    "typescript",
    "typescriptreact",
    "vue",
    "xml",
  },
  skip_tags = {
    "area",
    "base",
    "br",
    "col",
    "command",
    "embed",
    "hr",
    "img",
    "input",
    "keygen",
    "link",
    "meta",
    "param",
    "slot",
    "source",
    "track",
    "wbr",
    "menuitem",
  },
}

return M
