set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'mattn/emmet-vim'
Plugin 'majutsushi/tagbar'
Plugin 'tyru/open-browser.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'StanAngeloff/php.vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'elzr/vim-json'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'tpope/vim-markdown'

Plugin 'rizzatti/dash.vim' 
Plugin 'davidoc/taskpaper.vim'
Plugin 'Chiel92/vim-autoformat'

Plugin 'jwkicklighter/vim-schemes'
Plugin 'flazz/vim-colorschemes'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'jordwalke/VimCleanColors'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

filetype indent on

" let makros start with a ,
let maplocalleader = ','
let mapleader = ','

"nerdtree
map <leader>nt :NERDTreeToggle<CR>
let NERDTreeWinSize=40

" change working directory to the file being edited
nnoremap <localleader>cd :cd %:p:h<CR>

"Tagbar
nmap <F8> :TagbarToggle<CR>

"html
autocmd BufReadPost *.phtml set filetype=html

"Markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
nmap <leader>md :%!/usr/local/bin/Markdown.pl --html4tags <cr>

" Fugitive
" deleting fugitive buffers
autocmd BufReadPost fugitive://* set bufhidden=delete

"open browser
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

" Syntax highlightning on
syntax on

" change syntax coloring in spell mode
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

set linebreak
set cursorline
set linespace=2
set nofoldenable
set autoread
set clipboard=unnamed
set laststatus=2
set backspace=indent,eol,start   " Fix backspace not deleting tabs, also make delimiteMate work

" Show current mode
set showmode
set showcmd 

" highlight search result
set hlsearch
nmap <leader>hs :set hlsearch<CR>
nmap <leader>nhs :nohlsearch<CR>

" Show matching parentheses
set showmatch

" guifont
set guifont=Input\ Mono:h12.00

" set printer options
set printoptions=paper:A4,left:20mm,right:40mm,top:20mm,bottom:20mm,header:3,number:n

" use 4 spaces for indentation
set tabstop=4 
set softtabstop=0
set shiftwidth=4
set autoindent
set noexpandtab

" show the cursor line and column number
set ruler

"Rebuild tags with \b
nnoremap <localleader>b :execute ctags -R'<cr>

" to set working directory to the directory of the file being edited
nnoremap <localleader>cd :cd %:p:h<CR>

" Show line numbers
set number
highlight LineNr term=bold cterm=NONE ctermfg=Grey ctermbg=NONE gui=NONE guifg=Grey guibg=NONE

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
 
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" No menu und toolbar in GVim
set guioptions-=T

" enable ftplugin for xml
"autocmd BufNewFile,BufRead *.xml source ~/.vim/ftplugin/xml.vim
"map <Leader>x :set filetype=xml<CR>

"Adds indentation guide like Sublime
let g:indentLine_char = '|'
let g:indentLine_enabled = 1

"syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_php_checkers = ['php']
let g:syntastic_javascript_checkers = ['jshint']

