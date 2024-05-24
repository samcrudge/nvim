-- ~/.config/nvim/lua/plugins/zenmode.lua
return {
    "folke/zen-mode.nvim",
    config = function()
        require("zen-mode").setup({
            window = {
                backdrop = 0.95, -- Opacity of the background (0.95 means 95% opaque)
                width = 80, -- Width of the Zen window
                height = 1, -- Height of the Zen window (as a percentage of the total height)
                options = {
                    signcolumn = "no", -- Disable sign column
                    number = false, -- Disable line numbers
                    relativenumber = false, -- Disable relative line numbers
                    cursorline = false, -- Disable cursor line
                    cursorcolumn = false, -- Disable cursor column
                    foldcolumn = "0", -- Disable fold column
                    list = false, -- Disable whitespace characters
                },
            },
            plugins = {
                options = {
                    enabled = true,
                    ruler = false, -- Disable the ruler text in command line area
                    showcmd = false, -- Disable the command in the last line of the screen
                },
                twilight = { enabled = true }, -- Enable Twilight (another plugin) for dimming inactive portions of the code
                gitsigns = { enabled = false }, -- Disable git signs
                tmux = { enabled = false }, -- Disable the tmux status line
            },
        })
    end,
}
