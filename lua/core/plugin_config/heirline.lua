local conditions = require("heirline.conditions")

local colors = {
    bg      = "#000000",
    fg      = "#ff9000",
    dfg     = "#4d2b00",
    hl      = "#444444",
    purple  = "#8787ff",
    white   = "#ffffff",
    blue    = "#87d7ff",
    gray    = "#eaecef",
    green   = "#87ff91",
    dgreen  = "#1b331d",
    red     = "#ff5f62",
    yellow  = "#e9ff81",
    dyellow = "#2f331d",
    dgray   = "#666666",
    none    = "NONE"
}


local static = {
    mode_cols = {
        N = colors.fg,
        n = colors.dfg,
        I = colors.green,
        i = colors.dgreen,
        V = colors.yellow,
        v = colors.dyellow,
        C = colors.fg,
        c = colors.dfg
    }
}


local Mode = {
    init = function(self)
        self.mode = vim.fn.mode(1)
    end,
    provider = function(self)
        return " " .. string.upper(self.mode) .. " "
    end,
    hl = function(self)
        return { fg = colors.bg,
        bg = static.mode_cols[string.upper(self.mode:sub(1,1))],
        bold = true }
    end,
    update = {
        "ModeChanged",
        pattern = "*:*",
        callback = vim.schedule_wrap(function()
            vim.cmd("redrawstatus")
        end),
    }
}


local Navic = {
    condition = function () return require("nvim-navic").is_available() end,
    provider = function ()
        return " " .. require("nvim-navic").get_location() .. " "
    end,
    hl = { fg = colors.fg, bg = colors.dfg },
    update = {'CursorMoved', 'ModeChanged'}
}


local FileIcon = {
    init = function(self)
        self.icon = require("nvim-web-devicons").get_icon(vim.api.nvim_buf_get_name(0), vim.bo.filetype, { default = true})
        self.fn = vim.api.nvim_buf_get_name(0)
        self.mode = vim.fn.mode(1)
    end,
    provider = function(self)
        return  " " .. self.icon .. " " .. self.fn .. " "
    end,
    hl = function(self)
        return { fg = static.mode_cols[string.upper(self.mode:sub(1,1))],
        bg = static.mode_cols[string.lower(self.mode:sub(1,1))],
        bold = true }
    end
}


local ruler = {
    init = function (self)
        self.mode = vim.fn.mode(1)
        self.ft = vim.bo.filetype
    end,
    provider = function (self)
       return "%=[" .. self.ft .. "] %7(%l/%3L%):%2c %P"
    end,
    hl = function (self)
        return { fg = static.mode_cols[string.lower(self.mode:sub(1,1))],
        bg = static.mode_cols[string.upper(self.mode:sub(1,1))],
        bold = true }
    end
}



local ending = {
    init = function(self)
        self.mode = vim.fn.mode(1)
        self.width = vim.api.nvim_win_get_width(0)
    end,
    provider = function (self)
       return ""
    end,
    hl = function(self)
        return { fg = static.mode_cols[string.upper(self.mode:sub(1,1))],
        bg = colors.bg,
        bold = true}
    end
}

local StatusLine = {Mode, FileIcon, ruler, ending}
local WinBar = {Navic}
local TabLine = {}

require('heirline').setup({
    statusline = StatusLine,
    winbar = WinBar,
    tabline = TabLine,
    opts = { disable_winbar_cb = false }
})
