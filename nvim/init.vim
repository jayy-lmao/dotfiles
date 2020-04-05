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


" Coc Settings 
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier', 'coc-pairs']

"Nerd tree
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

" Typescript Syntax
Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'

" Fuzzy finder
Plug 'cloudhead/neovim-fuzzy'
call plug#end()



" Nerd tree config
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>


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

