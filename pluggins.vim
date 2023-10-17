call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'github/copilot.vim'
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs' "cerrar corchetes
Plug 'alvan/vim-closetag' "cerrar tags con >
Plug 'tpope/vim-surround' "con S
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'ap/vim-css-color'
Plug 'mattn/emmet-vim'
"Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline' "pestañas arriba
"Plug 'neovim/nvim-lspconfig'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
"Pluggins para JS

Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
"Snippets JS
Plug 'mlaursen/vim-react-snippets'
Plug 'turbio/bracey.vim'

call plug#end()

"Gruvbox
colorscheme gruvbox 
let g:gruvbox_contrast_dark = "hard"
let g:airline_theme='gruvbox'
let g:user_emmet_install_global = 0
autocmd FileType html,css,php EmmetInstall
autocmd FileType html,css,php imap !,, html:5<c-y>,
autocmd FileType html,css,php imap ,, <c-y>,
let g:user_emmet_mode='a'

"copilot
imap <C-d> <C-]>
imap <C-n> <Plug>(copilot-next)
imap <C-p> <Plug>(copilot-previous)
let g:loaded_language_client = 1

