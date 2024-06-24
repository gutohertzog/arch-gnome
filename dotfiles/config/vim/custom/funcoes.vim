" vim:fileencoding=utf-8:foldmethod=marker

" ToggleChars {{{
" função para ativar e desativar os caracteres de marcação
let g:flag = 0

function! ToggleChars()
  if g:flag
    " desativa showbreak e listchar
    echom "showbreak e listchar desativados"
    set showbreak=↪\
    set nolist
    let g:flag = 0
  else
    " ativa showbreak e listchar
    echom "showbreak e listchar ativados"
    set showbreak=↪\
    set list
    set listchars=tab:<->,eol:↲,nbsp:║,space:␣,trail:•,extends:⟩,precedes:⟨
    let g:flag = 1
  endif
endfunction

nnoremap <F12> :call ToggleChars()<CR>
" }}}

" ToggleWrap {{{
" função para ativar e desativar o wrap
let g:flag = 1

function! ToggleWrap()
  if g:flag
    " desativa wrap
    echom "wrap desativado"
    set nowrap
    let g:flag = 0
  else
    " ativa wrap
    echom "wrap ativado"
    set wrap
    let g:flag = 1
  endif
endfunction

" nnoremap <F9> :set wrap!<CR>
nnoremap <F9> :call ToggleWrap()<CR>
" }}}

" Toggle_transparent_background {{{
" ativa transparência do vim
let t:is_transparent = 0                     
function! Toggle_transparent_background()                      
  if t:is_transparent == 0                   
    hi Normal guibg=#111111 ctermbg=black                     
    let t:is_transparent = 1
  else
    hi Normal guibg=NONE ctermbg=NONE                    
    let t:is_transparent = 0                        
  endif                    
endfunction               
nnoremap <C-x><C-t> :call Toggle_transparent_background()<CR>
" }}}

