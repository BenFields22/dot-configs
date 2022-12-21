call plug#begin()
Plug 'flazz/vim-colorschemes'
Plug 'preservim/NERDTree'
Plug 'valloric/youcompleteme'
Plug 'SirVer/ultisnips'
Plug 'luochen1990/rainbow'
Plug 'honza/vim-snippets'
Plug 'vim-python/python-syntax'
Plug 'bling/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'voldikss/vim-floaterm'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'elixir-editors/vim-elixir'
call plug#end()

let g:fzf_layout = { 'down':'40%' }

nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <C-l> :Files ~<CR>
inoremap { {<CR>}<Esc>ko
inoremap [ []<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap ( ()<Esc>i
:nmap <C-s> :w<CR>
:nmap _ <<
:nmap - ^i<Tab><esc>
:imap jj <Esc>
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'
let g:airline#extensions#tabline#enabled = 1
nmap <C-n> :NERDTreeToggle<CR>
let g:python_highlight_all = 1
set mouse=a
set number relativenumber
set nu rnu 
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
let g:rainbow_active = 1
colorscheme gruvbox
set bg=dark
let g:ycm_clangd_binary_path='/opt/homebrew/opt/llvm/bin/clangd'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_python_binary_path='/opt/homebrew/bin/python3'
" Trigger configuration. Do not use <tab> if you use YouCompleteMe.
let g:UltiSnipsExpandTrigger="<S-t>"
let g:UltiSnipsJumpForwardTrigger="<S-f>"
let g:UltiSnipsJumpBackwardTrigger="<S-b>"
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
set splitbelow
let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git \) -prune -o -print'
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4 --preview 'bat --color=always --style=header,grid --line-range :300 {}'"
set clipboard=unnamed
