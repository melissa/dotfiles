set ruler
set number
set list
set smartindent
set autoindent

" Colors!
colorscheme srcery

" Add a bar at column 80
set colorcolumn=80
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

" I have no idea what this does, but I like the colors better with it
set t_Co=256

" Allows the use of plugins
set nocompatible
filetype plugin on
filetype indent on

" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :BundleInstall
endif

" Vundle Bundles
" ============================================================================
" Required Plugins
Bundle 'gmarik/vundle'
" Approved Bundles
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-fugitive'

" Set Leader
let mapleader = ","

" NERDTreeToggle {{{2
" --------------
function! NERDTreeToggleOrFocus()
    if expand("%") =~ "NERD_tree"
        :NERDTreeToggle
    else
        call NERDTreeFocus()
    endif
endfunction
nnoremap <leader>n :call NERDTreeToggleOrFocus()<CR>
" }}}



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
