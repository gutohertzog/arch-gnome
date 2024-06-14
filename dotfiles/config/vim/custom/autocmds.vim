" Automatically save the session when leaving Vim
"autocmd! VimLeave * mksession
" Automatically load the session when entering vim
"autocmd! VimEnter * source ~/Session

autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
autocmd FileType python     nnoremap <buffer> <localleader>c I#<esc>
autocmd FileType json       nnoremap <buffer> <localleader>c I#<esc>
autocmd FileType sql        nnoremap <buffer> <localleader>c I--<esc>

autocmd FileType python     :iabbrev <buffer> iff if:<left>
autocmd FileType javascript :iabbrev <buffer> iff if ()<left>

