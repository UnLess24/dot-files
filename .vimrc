" Plugins
call plug#begin('~/.vim/plugged')

" Plug 'lifepillar/vim-solarized8'
Plug 'airblade/vim-gitgutter'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'stanangeloff/php.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

" Define where tags file is located
set tags^=.git/sub.tags
set tags^=.git/tags

" Use colorscheme
" set background=light
" colorscheme solarized8

" Set mapping for leader button
" let mapleader = ","

" Set NERD Tree
map <silent> <C-n> :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen = 1
" end NERD Tree

" Highligts search
set hlsearch
set hls
set incsearch
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" FZF
" Empty value to disable preview window altogether
let g:fzf_preview_window = ''

" Always enable preview window on the right with 60% width
let g:fzf_preview_window = 'right:60%'

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'
" End FZF

" set number line relative
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" nomap Arrow Keys

noremap <Up> <nop>
noremap <Left> <nop>
noremap <Down> <nop>
noremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Left> <nop>
inoremap <Down> <nop>
inoremap <Right> <nop>
vnoremap <Up> <nop>
vnoremap <Left> <nop>
vnoremap <Down> <nop>
vnoremap <Right> <nop>

" s{char}{char} to move to {char}{char}
nmap <C-k> <Plug>(easymotion-overwin-f2)

" Show status Bar

" set laststatus=2
" set statusline =%1*\ %n\ %*
" set statusline +=%5*%{&ff}%*
" set statusline +=%3*%y%*
" set statusline +=%4*\ %<%F%*
" set statusline +=%2*%m%*
" set statusline +=%1*%=%5l%*
" set statusline +=%2*/%L%*
" set statusline +=%1*%4v\ %*
" set statusline +=%2*0x%04B\ %*

