" Vundle >>>>>>
    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    "call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')

    " let Vundle manage Vundle, required
"    Plugin 'Valloric/YouCompleteMe'
    "Plugin 'VundleVim/Vundle.vim'
    "Plugin 'scrooloose/nerdtree'
    "Plugin 'bling/vim-airline'
    "Plugin 'kien/ctrlp.vim'
    "Plugin 'altercation/vim-colors-solarized'
    "Plugin 'flazz/vim-colorschemes'
    "Plugin 'easymotion/vim-easymotion'
    "Plugin 'octol/vim-cpp-enhanced-highlight'
    "Plugin 'hzchirs/vim-material'
    "Plugin 'rdnetto/YCM-Generator'
    "Plugin 'embear/vim-localvimrc'
    "Plugin 'scrooloose/syntastic'
    "Plugin 'nvie/vim-flake8'
    " All of your Plugins must be added before the following line
    "call vundle#end()            " required
    "filetype plugin indent on    " required
" <<<<<< Vundle

" NERDTree >>>>>>
    "autocmd vimenter * NERDTree
    nnoremap tt :NERDTree %:h<CR>
    nnoremap H :bprevious<CR>
    nnoremap L :bnext<CR>
    nnoremap K :bdelete<CR>
" <<<<<< NERDTree

" easymotion >>>>>>
    nmap fs <Plug>(easymotion-s)
    nmap ff <Plug>(easymotion-s2)
    "nmap ft <Plug>(easymotion-t2)
    nmap fw <Plug>(easymotion-bd-w)
    nmap fl <Plug>(easymotion-lineforward)
    nmap fj <Plug>(easymotion-j)
    nmap fk <Plug>(easymotion-k)
    nmap fh <Plug>(easymotion-linebackward)
" <<<<<< easymotion

" airline >>>>>>
    set t_Co=256
    set laststatus=2
    let g:airline_powerline_fonts=1
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#syntastic#enabled=1
    let g:airline_powerline_fonts=1
    "let g:airline_theme='wahaha'
    let g:airline_theme='solarized'
    let g:airline_left_sep = ' '
" <<<<<< airline

" ctrlp >>>>>>
    let g:ctrlp_max_files = 0
    set wildignore+=*_log*,*.a,*.o,*ficus,*unittest,*functest,*.log,*.class,*.jar,*log_info*
    let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
    let g:ctrlp_user_command = {
      \ 'types': {
        \ 1: ['.git', 'cd %s && git ls-files --cached --exclude-standard --others']
        \ }
      \ }
" <<<<< ctrlp


" solarized >>>>>>
    set background=dark
    "colorscheme wahaha
    "colorscheme vim-material
    "colorscheme solarized
    let g:solarized_termcolors= 256
    let g:solarized_termtrans = 0
    let g:solarized_degrade   = 0
    let g:solarized_bold      = 1
    let g:solarized_underline = 1
    let g:solarized_italic    = 1
    let g:solarized_contrast  = "high"
    let g:solarized_visibility= "high"
" <<<<< solarized

" basic >>>>>>
    syntax on
    set nocompatible
    set ruler
    set nu
    set scrolloff=3
    set ts=4 sw=4
    set expandtab
    set nobackup
    set noswapfile
    set cindent
    set autoindent
    set backspace=2
    set showmatch
    set smartindent
    set softtabstop=4
    set shiftwidth=4
    set hlsearch
    hi Search term=standout ctermfg=white ctermbg=63
    hi Normal ctermbg=none
    set cursorline
    set cursorcolumn

    if filereadable($HOME."/ficus/tags")
        set tags=~/ficus/tags
    endif

    if has("autocmd")
        filetype plugin indent on
        augroup vimrcEx
            au!
            autocmd FileType text setlocal textwidth=78
            autocmd BufReadPost *
                        \ if line("'\"") > 1 && line("'\"") <= line("$") |
                        \   exe "normal! g`\"" |
                        \ endif
        augroup END
    endif " has("autocmd")
" <<<<<< basic 

" basic map >>>>>>
    :map <TAB> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
    :map <F3> <C-]>
" <<<<<< basic map

" other >>>>>>
    let g:omni_sql_no_default_maps = 1
" <<<<<< other

""""""""""""""""""""""""""""""
" ycm setting
"""""""""""""""""""""""""""""""
    let g:ycm_global_ycm_extra_conf='/home/lding/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
    let g:ycm_collect_identifiers_from_tag_files = 1
    let g:ycm_seed_identifiers_with_syntax = 1
    let g:ycm_confirm_extra_conf=0
    let g:ycm_key_invoke_completion = '<C-/>'
    nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>

""""""""""""""""""""""""""""""
" localrc setting
"""""""""""""""""""""""""""""""
"let python_highlight_all=1
