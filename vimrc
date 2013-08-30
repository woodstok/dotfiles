execute pathogen#infect()
syntax on
filetype plugin indent on
syntax enable
set hidden
set background=dark
colorscheme solarized

"Specifies how many columns a tab or \t counts for.
set tabstop=4
"Specifies hoe many columns to shift 
"when during auto indent and >>
set shiftwidth=2

let mapleader = ","

imap jk <Esc>


""fuzzy finder
"map <leader>f :FufFile **/<CR>
"map <leader>F :FufFile <CR>
"map <leader>b :FufBuffer <CR>

"vim file editing and reloading
map <leader>ev :e ~/.vimrc<CR>
map <leader>sv :source ~/.vimrc<CR>

"file closing, saving,
map <leader>w :w<CR>
map <leader>q :q!<CR>
map <leader>s :wq<CR>
map <leader>d :bd<CR>

"togglepaste
set pastetoggle=<C-k>

"Refresh snipmate snippets
map <leader>sr :call ReloadAllSnippets()<CR>
