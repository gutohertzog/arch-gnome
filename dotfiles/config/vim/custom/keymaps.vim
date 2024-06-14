" deactive esc
inoremap <Esc> <Nop>
inoremap jk <Esc>

" navegaçao janelas
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

nnoremap <Space> <Nop>
vnoremap <Space> <Nop>
" navegação tabs
nnoremap <leader>tt :tabnew<CR>
nnoremap <leader>tw :tabclose<CR>
nnoremap <leader>tn :tabnext<CR>
nnoremap <leader>tp :tabprevious<CR>
" navegação buffers
"nnoremap <leader>bt :
nnoremap <leader>bw :bdelete<CR>
"nnoremap <leader>bn :bnext<CR>
"nnoremap <tab> :blast<CR>
nnoremap <tab> :bnext<CR>
nnoremap <s-tab> :bprevious<CR>

" navegação arquivo
noremap J 5j
noremap K 5k
noremap H ^
noremap L $
nnoremap Y y$

noremap <leader>j J
noremap <leader>k i<CR><Esc>
"nnoremap <CR> ciw

" comandos
"noremap <leader>w :w<CR>
noremap <leader>, :nohl<CR>
noremap <leader><CR> :bel term<CR>
" cria um atalho para editar o .vimrc
noremap <Leader>ve :e $MYVIMRC<CR>
noremap <Leader>vs :e .vim/settings.vim<CR>
"noremap <Leader>sv :source $MYVIMRC<CR>
noremap <leader><leader>. :so $MYVIMRC<CR>
tnoremap <leader><leader><CR> exit<CR>
tnoremap <leader><leader>p python3 main.py<CR>

" make space more useful
" toggle fold
" nnoremap <leader> za

" NERDTree
noremap <leader>e :NERDTreeToggle<CR>
noremap <leader>E :NERDTreeFocus<CR>

" execute vim file
noremap <leader>x :so %<cr>

" upper word
inoremap <c-k> <esc>viwUea

" adiciona aspas duplas entre a palavra
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel

" busca com FZF
noremap <Leader>ff :FzfFiles<CR>
noremap <Leader>fF :FzfFiles!<CR>
noremap <Leader>fw :FzfRg 
noremap <Leader>fW :FzfRg! 
noremap <Leader>fb :FzfBuffers<CR>
" keymaps
noremap <Leader>fk :FzfMaps<CR>
" file history
noremap <Leader>fh :FzfHistory<CR>
" search history
noremap <Leader>fs :FzfHistory/<CR>
" command history
noremap <Leader>fc :FzfHistory:<CR>

"auto-center on movement command
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz
nmap <c-u> <c-u>zz
nmap <c-d> <c-d>zz

"disable arrows
no <up> <nop>
no <down> <nop>
no <left> <nop>
no <right> <nop>

" current line/selection up or down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" sort selected lines
vnoremap <C-s> :sort<CR>

" Replace all occurences
vnoremap <C-r> "hy:%s/<C-r>h//g<left><left>
vnoremap <leader><C-r> "hy:%s/<C-r>h/<C-r>h/g<left><left>

" salva e salva quando não sudo
nnoremap <Leader><Enter> :w<Enter>
nnoremap <Leader><Leader><Enter> :w !sudo tee %<Enter>
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>

" Path completion with custom source command
inoremap <expr> <c-x><c-f> fzf#vim#complete#path('fd')
inoremap <expr> <c-x><c-f> fzf#vim#complete#path('rg --files')

" Word completion with custom spec with popup layout option
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'window': { 'width': 0.2, 'height': 0.9, 'xoffset': 1 }})

