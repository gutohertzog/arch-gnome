" Add namespace for fzf.vim exported commands
let g:fzf_command_prefix = 'Fzf'

let g:fzf_history_dir = '~/.config/local/share/fzf-vim-history'

let $FZF_DEFAULT_OPTS = '--reverse'

" Initialize configuration dictionary
let g:fzf_vim = {}

" This is the default option:
"   - Preview window on the right with 50% width
"   - CTRL-/ will toggle preview window.
" - Note that this array is passed as arguments to fzf#vim#with_preview function.
" - To learn more about preview window options, see `--preview-window` section of `man fzf`.
"let g:fzf_vim.preview_window = ['right,50%', 'ctrl-/']

" Preview window is hidden by default. You can toggle it with ctrl-/.
" It will show on the right with 50% width, but if the width is smaller
" than 60 columns, it will show above the candidate list
let g:fzf_vim.preview_window = ['right,50%,<60(up,40%)', 'ctrl-l']

" Empty value to disable preview window altogether
"let g:fzf_vim.preview_window = []

" fzf.vim needs bash to display the preview window.
" On Windows, fzf.vim will first see if bash is in $PATH, then if
" Git bash (C:\Program Files\Git\bin\bash.exe) is available.
" If you want it to use a different bash, set this variable.
"   let g:fzf_vim = {}
"   let g:fzf_vim.preview_bash = 'C:\Git\bin\bash.exe'<F12>


"" [Buffers] Jump to the existing window if possible
"let g:fzf_vim.buffers_jump = 1
"
"" [[B]Commits] Customize the options used by 'git log':
"let g:fzf_vim.commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
"
"" [Tags] Command to generate tags file
"let g:fzf_vim.tags_command = 'ctags -R'
"
"" [Commands] --expect expression for directly executing the command
"let g:fzf_vim.commands_expect = 'alt-enter,ctrl-x'

" Default fzf layout
" - Popup window (center of the screen)
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }

" - Popup window (center of the current window)
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'relative': v:true } }

" - Popup window (anchored to the bottom of the current window)
"let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'relative': v:true, 'yoffset': 1.0 } }

" - down / up / left / right
"let g:fzf_layout = { 'down': '40%' }

" Customize fzf colors to match your color scheme
" - fzf#wrap translates this to a set of `--color` options
"let g:fzf_colors =
"\ { 'fg':      ['fg', 'Normal'],
"  \ 'bg':      ['bg', 'Normal'],
"  \ 'hl':      ['fg', 'Comment'],
"  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"  \ 'hl+':     ['fg', 'Statement'],
"  \ 'info':    ['fg', 'PreProc'],
"  \ 'border':  ['fg', 'Ignore'],
"  \ 'prompt':  ['fg', 'Conditional'],
"  \ 'pointer': ['fg', 'Exception'],
"  \ 'marker':  ['fg', 'Keyword'],
"  \ 'spinner': ['fg', 'Label'],
"  \ 'header':  ['fg', 'Comment'] }

" Required:
" - width [float range [0 ~ 1]] or [integer range [8 ~ ]]
" - height [float range [0 ~ 1]] or [integer range [4 ~ ]]
"
" Optional:
" - xoffset [float default 0.5 range [0 ~ 1]]
" - yoffset [float default 0.5 range [0 ~ 1]]
" - relative [boolean default v:false]
" - border [string default 'rounded']: Border style
"   - 'rounded' / 'sharp' / 'horizontal' / 'vertical' / 'top' / 'bottom' / 'left' / 'right'
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.6, 'border': 'rounded' } }

