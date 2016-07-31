" ------------ Vundle configuration ------------- "
set nocompatible                  " Be iMproved, required
filetype off                      " Required
set rtp+=~/.vim/bundle/Vundle.vim " Set the runtime path to include Vundle

" Keep your "Pligin" commands between #begin and #end
call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'amiorin/vim-project'
Plugin 'scrooloose/nerdtree.git'
Plugin 'flazz/vim-colorschemes'
Plugin 'blueshirts/darcula'
Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'Raimondi/delimitMate'
call vundle#end()            

filetype plugin indent on    " required

" ----------- Plugin configurations ------------"
" --- Vim-project ---
let g:project_use_nerdtree = 1
set rtp+=~/.vim/bundle/vim-project/

call project#rc("~/code")
Project 'orbs.io'

" --- NerdTree --- 
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '|'

" --- java autocomplete ---
autocmd FileType java setlocal omnifunc=javacomplete#Complete
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
nmap <F5> <Plug>(JavaComplete-Imports-Add)
nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)

" ----------- Custom key maps ----------- "
:nmap <F1> :NERDTreeToggle<CR>
cmap w!! w !sudo tee > /dev/null %    " Allow saving of files as sudo when I forgot to start vim using sudo.

" ----------- Custom settings ---------- "
filetype plugin indent on               " Add syntax highlighting
set spell                               " Add spell checking
set relativenumber                      " Add relative tab numbers
set tabstop=4 shiftwidth=4 expandtab    " Make tab key insert 4 spaces
set exrc                                " Add project-specific .vimrc files
set secure                              " Don't allow .vimrc access to shell

syntax enable                           " Add syntax highlighting
colorscheme srcery
