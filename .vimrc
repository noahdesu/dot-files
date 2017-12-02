set guioptions-=m
set guioptions-=T
set guioptions-=r

filetype plugin indent on

let mapleader = ","

colorscheme base16-default-dark

" leave insert mode
" TODO: remap capslock to ctrl?
:imap <C-L> <Esc>

set conceallevel=2

"set nofoldenable

" markdown
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_folding_level = 2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fzf
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:fzf_colors = {
  \ 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" see: https://github.com/junegunn/fzf.vim#commands
nmap ; :Buffers<CR>
nmap <Leader>t :Files<CR>
