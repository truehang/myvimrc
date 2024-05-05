" autoindent 
set autoindent
" smartindent is a feature in Vim that will automatically indent new lines with the same amount of whitespace as the previous line.
set smartindent

call plug#begin('~/.vim/plugged')
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation for GitHub; translates to https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/seoul256.vim.git'

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Using a non-default branch
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Use 'dir' option to install plugin in a non-default directory
Plug 'junegunn/fzf', { 'dir': '~/.fzf' }

" Post-update hook: run a shell command after installing or updating the plugin
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Post-update hook can be a lambda expression
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" If the vim plugin is in a subdirectory, use 'rtp' option to specify its path
Plug 'nsf/gocode', { 'rtp': 'vim' }

" On-demand loading: loaded when the specified command is executed
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

" On-demand loading: loaded when a file with a specific file type is opened
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" YCM (YouCompleteMe) 
Plug 'ycm-core/YouCompleteMe'

" ale linter
Plug 'dense-analysis/ale'


" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting


" YouCompleteMe
nnoremap <leader>g  :YcmCompleter GoToDefinition<CR>
nnoremap <leader>l  :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>r  :YcmCompleter GoToReferences<CR>
nnoremap <leader>h  :YcmCompleter GoToType<CR>
nnoremap <leader>u  :YcmCompleter GoToImplementation<CR>
nmap <F5> :YcmDiags<CR>

" ale
let g:ale_linters = {
    \ 'javascript': ['eslint'],
    \ 'python': ['autopep8'],
    \ 'cpp': ['clang-format'],
    \ }
let g:ale_fixers = {
    \ 'javascript': ['eslint'],
    \ 'python': ['autopep8'],
    \ 'cpp': ['clang-format'],
    \ }
let g:ale_fix_on_save = 1


