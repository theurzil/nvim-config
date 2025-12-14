
# My Neovim Config

> Special thanks to [@typecraft_dev](https://x.com/typecraft_dev) for the inspiration and insights that made this configuration possible.

![Neovim Home Screen](https://raw.githubusercontent.com/theurzil/nvim-config/refs/heads/master/.github/screeshots/Screenshots.png?token=GHSAT0AAAAAACR7ZOYLFTZ7P2BK5NLFQGZUZYBUYAA)

This is my personal [Neovim](https://neovim.io/) configuration, designed for a smooth and efficient coding experience. It's built using [lazy](http://www.lazyvim.org/) with a focus on Git integration, LSP support, and a sleek appearance using the [Poimandres](https://github.com/olivercederborg/poimandres.nvim) color scheme.

## Installation

1. Backup your existing Neovim configuration:
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   ```

2. Clone this repository:
   ```bash
   git clone https://github.com/theurzil/nvim-config.git ~/.config/nvim
   ```

3. Start Neovim and let it install the plugins:
   ```bash
   nvim
   ```

## Features

### Git Integration
- [vim-fugitive](https://github.com/tpope/vim-fugitive): Git wrapper
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim): Git decorations

### LSP Support
- [mason.nvim](https://github.com/williamboman/mason.nvim): Package manager for LSP servers, DAP servers, linters, and formatters
- [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim): Extension for mason.nvim and nvim-lspconfig
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig): Configurations for Nvim LSP

### Formatting and Linting
- [none-ls.nvim](https://github.com/nvimtools/none-ls.nvim): Use Neovim as a language server to inject LSP diagnostics, code actions, and more

### Appearance
- [poimandres.nvim](https://github.com/olivercederborg/poimandres.nvim): Minimal, dark Neovim theme

### Other Plugins
- [alpha.lua](https://github.com/goolord/alpha-nvim): A fast and fully customizable greeter for Neovim
- [completions.lua](https://github.com/hrsh7th/nvim-cmp): A completion plugin for Neovim coded in Lua
- [indent-blankline.lua](https://github.com/lukas-reineke/indent-blankline.nvim): Indent guides for Neovim
- [lualine.lua](https://github.com/nvim-lualine/lualine.nvim): A blazing fast and easy to configure Neovim statusline
- [neo-tree.lua](https://github.com/nvim-neo-tree/neo-tree.nvim): Neovim plugin to manage the file system and other tree-like structures
- [telescope.lua](https://github.com/nvim-telescope/telescope.nvim): Find, Filter, Preview, Pick. All lua, all the time
- [treesitter.lua](https://github.com/nvim-treesitter/nvim-treesitter): Nvim Treesitter configurations and abstraction layer

## Installed LSP Servers

- lua_ls
- gopls
- cssls
- bashls
- html
- tsserver
- tailwindcss
- vuels
- jsonls

## Key Mappings

- `<leader>gp`: Preview Git hunk
- `<leader>gt`: Toggle Git blame for current line
- `K`: Hover information
- `gd`: Go to definition
- `<leader>ca`: Code action
- `<leader>gf`: Format buffer

## Customization

Feel free to fork this repository and customize the configuration to your liking. The modular structure in the `lua/plugins` directory makes it easy to add, remove, or modify plugins.

## License

This Neovim configuration is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).

