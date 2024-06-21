call plug#begin('~/.local/share/vim/plugged')

" List your plugins here
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'machakann/vim-highlightedyank'
"Plug 'TaDaa/vimade'
Plug 'jiangmiao/auto-pairs'
Plug 'gruvbox-community/gruvbox'
"Plug 'morhetz/gruvbox'
Plug 'tomasiser/vim-code-dark'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" A git wrapper.
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'

call plug#end()

