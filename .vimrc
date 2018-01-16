""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" required:
"  dein.vim refs to https://github.com/Shougo/dein.vim
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" rootdir for plugin
let s:dein_dir = expand('~/.cache/dein')
" placeholder for dein.vim
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
" if not found dein.vim, download it from github <= required Internet connection
if &runtimepath !~# '/dein.vim'
	if !isdirectory(s:dein_repo_dir)
		execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
	endif
	execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
	call dein#begin(s:dein_dir)

	let g:rc_dir		= expand('~/.vim/rc')
	let s:toml			= g:rc_dir . '/dein.toml'
	let s:lazy_toml	= g:rc_dir . '/dein_lazy.toml'

	call dein#load_toml(s:toml,				{'lazy': 0})
	call dein#load_toml(s:lazy_toml,	{'lazy': 1})

	call dein#end()
	call dein#save_state()

endif

if dein#check_install()
	call dein#install()
endif

if exists("g:ale_enabled")
	let g:ale_statusline_format = [ 'NG %d', 'Warn %d', 'OK %d']
	let g:ale_lint_on_enter = 0
	let g:ale_lint_on_sage = 1
	let g:ale_lint_on_text_changed = 1
endif
nnoremap <silent><C-e> :NERDTreeToggle<CR>

set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd

set number
set cursorline
set cursorcolumn
set virtualedit=onemore
set smartindent
set visualbell
set showmatch
set statusline=%F
set statusline+=%m
set statusline+=%r
set statusline+=%h
set statusline+=%w
set statusline+=%=
set statusline+=[encoding=%{&fileencoding}]
set statusline+=[position=%l/%L]
set laststatus=2
set wildmode=list:longest
nnoremap j gj
nnoremap k gk

set list listchars=tab:\▶\-
set expandtab
set tabstop=2
set shiftwidth=2

set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

