local function read_vim_open_count()
    local count_file = vim.fn.stdpath("config") .. "/vim_open_count.txt"
    local count = tonumber(vim.fn.readfile(count_file)[1])
    return count or 0
end

local function write_vim_open_count(count)
    local count_file = vim.fn.stdpath("config") .. "/vim_open_count.txt"
    vim.fn.writefile({ tostring(count) }, count_file)
end

local vim_open_count = read_vim_open_count() + 1
write_vim_open_count(vim_open_count)

return {
    "glepnir/dashboard-nvim",
    event = "VimEnter",
    config = function()
        local db = require("dashboard")
        db.custom_header = {
            "",
            " ███╗   ██╗██╗   ██╗██╗███╗   ███╗",
            " ████╗  ██║██║   ██║██║████╗ ████║",
            " ██╔██╗ ██║██║   ██║██║██╔████╔██║",
            " ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
            " ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
            " ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
            "",
            "           [ Neovim ]",
            "",
        }
        db.custom_center = {
            { icon = "  ", desc = "Recent Files  ", action = "Telescope oldfiles", shortcut = "SPC f r" },
            { icon = "  ", desc = "Find File     ", action = "Telescope find_files", shortcut = "SPC f f" },
            { icon = "  ", desc = "Find Text     ", action = "Telescope live_grep", shortcut = "SPC f t" },
            { icon = "  ", desc = "Recent Projects", action = "Telescope projects", shortcut = "SPC p r" },
            { icon = "  ", desc = "Open Config   ", action = "edit ~/.config/nvim/init.lua", shortcut = "SPC f c" },
        }
        db.custom_footer = {
            " ",
            " " .. os.date("%Y-%m-%d %H:%M:%S"),
            " Vim has been opened " .. vim_open_count .. " times!",
            "https://neovim.io",
        }
    end,
    dependencies = { "nvim-tree/nvim-web-devicons" },
}
