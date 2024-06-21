let g:markdown_folding = 1

" A função abaixo não é mais necessária por conta da opção acima
" https://github.com/tpope/vim-markdown/
"
" Ela foi adicionada na versão 8 do Vim

" MarkdownLevel {{{
"function! MarkdownLevel()
"    if getline(v:lnum) =~ '^# .*$'
"        return ">1"
"    endif
"    if getline(v:lnum) =~ '^## .*$'
"        return ">2"
"    endif
"    if getline(v:lnum) =~ '^### .*$'
"        return ">3"
"    endif
"    if getline(v:lnum) =~ '^#### .*$'
"        return ">4"
"    endif
"    if getline(v:lnum) =~ '^##### .*$'
"        return ">5"
"    endif
"    if getline(v:lnum) =~ '^###### .*$'
"        return ">6"
"    endif
"    return "="
"endfunction
"
"au BufEnter *.md setlocal foldexpr=MarkdownLevel()
"au BufEnter *.md setlocal foldmethod=expr
" }}}

