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
    dependencies = { "hrsh7th/cmp-nvim-lsp" },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local servers = {
        "lua_ls",
        "gopls",
        "cssls",
        "bashls",
        "html",
        "ts_ls",
        "tailwindcss",
        "jsonls",
        "sqlls",
        "marksman",
        "yamlls",
        "eslint",
      }

      for _, server in ipairs(servers) do
        vim.lsp.config(server, { capabilities = capabilities })
      end

      vim.lsp.config("emmet_language_server", {
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

      vim.lsp.enable(vim.list_extend(servers, { "emmet_language_server" }))

      -- Key Bindings using LSPSaga
      vim.keymap.set("n", "K", function()
        local cursor = vim.api.nvim_win_get_cursor(0)
        local line, col = cursor[1] - 1, cursor[2]
        local diagnostics = vim.diagnostic.get(0, { lnum = line })
        for _, d in ipairs(diagnostics) do
          if col >= d.col and col < d.end_col then
            vim.cmd("Lspsaga show_line_diagnostics")
            return
          end
        end
        vim.cmd("Lspsaga hover_doc")
      end)
      vim.keymap.set("n", "gd", "<cmd>Lspsaga goto_definition<CR>")
      vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>")
      vim.keymap.set("n", "gr", "<cmd>Lspsaga finder<CR>")
      vim.keymap.set("n", "gp", "<cmd>Lspsaga peek_definition<CR>")
      vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>")
    end,
  },
}
