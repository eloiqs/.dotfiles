" standard settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set number
set nowrap

" search higlighting fix
nnoremap <esc> :noh<return><esc>

" vim-plug
call plug#begin('~/.local/share/nvim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'
Plug 'https://github.com/HerringtonDarkholme/yats.vim.git'
Plug 'mhartington/oceanic-next'
Plug 'ryanoasis/vim-devicons'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'cloudhead/neovim-fuzzy'
Plug 'mxw/vim-jsx'
Plug 'jiangmiao/auto-pairs'
call plug#end()

" theme settings
if (has("termguicolors"))
 set termguicolors
endif
colorscheme OceanicNext

" font settings
set encoding=utf8

" syntax settings
syntax enable
let g:jsx_ext_required = 0

" airline settings
let g:airline_powerline_fonts = 1
let g:airline_theme='base16_oceanicnext'

" NERDTree settings
let g:NERDTreeDirArrows=0
let NERDTreeShowHidden=1

" special key bindings
nnoremap <C-p> :FuzzyOpen<CR>
nnoremap <C-\> :NERDTreeToggle %<CR>
nnoremap p p`[v`]=
nnoremap P P`[v`]=


" remove bg
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE
hi! LineNr ctermfg=NONE guibg=NONE
