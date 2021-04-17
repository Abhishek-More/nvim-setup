-- load plugins
require("pluginsList.lua")
require("web-devicons.lua")

require("utils.lua")
require("nvimTree.lua")
require("bufferline.lua")
require("lualine.lua")
require("telescope-nvim.lua")
require("quickscope.lua")

-- lsp
require("nvim-lspconfig.lua")
require("nvim-compe.lua")

require("gitsigns.lua")

require "colorizer".setup()

local cmd = vim.cmd
local g = vim.g
local indent = 2

cmd "colorscheme base16-onedark"
cmd "syntax enable"
cmd "syntax on"

g.auto_save = 1
g.indentLine_enabled = 1
g.indentLine_char_list = {"▏"}

g.mapleader = " "

require("treesitter.lua")
require("mappings.lua")

--Discord Rich Presence
require('presence.lua')


-- highlights
cmd("hi LineNr guibg=NONE")
cmd("hi SignColumn guibg=NONE")
cmd("hi VertSplit guibg=NONE")
cmd("hi DiffAdd guifg=#c792ea guibg = none")
cmd("hi DiffChange guifg=#c792ea guibg = none")
cmd("hi DiffModified guifg=#c792ea guibg = none")

cmd("hi TelescopeBorder   guifg=#3e4451")
cmd("hi TelescopePromptBorder   guifg=#3e4451")
cmd("hi TelescopeResultsBorder  guifg=#3e4451")
cmd("hi TelescopePreviewBorder  guifg=#525865")
cmd("hi PmenuSel  guibg=#98c379")

-- tree folder name , icon color
cmd("hi NvimTreeFolderIcon guifg = #61afef")
cmd("hi NvimTreeFolderName guifg = #61afef")
cmd("hi NvimTreeIndentMarker guifg=#545862")

cmd("hi Normal guibg=NONE ctermbg=NONE")

require("nvim-autopairs").setup()

require("lspkind").init(
    {
        File = " "
    }
)

cmd("hi CustomExplorerBg guibg=#242830")
vim.cmd(":set relativenumber")

vim.api.nvim_exec(
    [[
augroup NvimTree 
  au!
  au FileType NvimTree setlocal winhighlight=Normal:CustomExplorerBg
 augroup END
 ]],
    false
)


