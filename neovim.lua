return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#2F3138", -- Default background
                base01 = "#737373", -- Lighter background (status bars)
                base02 = "#A06E6E", -- Selection background
                base03 = "#737373", -- Comments, invisibles
                base04 = "#C7C6C1", -- Dark foreground
                base05 = "#C7C6C1", -- Default foreground
                base06 = "#C7C6C1", -- Light foreground
                base07 = "#C7C6C1", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#A06E6E", -- Variables, errors, red
                base09 = "#A06E6E", -- Integers, constants, orange
                base0A = "#D9C8B7", -- Classes, types, yellow
                base0B = "#8A8F6B", -- Strings, green
                base0C = "#6E91C8", -- Support, regex, cyan
                base0D = "#4A5A70", -- Functions, keywords, blue
                base0E = "#5F5FBF", -- Keywords, storage, magenta
                base0F = "#D9C8B7", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
