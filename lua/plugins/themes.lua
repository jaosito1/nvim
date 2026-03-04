return {
    {
        "vague2k/vague.nvim",
        lazy = false,
        opts = {
            transparent = false,
        },
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        opts = {
            styles = {
                transparency = true,
            },
            palette = {
                main = {
                    base = "#000000",
                },
            },
        },
    },
    {
        "aktersnurra/no-clown-fiesta.nvim",
        config = function()
            require("no-clown-fiesta").setup({
                theme = "dark", -- supported themes are: dark, dim, light
                transparent = true, -- Enable this to disable the bg color
            })
        end,
    },
    {
        "oskarnurm/koda.nvim",
        config = function()
            require("koda").setup({ transparent = true })
        end,
    }
}
