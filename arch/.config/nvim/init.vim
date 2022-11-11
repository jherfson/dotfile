" Instação de extensões 
call plug#begin()
  " Aparência
  Plug 'elvessousa/sobrio'
  Plug 'vim-airline/vim-airline'
  Plug 'ryanoasis/vim-devicons'
  Plug 'lukas-reineke/indent-blankline.nvim'

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
  Plug 'neoclide/coc.nvim',  {'branch': 'release'}
	Plug 'plasticboy/vim-markdown'
"  Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

  " Git
  Plug 'airblade/vim-gitgutter'
  

  " Snippets
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-Snippets'


  " C
   Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']} 
   Plug 'ludwig/split-manpage.vim'
 " Configuração notebook
  Plug 'karoliskoncevicius/vim-sendtowindow'

  " python
  " python Bundle
  Plug 'davidhalter/jedi-vim'
  Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}

  Plug 'rhysd/reply.vim', { 'on': ['Repl', 'ReplAuto'] }

  Plug 'tpope/vim-repeat'
  Plug 'pappasam/nvim-repl'

  Plug 'luk400/vim-jukit'

call plug#end()


" ##################################
" ###  Configuração dos Plugins  ###
" ##################################


" Tema
colorscheme sobrio
let no_buffers_menu=1

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
"command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')


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
"augroup auto_commands
"	autocmd BufWrite *.py call CocAction('format')
"	autocmd FileType scss setlocal iskeyword+=@-@
"augroup END


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

" Atalhos para o REPL
nnoremap <leader>e :ReplToggle<CR>
nnoremap <leader><tab> :ReplSend<CR>
nnoremap <leader>q : ReplClose<CR>
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

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8


" Fix backspace indent
set backspace=indent,eol,start

" Alternar a posição de uma linha com SHIFT + seta para cima e SHIFT + seta para baixo 
nnoremap <silent> <s-Down> :m +1<CR>
nnoremap <silent> <s-Up> :m -2<CR>

" Copiar um texto e enviar esse texto para a área de transferência 
vnoremap <C-c> "+y<CR>

""Sintaxe
filetype plugin indent on
syntax on

" Suporte a cores
set t_Co=256
if $TERM !=? 'xterm-256color'
	set termguicolors
endif

" Configurações do CoC.nvim
" Configurações do CoC.nvim

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Fim das configurações do CoC.nvim


" snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-space>"
let g:UltiSnipsEditSplit="vertical"

" c
autocmd FileType c setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType cpp setlocal tabstop=4 shiftwidth=4 expandtab
""Fim das configurações do CoC.nvim

" python
" vim-python
augroup vimrc-python
  autocmd!
  autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79
        \ formatoptions+=croq softtabstop=4
        \ cinwords=if,elif,else,for,while,try,excep,finally,def,class.with
augroup end

" jedi-vim
let g:jedi#popup_on_dot = 0
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#docmentation_command = "k"
let g:jedi#usages_command = "<leader>n"
let g:jedo#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "0"
let g:jedi#completions_command = "<C-Space"
let g:jedi#smart_auto_mappings = 0
