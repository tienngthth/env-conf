" Set compatibility to Vim only
set nocompatible
set backspace=2

" Show line numbers
set number

" Status bar
set laststatus=2

" Automatically wrap text that entends beyond the screen length
set wrap

 " Encoding
set encoding=utf-8

" Center the screen entering insert mode
autocmd InsertEnter * norm zz

" Trim trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Set number relative to the current line
set number relativenumber

" Tab setting
set softtabstop=2
set tabstop=2

" Enable mouse support
set mouse=a

"Color settings
set background=dark
highlight Comment ctermfg=green

" Directory tree
nnoremap <leader>n :NERDTreeFocus<CR>
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-q> <C-w>q
"map <C-v> <C-w>v

" Replace
nnoremap S :%s//gI<Left><Left><Left>

" Call the .vimrc.plug file
if filereadable(expand("~/.vimrc.plug"))
		source ~/.vimrc.plug
endif

