set tabstop=2
set shiftwidth=2
set expandtab
set rnu
set number


" Resize windows and click to open
set mouse=a 

" Allow escape to exit neovim terminal
:tnoremap <Esc> <C-\><C-n>


call plug#begin()
" Use release branch (Recommend)
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" Tabs
Plug 'ap/vim-buftabline'

" Airline
" Plug 'vim-airline/vim-airline'

" Coc Settings 
" let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier', 'coc-pairs']
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank']

" Nerd tree
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

" Typescript Syntax
Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'

" ReasonML Syntax
Plug 'reasonml-editor/vim-reason-plus'

" TOML
Plug 'cespare/vim-toml'

" RON
Plug 'ron-rs/ron.vim'

" JSX Syntax highlight
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'

" Yarn vim
" Plug 'GabrieleLippi/yarn-vim'

" Yarn test
" Plug 'vim-test/vim-test'


" Comment/Uncomment
" Plug 'tpope/vim-commentary'

" Fuzzy finder
Plug 'cloudhead/neovim-fuzzy'

" Fuzzy word search
Plug 'rking/ag.vim'

" Hex colour preview
Plug 'chrisbra/Colorizer'

" Blamer (GitLens clone)
Plug 'APZelos/blamer.nvim'


" Async
Plug 'skywind3000/asyncrun.vim'

" Dispatch
Plug 'tpope/vim-dispatch'

" Rainbow brackets
" Plug 'frazrepo/vim-rainbow'


call plug#end()



" Nerd tree config
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-e> :NERDTreeToggle<CR>


" ===== COC ======
" COC Tab completion
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Coc ctrl+space trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
map <F2> <Plug>(coc-rename)

" Commenting
map <C-_> <Plug>CommentaryLine

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)<Paste>

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" =============== END COC ===============



" Fuzzy finder 
nnoremap <C-p> :FuzzyOpen<CR>

" Colourize css and scss
autocmd BufEnter,BufLeave *.css,*.scss,*.sass :ColorHighlight!

" Blamer
let g:blamer_enabled = 1

" Test Running for jest

nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

" Open terminal at bottom
nmap <silent> <C-Space> :belowright split<CR>:resize 10<CR>:set nornu<CR>:set nonumber<CR>:term<CR>A

let g:test#javascript#jest#file_pattern = '**\.test.js' 
let test#strategy = {
  \ 'nearest': 'dispatch',
  \ 'file':    'dispatch',
  \ 'suite':   'kitty',
\}


