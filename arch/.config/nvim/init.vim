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
