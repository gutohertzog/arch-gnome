" usado para ativar ou desativar o plugin
let g:simple_complete_enabled = 1
"
" comandos para ativar e desativar o plugin
command! SimpleCompleteEnable let g:simple_complete_enabled = 1
command! SimpleCompleteDisable let g:simple_complete_enabled = 0

if exists("g:loaded_vim_simple_complete")
  finish
endif
let g:loaded_vim_simple_complete = 1

let g:vsc_completion_command = get(g:, 'vsc_completion_command', "\<C-N>")
let g:vsc_reverse_completion_command = get(g:, 'vsc_reverse_completion_command', "\<C-P>")
let g:vsc_tab_complete = get(g:, 'vsc_tab_complete', 1)
let g:vsc_type_complete = get(g:, 'vsc_type_complete', 1)
let g:vsc_type_complete_length = get(g:, 'vsc_type_complete_length', 3)
let g:vsc_pattern = get(g:, 'vsc_pattern', '\k')

fun! s:TabCompletePlugin()
    if !g:simple_complete_enabled
        return
    endif

    inoremap <expr> <Tab> <SID>TabComplete(0)
    inoremap <expr> <S-Tab> <SID>TabComplete(1)

    fun! s:TabComplete(reverse)
        if s:CurrentChar() =~ g:vsc_pattern || pumvisible()
            return a:reverse ? g:vsc_reverse_completion_command : g:vsc_completion_command
        else
            return "\<Tab>"
        endif
    endfun
endfun

fun! s:CurrentChar()
    return matchstr(getline('.'), '.\%' . col('.') . 'c')
endfun

fun! s:TypeCompletePlugin()
    if !g:simple_complete_enabled
        return
    endif

    set completeopt+=menu
    set completeopt+=menuone
    set completeopt+=noselect
    set pumheight=10
    let s:vsc_typed_length = 0
    imap <silent> <expr> <plug>(TypeCompleteCommand) <sid>TypeCompleteCommand()

    augroup TypeCompletePlugin
        autocmd!
        autocmd InsertCharPre * noautocmd call s:TypeComplete()
        autocmd InsertEnter * let s:vsc_typed_length = 0
    augroup END

    fun! s:TypeCompleteCommand()
        return g:vsc_completion_command
    endfun

    fun! s:TypeComplete()
        if v:char !~ g:vsc_pattern
            let s:vsc_typed_length = 0
            return
        endif

        let s:vsc_typed_length += 1

        if !g:vsc_type_complete || pumvisible()
            return
        endif

        if s:vsc_typed_length == g:vsc_type_complete_length
            call feedkeys("\<plug>(TypeCompleteCommand)", 'i')
        endif
    endfun
endfun

if g:vsc_type_complete | call s:TypeCompletePlugin() | endif
if g:vsc_tab_complete  | call s:TabCompletePlugin()  | endif

