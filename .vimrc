"{{{
"{{{
" personalization
echo ">^.^<"
"}}}
" practice vim settings
"{{{
"" leader: a prefix for commands to prevent conflicts between commands
let maplocalleader="//"
let mapleader="-"
"" map nnoremap vnoremap inoremap
"" habits restriction
inoremap <esc> <nop>
inoremap jk <esc>
""" using ctrl+u/l to uppercase/lowercase a word
nnoremap <leader><c-u> gUw                                
nnoremap <leader><c-l> guw
"" autocmd test
augroup filetype_html
  autocmd!
  autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END                                               
"" rapidly edit .vimrc files
""" here $MYVIMRC is a variable to .vimrc file
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
"}}}
" native vim settings
"{{{
"" set " for a word
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
"" linemark                                               
let &number=1
"" no ad
set shortmess=atI
"" tab numbers
set shiftwidth=2
"" relative number
" set rnu
"}}}
" auto correction/completion
"{{{
iabbrev adn and
iabbrev mian main
iabbrev esle else
iabbrev jsf function name() {}
inoremap {<space> {}<left>
inoremap "<space> ""<left>
inoremap (<space> ()<left>
inoremap <<space> <><left>
inoremap [<space> []<left>
inoremap '<space> ''<left>
"}}}
" vim-plug settings
" {{{
call plug#begin()
"" nerdtree
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
"" coc-vim
Plug 'neoclide/coc.nvim', {'branch':'release'}
"" vim-terminal
"" NeoFormat
Plug 'sbdchd/neoformat'
"" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && pnpm install' }
""fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()
"}}}
"" NERDTree settings
"{{{
nnoremap <leader>np :NERDTreeToggle<cr>
"}}}
"" coc-nvim settings
"{{{
"" this setting is to select completion option with enter
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm(): "\<C-g>u\<CR>"
hi CocFloating ctermbg=darkblue ctermfg=white
"" map NeoFormat
nnoremap <leader>neo :Neoformat<cr>
"}}}
"" NeoFormat settings
"{{{
"let g:neoformat_javascript_prettier = {
"  \ 'exe': 'prettier',
"  \ 'stderr':'~/log',
"  \ }
"let g:neoformat_try_node_exe = 1
"let g:neoformat_enabled_javascipt=['prettier']
"let g:neoformat_run_all_formatters = 1
"let g:noformat_basic_foramt_align=1
"let g:neoformat_basic_format_retab=1
"let g:neoformat_basoc_format_trim=1
"}}}
"" markdown-preview
"{{{
nnoremap <leader>mdp :MarkdownPreview<cr>
nnoremap <leader>smdp :MarkdownPreviewStop<cr>
let g:mkdp_port = '6060'
let g:mkdp_theme = 'dark'
"}}}
"" statusline setting
"{{{
""" filename
set statusline=%f
""" to right edge
set statusline+=%=
""" current line
set statusline+=%l
""" /
set statusline+=/
""" all lines
set statusline+=%L
"}}}
"" code wrap
"{{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
"}}}
"" terminal settings
"{{{
set termwinsize=5*100
""" ctrl-b turns into editor mode and i or a turns into a terminal
tnoremap <c-b> <c-\><c-n>
nnoremap <leader>te :rightbelow terminal<cr>
"}}}
"" fzfsettings
"{{{
let g:fzf_preview_windows = ['right,50%','ctrl-/']
nnoremap <leader>zf :Files<cr>
nnoremap <leader>gzf :GFiles<cr>
nnoremap <leader>zfl :Lines<cr>
nnoremap <leader>fw :Windows<cr>
nnoremap <leader>zh :History<cr>
"}}}
"" vimscripts test

