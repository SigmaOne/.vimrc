set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" vim-project configuration
let g:project_use_nerdtree = 1
set rtp+=~/.vim/bundle/vim-project/
call project#rc("~/code")

Project 'pd'
Project 'pd4'
Project 'orbs.io'

" -----------Vundle-----------
" Plugin from github repo
Plugin 'gmarik/vundle'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-rails'
Plugin 'amiorin/vim-project'
" Plugin from git repository
Plugin 'scrooloose/nerdtree.git'
" Plugin from "Vim scripts" by name
Plugin 'Buffergator'
" Now we can turn our filetype functionality back on
filetype plugin indent on

" -----------KeyMaps-----------
:nmap <F1> :NERDTreeToggle<CR>
