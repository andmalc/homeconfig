" Interface {{{1

" Copy/yank always to plus register (clipboard)
set clipboard+=unnamedplus

"set list

set foldmethod=marker

" relative line numbering
set rnu

" Vertical line at cursor position
set cursorline

" Disable bell noises
set visualbell

set splitright splitbelow

" ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>


" Line formatting {{{1

" Wrap at character in 'breakat' rather than at last character on screen
set linebreak

" Tabs
set ai
set ts=4
set sw=4
set sts=4
set noexpandtab

" Files {{{1
"
" load changes to file from outside Vim
set autoread

set undodir=~/.config/nvim/undodir
set undofile

" Dir for swap files
set dir=~/tmp/nvimswp

set hidden

set scrolloff=5

" Don't load netrw
" let g:loaded_netrw       = 1
" let g:loaded_netrwPlugin = 1

"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"let &packpath = &runtimepath
"source ~/.vimrc


" vim-plug {{{1
"
if has("autocmd")
  filetype plugin indent on
endif

filetype plugin on

call plug#begin()

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

"Plug 'nelstrom/vim-markdown-folding'

" Buffer Tree Explorer 
" https://github.com/el-iot/buffer-tree-explorer
" Launch with 'Tree'
" Plug 'el-iot/buffer-tree-explorer'

" Easy align plug-in
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


call plug#end()
