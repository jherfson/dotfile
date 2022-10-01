" Instação de extensões
call plug#begin()
  " Aparência
  Plug 'elvessousa/sobrio'
  Plug 'vim-airline/vim-airline'
  Plug 'ryanoasis/vim-devicons'


  " Utilitários
  Plug 'sheerun/vim-polyglot'
  Plug 'jiangmiao/auto-pairs'
  Plug 'ap/vim-css-color'
  Plug 'preservim/nerdtree'
  Plug 'kien/ctrlp.vim'


 " Jupyter Notebook
 "Plug 'hkupty/iron.nvim'
  
 " Formatadores
  "Plug 'neoclide/coc.nvim',  {'branch': 'master', 'do': 'yarn install'}
	Plug 'plasticboy/vim-markdown'
  Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

  " Git
  Plug 'airblade/vim-gitgutter'

call plug#end()


" ##################################
" ###  Configuração dos Plugins  ###
" ##################################


" Tema
colorscheme sobrio


" Configuração do Airline
let g:airline_theme='sobrio'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


" Configuração NerdTree
let NERDTreeShowHidden=1


" Configuração  do CTRLP
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']


" Configuração Vim Markdown
" Disable math tex conceal feature
let g:tex_conceal = ''
let g:vim_markdown_math = 1


" Markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_fenced_languages = ['tsx=typescriptreact']



" Coc: Conquer if Completion
" Language server stuff
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')


" Congiuração do jupyter


" Debugging maps
nnoremap <buffer> <silent> <localleader>b :PythonSetBreak<CR>



" ####################################
" ###  Configuração de atalhos   ##### 
" ####################################

" Normal mode remappings
nnoremap <C-q> :q!<CR>
nnoremap <F4> :bd<CR>
nnoremap <F5> :NERDTreeToggle<CR>
nnoremap <F6> :sp<CR>:terminal<CR>

" Tabs
nnoremap <S-Tab> gT
nnoremap <Tab> gt
nnoremap <silent> <S-t> :tabnew<CR>

nnoremap <F7> :sp<CR>
nnoremap <F10> :vsp<CR>



" Modo de Inserção
nnoremap <C-s> :w!<CR>

" ##############################
" ### Commands automáticos   ###
" ##############################
" Auto Commands
augroup auto_commands
	autocmd BufWrite *.py call CocAction('format')
	autocmd FileType scss setlocal iskeyword+=@-@
augroup END



" ################
" ### Optições ###
" ################

set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set cursorline
set hidden
set inccommand=split
set mouse=a
set number
set relativenumber
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu

" Tamanho das guias
set expandtab
set shiftwidth=2
set tabstop=2

 
" Sintaxe
filetype plugin indent on
syntax on

" Suporte a cores
set t_Co=256
if $TERM !=? 'xterm-256color'
	set termguicolors
endif


" " Remap divide a navegação para apenas CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l



" Torne o ajuste de tamanhos divididos um pouco mais amigável
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize -3<CR>
noremap <silent> <C-Down> :resize +3<CR>



" Altere 2 janelas divididas de vertical para horizontal ou horizontal para vertical
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K


" Configuração notebook
Plug 'karoliskoncevicius/vim-sendtowindow'

Plug 'rhysd/reply.vim', { 'on': ['Repl', 'ReplAuto'] }

Plug 'tpope/vim-repeat'
Plug 'pappasam/nvim-repl'

Plug 'luk400/vim-jukit'
