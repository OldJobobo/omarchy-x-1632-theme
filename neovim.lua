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
                base01 = "#8C8B86", -- Lighter background (status bars)
                base02 = "#A06E6E", -- Selection background
                base03 = "#8C8B86", -- Comments, invisibles
                base04 = "#C7C6C1", -- Dark foreground
                base05 = "#CBCAC6", -- Default foreground
                base06 = "#E3E4E0", -- Light foreground
                base07 = "#E3E4E0", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#A07D7D", -- Variables, errors, red
                base09 = "#AF8D8D", -- Integers, constants, orange
                base0A = "#D6C8BA", -- Classes, types, yellow
                base0B = "#8B8E76", -- Strings, green
                base0C = "#7F99C1", -- Support, regex, cyan
                base0D = "#7F8DA1", -- Functions, keywords, blue
                base0E = "#8383C3", -- Keywords, storage, magenta
                base0F = "#E2D7CC", -- Deprecated, brown/yellow
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
