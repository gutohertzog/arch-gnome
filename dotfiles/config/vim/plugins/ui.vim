
" gruvbox colorscheme
"let g:gruvbox_italic=1
"colorscheme desert
"colorscheme gruvbox

" airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
" * enable/disable displaying buffers with a single tab. (c) >
let g:airline#extensions#tabline#show_buffers = 1

" codedark colorschene
" If you don't like many colors and prefer the conservative style of the standard Visual Studio
"let g:codedark_conservative=1
" If you like the new dark modern colors (Needs feedback!)
let g:codedark_modern=1
" Activates italicized comments (make sure your terminal supports italics)
let g:codedark_italics=1
" Make the background transparent
"let g:codedark_transparent=1
" If you have vim-airline, you can also enable the provided theme
let g:airline_theme = 'codedark'
colorscheme codedark

"let g:airline_theme = 'gruvbox'
"colorscheme gruvbox

" highlighted yank
let g:highlightedyank_highlight_duration=250

" NERDTree
let g:NERDTreeFileLines = 1
" Start NERDTree and leave the cursor in it.
"autocmd VimEnter * NERDTree

let NERDTreeShowHidden=1

"get rid of [  ] around icons in NerdTree
"autocmd VimEnter * source ~/.vimrc
if exists("g:loaded_webdevicons")
	call webdevicons#refresh()
endif

" to have FzfFiles
"let g:fzf_vim.command_prefix = 'Fzf'

" Preview window is hidden by default. You can toggle it with ctrl-/.
" It will show on the right with 50% width, but if the width is smaller
" than 70 columns, it will show above the candidate list
"let g:fzf_vim.preview_window = ['hidden,right,50%,<70(up,40%)', 'ctrl-/']

" Use a line cursor within insert mode and a block cursor everywhere else.
"
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

