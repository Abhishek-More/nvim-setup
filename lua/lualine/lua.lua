require("lualine").setup{
  options = {
    theme = 'palenight',
    section_separators = '',
    component_separators = ''
  },
  sections = {
    lualine_c = {
      {'filename'}, 
      --{'diagnostics', sources = {'nvim_lsp'}, color = {fg = '#c792ea', bg = "#000000", gui = 'style'}}
    },
    lualine_x = {},
  }
}
