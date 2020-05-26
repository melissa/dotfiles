set ruler
set number
set list
set smartindent
set autoindent

" Shows syntax highlighting
syntax on

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
highlight ExtraWhitespace ctermbg=red guibg=red
" Show trailing whitespace:
match ExtraWhitespace /\s\+$/

" Show trailing whitespace and spaces before a tab:
match ExtraWhitespace /\s\+$\| \+\ze\t/

" Show tabs that are not at the start of a line:
match ExtraWhitespace /[^\t]\zs\t\+/

" Show spaces used for indenting (so you use only tabs for indenting).
match ExtraWhitespace /^\t*\zs \+/

" Switch off :match highlighting.
match

match ExtraWhitespace /\s\+\%#\@<!$/


set expandtab
set tabstop=2
set shiftwidth=2
set listchars=tab:»·,trail:·
highlight SpecialKey ctermbg=red guibg=red
set smartindent

"indentation matching for =>
filetype plugin indent on

" Vim jumps to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

map Q gqap
