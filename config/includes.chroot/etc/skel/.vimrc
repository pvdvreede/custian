runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
filetype on
filetype indent on
filetype plugin on

" make our leader key be space
let mapleader=" "

" setup netrw
map <leader>k :Explore<cr>
let g:netrw_liststyle=3

" needed for vim-airline
set laststatus=2
let g:airline_symbols = {}
let g:airline_theme='luna'
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.linenr = '␊ '
let g:airline_symbols.linenr = '␤ '
let g:airline_symbols.linenr = '¶ '
let g:airline_symbols.branch = '⎇ '
let g:airline_symbols.paste = 'ρ'
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_mode_map = {
      \ 'n': 'N',
      \ 'i': 'I',
      \ 'R': 'REPLACE',
      \ 'v': 'VISUAL',
      \ 'V': 'V-LINE',
      \ 'c': 'CMD   ',
      \}

" ctrl-p setup
let g:ctrlp_match_window_bottom = 1    " Show at bottom of window
let g:ctrlp_working_path_mode = 'ra'   " Our working path is our VCS project or the current directory
let g:ctrlp_mru_files = 1              " Enable Most Recently Used files feature
let g:ctrlp_jump_to_buffer = 2         " Jump to tab AND buffer if already open
let g:ctrlp_open_multiple_files = '2hj' " opens multiple selections in vertical splits to the right
let g:ctrlp_arg_map = 0
let g:ctrlp_dotfiles = 1               " do show (.) dotfiles in match list
let g:ctrlp_showhidden = 0             " do not show hidden files in match list
let g:ctrlp_split_window = 0
let g:ctrlp_max_height = 40            " restrict match list to a maxheight of 40
let g:ctrlp_use_caching = 0            " don't cache, we want new list immediately each time
let g:ctrlp_max_files = 500
let g:ctrlp_working_path_mode = ''
let g:ctrlp_dont_split = 'NERD_tree_2' " don't split these buffers
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn|gitkeep)$',
      \ 'file': '\v\.(exe|so|dll|log|gif|jpg|jpeg|png|psd|DS_Store|ctags|gitattributes)$'
      \ }
" let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
" let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files --exclude-standard -co'] " if you want to use git for this rather than ag
" let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_prompt_mappings = {
      \ 'AcceptSelection("e")': ['<c-e>', '<c-space>'],
      \ 'AcceptSelection("h")': ['<c-x>', '<c-cr>', '<c-s>'],
      \ 'AcceptSelection("t")': ['<c-t>'],
      \ 'AcceptSelection("r")': ['<cr>'],
      \ 'AcceptSelection("v")': ['<c-v>'],
      \ 'PrtSelectMove("j")':   ['<c-j>', '<down>', '<s-tab>'],
      \ 'PrtSelectMove("k")':   ['<c-k>', '<up>', '<tab>'],
      \ 'PrtHistory(-1)':       ['<c-n>'],
      \ 'PrtHistory(1)':        ['<c-p>'],
      \ 'ToggleFocus()':        ['<c-tab>'],
      \}

" highlight the current line and column
set cul
set cuc

set t_ut= " improve screen clearing by using the background color
set background=dark
syntax enable
colorscheme molokai
set enc=utf-8
set term=xterm-256color
let $TERM='xterm-256color'
set t_Co=256

set nocompatible
set showcmd

" searching
set hlsearch
set ignorecase
set incsearch

set paste

set nu
set relativenumber

" Tab specific option
set tabstop=4                   "A tab is 8 spaces
set expandtab                   "Always uses spaces instead of tabs
set softtabstop=2               "Insert 4 spaces when tab is pressed
set shiftwidth=2                "An indent is 4 spaces
set shiftround                  "Round indent to nearest shiftwidth multiple

" remap colon to semicolon to avoid the shift
nnoremap ; :
" Redraw my screen
nnoremap U :syntax sync fromstart<cr>:redraw!<cr>

set noswapfile
set colorcolumn=80

" clear whitespace at the end of a line for EVERY filetype
autocmd BufWritePre * :%s/\s\+$//e

" for gitgutter plugin
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

" vim easy align plugin
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
"
" " Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
