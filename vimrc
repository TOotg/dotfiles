" Load pathogen and plugins.
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

:set expandtab
:set tabstop=2
:set shiftwidth=2
:set background=dark
:colorscheme default

autocmd Filetype sh setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

syntax enable
filetype plugin indent on

set undofile   " Maintain undo history between sessions.
set undodir=~/.vim/undodir " Dir for undo history.

" Highlighting for Portal Sass and XHtml Haml templates (see lib/alces/action_view/templates.rb).
au BufReadPost *.pscss set syntax=scss
au BufReadPost *.xhaml set syntax=haml

" Function to make enter toggle highlighting - from http://vim.wikia.com/wiki/Highlight_all_search_pattern_matches
let g:highlighting = 0
function! Highlighting()
  if g:highlighting == 1 && @/ =~ '^\\<'.expand('<cword>').'\\>$'
    let g:highlighting = 0
    return ":silent nohlsearch\<CR>"
  endif
  let @/ = '\<'.expand('<cword>').'\>'
  let g:highlighting = 1
  return ":silent set hlsearch\<CR>"
endfunction
nnoremap <silent> <expr> <CR> Highlighting()

