set ruler
set number
set list
set smartindent
set autoindent

color jellybeans

" Allows the use of plugins
set nocompatible
filetype plugin on
filetype indent on

" Shows syntax highlighting
syntax on

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
highlight ExtraWhitespace ctermbg=red guibg=red
" Show trailing whitespace:
match ExtraWhitespace /\s\+$/

" Show trailing whitepace and spaces before a tab:
match ExtraWhitespace /\s\+$\| \+\ze\t/

" Show tabs that are not at the start of a line:
match ExtraWhitespace /[^\t]\zs\t\+/

" Show spaces used for indenting (so you use only tabs for indenting).
match ExtraWhitespace /^\t*\zs \+/

" Switch off :match highlighting.
match

match ExtraWhitespace /\s\+\%#\@<!$/


" Prevents use of arrow keys for navegation
"noremap <Up> <Nop>
"noremap <Down> <Nop>
"noremap <Left> <Nop>
"noremap <Right> <Nop>

set tabstop=2
set softtabstop=2
set shiftwidth=2
set listchars=tab:»·,trail:·
set expandtab

" Set up puppet manifest and spec options
au BufRead,BufNewFile *.pp
  \ set filetype=puppet
au BufRead,BufNewFile *_spec.rb
  \ nmap <F8> :!rspec --color %<CR>

"indentation matching for =>
filetype plugin indent on

" Pathogen
filetype off
call pathogen#infect()
filetype plugin indent on

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" Markdown folding
set nocompatible
if has("autocmd")
  filetype plugin indent on
endif

set spell spelllang=en_us
