require("lualine").setup{
  options = {
    theme = 'palenight',
    section_separators = '',
    component_separators = ''
  },
  sections = {
    lualine_c = {
      {'filename'}, 
      {'diagnostics', sources = {'nvim_lsp'}}
    },
    lualine_x = {},
  }
}
