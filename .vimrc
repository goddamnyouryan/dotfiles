runtime! autoload/pathogen.vim
silent! call pathogen#helptags()
silent! call pathogen#runtime_append_all_bundles()
set nocompatible
set softtabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set runtimepath+=/usr/share/lilypond/2.12.3/vim/
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore=*.swp,*.bak,*.pyc,*.class,*/node_modules
nnoremap ; :
filetype on
filetype plugin on
set incsearch
set ignorecase
set smartcase

syntax on
set background=dark
" colorscheme base16-ocean

" Clear highlighted searches with ease
nmap <silent> ,/ :nohlsearch<CR>

" Disable arrow keys!!!!
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" CtrlP to CommandT
let g:ctrlp_map = '<Leader>t'
nnoremap <silent> <leader>T :ClearCtrlPCache<cr>\|:CtrlP<cr>

" Sane Ignore For ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|tmp\|\node_modules$\',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
    \ }


" CamelCaseMotion
let g:camelcasemotion_key = '<leader>'

" Vim UI {
  if has('statusline')
    set laststatus=2
      set statusline=%<%f\    " Filename
      set statusline+=%w%h%m%r " Options
      "set statusline+=\ [%{&ff}/%Y]            " filetype
      set statusline+=\ [%{getcwd()}]          " current dir
      "set statusline+=\ [A=\%03.3b/H=\%02.2B] " ASCII / Hexadecimal value of char
      set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
    endif
  set backspace=2
  set showmode
  set wildmenu
  set listchars=tab:>.,trail:.,extends:#,nbsp:.
  highlight ExtraWhitespace ctermbg=red guibg=red
  match ExtraWhitespace /\s\+$/
  autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
  autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
  autocmd InsertLeave * match ExtraWhitespace /\s\+$/
  autocmd BufWinLeave * call clearmatches()
" }

nmap <C-k> [e
nmap <C-j> ]e
vmap <C-k> [egv
vmap <C-j> ]egv

" no backup files
set noswapfile
set nobackup
