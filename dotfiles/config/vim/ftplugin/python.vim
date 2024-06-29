" Python specific settings.

set shiftwidth=4
set tabstop=4
set softtabstop=4
set foldmethod=indent

"setlocal formatoptions=croql
nmap <F5> :w <CR> :!clear; python % <CR>
nmap <F6> :w <CR> :!python %<Space>
let python_highlight_all=1

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
