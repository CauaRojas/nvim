--
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")
    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.6",
        -- or                            , branch = '0.1.x',
        requires = { { "nvim-lua/plenary.nvim" } },
    })
    use("navarasu/onedark.nvim")
    use({ "nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" } })
    use("mbbill/undotree")
    use({
        "VonHeikemen/lsp-zero.nvim",
        requires = {
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },
            { "neovim/nvim-lspconfig" },
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "L3MON4D3/LuaSnip" },
        },
    })
    use({"windwp/nvim-ts-autotag"})
    use({
        "OlegGulevskyy/better-ts-errors.nvim",
        requires = {
            { "MunifTanjim/nui.nvim" },
        },
    })
    use({ "nvimtools/none-ls.nvim" })
    use({ "nvim-lua/plenary.nvim" })
    --    use({ "github/copilot.vim" })
    --   use({ "CopilotC-Nvim/CopilotChat.nvim" })
    use("nvim-tree/nvim-web-devicons")
    use("nvim-tree/nvim-tree.lua")
    use({
        "nvimdev/dashboard-nvim",
        event = "VimEnter",
        config = function()
            require("dashboard").setup({
                -- config
            })
        end,
        requires = { "nvim-tree/nvim-web-devicons" },
    })
    use({
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true },
    })
    use("norcalli/nvim-colorizer.lua")
    use({
        "akinsho/toggleterm.nvim",
        tag = "*",
        config = function()
            require("toggleterm").setup()
        end,
    })
    use("andweeb/presence.nvim")
    use("archibate/lualine-time")
    use({
        "olrtg/nvim-emmet",
        config = function()
            vim.keymap.set({ "n", "v" }, "<leader>ww", require("nvim-emmet").wrap_with_abbreviation)
        end,
    })
    use({
        "supermaven-inc/supermaven-nvim",
        config = function()
            require("supermaven-nvim").setup({})
        end,
    })
end)
