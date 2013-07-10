set shiftwidth=2
set expandtab
set ruler
" Displays line numbers
set number

" Allows the use of plugins
set nocompatible
filetype plugin on

filetype indent on

" Shows syntax highlighting
syntax on

" Highlights trailing whitespace
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
if version >= 702
  " Use :call clearmatches() to clear these matches.
  " Give an indicator when we approach col 80 (>72)
  " au BufWinEnter * let w:m1=matchadd('Search', '\%<81v.\%>72v', -1)
  " Give a strong indicator when we exceed col 80(>80)
  " au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
  " Give an indicator of tailing white space.
  au BufWinEnter * let w:m3=matchadd('ErrorMsg', '\s\+$', -1)
  " Give an indicator of spaces before a tab.
  au BufWinEnter * let w:m4=matchadd('ErrorMsg', ' \+\ze\t', -1)
  " Give an indicator of tabs before a space.
  au BufWinEnter * let w:m5=matchadd('ErrorMsg', '\t\+\ze ', -1)
  " Just highlight all tabs.  They're annoying.
  au BufWinEnter * let w:m6=matchadd('ErrorMsg', '\t\+', -1)
end


" Prevents use of arrow keys for navegation
"noremap <Up> <Nop>
"noremap <Down> <Nop>
"noremap <Left> <Nop>
"noremap <Right> <Nop>

set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2

" Set up puppet manifest and spec options
au BufRead,BufNewFile *.pp
  \ set filetype=puppet
au BufRead,BufNewFile *_spec.rb
  \ nmap <F8> :!rspec --color %<CR>

"indentation matching for =>
filetype plugin indent on
