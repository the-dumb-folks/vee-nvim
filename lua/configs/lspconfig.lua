local config = require("nvchad.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")
local util = require "lspconfig/util"
lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "python" },
})
lspconfig.hyprls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  name = "hyprlang",
  cmd = { "hyprls" },
}
-- require("flutter-tools").setup {
--   lsp = {
--     on_attach = on_attach,
--     capabilities = capabilities,
--     filetypes = { "dart" },
--   }
-- }
-- lspconfig.tsserver.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   init_options = {
--     preferences = {
--       disableSuggestions = true,
--     }
--   },
--   commands = {
--     OrganizeImports = {
--       organize_imports,
--       description = "Organize Imports",
--     }
--   }
-- }
lspconfig.ols.setup({})
lspconfig.lua_ls.setup {}
-- lspconfig.tsserver.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
-- }
lspconfig.ts_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
lspconfig.prismals.setup {}
lspconfig.neocmake.setup {}
-- lspconfig.cmake.setup{}
lspconfig.dartls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "dart" },
}

lspconfig.astro.setup {}
lspconfig.clangd.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
lspconfig.zls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "zls" },
}
lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
}
lspconfig.tailwindcss.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
lspconfig.eslint.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.rust_analyzer.setup {
  settings = {
    ["rust-analyzer"] = {
      -- Other Settings ...
      procMacro = {
        ignored = {
          leptos_macro = {
            -- optional: --
            -- "component",
            "server",
          },
        },
      },
    },
  }
}
