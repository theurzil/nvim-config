return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "gopls",
          "cssls",
          "bashls",
          "html",
          "ts_ls",
          "tailwindcss",
          "volar",
          "jsonls",
          "sqlls",
          "marksman",
          "yamlls",
          "eslint",
          "emmet_language_server",
        },
      })
    end,
  },
  {
    "nvimdev/lspsaga.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("lspsaga").setup({
        ui = {
          border = "rounded",
          title = true,
        },
        hover = {
          max_width = 0.6,
          max_height = 0.6,
          open_link = "gx",
          open_cmd = "!chrome",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")

      -- Setup all LSP servers
      local servers = {
        "lua_ls",
        "gopls",
        "cssls",
        "bashls",
        "html",
        "ts_ls",
        "tailwindcss",
        "volar",
        "jsonls",
        "sqlls",
        "marksman",
        "yamlls",
        "eslint",
      }

      for _, server in ipairs(servers) do
        lspconfig[server].setup({
          capabilities = capabilities,
        })
      end

      -- Emmet: separate setup with filetypes
      lspconfig.emmet_language_server.setup({
        capabilities = capabilities,
        filetypes = {
          "html",
          "css",
          "scss",
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
          "vue",
          "astro",
          "xml",
        },
      })

      -- Key Bindings using LSPSaga
      vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>")
      vim.keymap.set("n", "gd", "<cmd>Lspsaga goto_definition<CR>")
      vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>")
      vim.keymap.set("n", "gr", "<cmd>Lspsaga finder<CR>")
      vim.keymap.set("n", "gp", "<cmd>Lspsaga peek_definition<CR>")
      vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>")
    end,
  },
}
