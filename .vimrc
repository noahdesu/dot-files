" TODO
"  - copy cli commands from markdown files into tmux windows
"
set nocompatible

set guioptions-=m
set guioptions-=T
set guioptions-=r

filetype plugin indent on
syntax on

set background=dark
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

let g:gitgutter_override_sign_column_highlight = 0
highlight SignColumn ctermbg=black
highlight GitGutterAdd ctermbg=black ctermfg=green
highlight GitGutterChange ctermbg=black ctermfg=yellow
highlight GitGutterDelete ctermbg=black ctermfg=red
highlight GitGutterChangeDelete ctermbg=black ctermfg=red
let g:gitgutter_sign_added = '∙'
let g:gitgutter_sign_modified = '∙'
let g:gitgutter_sign_removed = '∙'
let g:gitgutter_sign_modified_removed = '∙'

set textwidth=80

set conceallevel=2

set updatetime=250
let mapleader = ","
set nofoldenable

" leave insert mode
" TODO: remap capslock to ctrl?
:imap <C-L> <Esc>

" markdown
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_folding_level = 2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fzf
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=/usr/local/opt/fzf " for Homebrew
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

" notes
nmap <Leader>n :Files ~/src/notes/<CR>

set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent

set cinoptions=g1,h1

set number
