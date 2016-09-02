" ------------- Vundle configuration ------------- "
set nocompatible                  " Not compatible with vi
filetype off                      " Required
set rtp+=~/.vim/bundle/Vundle.vim " Set the runtime path to include Vundle

" Keep your 'Pligin' commands between #begin and #end
call vundle#begin()
Plugin 'gmarik/vundle'                    " Plugin for other plugin installations
Plugin 'amiorin/vim-project'              " Gives project-like structure at startup
Plugin 'scrooloose/nerdtree.git'          " Adds project files tree 
Plugin 'Raimondi/delimitMate'             " Adds automatic closing of quotes, parenthesis, etc...
Plugin 'wikitopian/hardmode'              " It's my most favourite plugin - removes hjkl home row, so you can practice advanced vim movements 
Plugin 'kien/ctrlp.vim'                   " Gives amazing smart file finding
Plugin 'scrooloose/syntastic'             " Adds marks and menu for syntax\error checking
Plugin 'bling/vim-airline'                " Adds nice looking lines on top and at the bottom with filename, buffers, tabs - current mode, errors, etc...   
Plugin 'tmhedberg/matchit'                " Adds advanced '%' movement for none c-like languages 
Plugin 'vim-scripts/AutoComplPop'         " Adds automatic completition pop-ups
Plugin 'YorickPeterse/happy_hacking.vim'  " Adds my favourite color scheme
Plugin 'ervandew/supertab'                " Adds tab completition
call vundle#end()            

filetype plugin indent on    " Enables filetype detection, filetype-specific indenting and filetype plugins

" ----------- Plugin configurations ------------"
"
" --- Hard-mode ---
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" --- Vim-project ---
let g:project_use_nerdtree = 1
set rtp+=~/.vim/bundle/vim-project/

" --- Ctrl-P ---
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" --- Project View ---
call project#rc("~/code")
Project 'projectname'

" --- Syntastic ---
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_ruby_checkers = ['rubocop']

" --- NerdTree --- 
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '|'

" --- Vim-airline
let g:airline#extensions#tabline#enabled = 1
set noshowmode  " removes standard vim's showmode

" ----------- Custom key maps ----------- "
nnoremap <C-t> :tabnew<CR>
nmap <F1> :NERDTreeToggle<CR>
cmap w!! w !sudo tee > /dev/null %    " Allows saving of files as sudo when I forgot to start vim using sudo.

" ----------- Ruby ---------------"
let ruby_operators = 1
let ruby_space_errors = 1
let ruby_spellcheck_strings = 1

" ----------- Custom settings ---------- "
set ts=2 sts=2 sw=2                            " Unofficial files and .vimrc
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 " Ruby
autocmd Filetype java setlocal ts=4 sts=4 sw=4 " Java
autocmd Filetype html setlocal ts=2 sts=2 sw=2 " Html

" set spell                             " Adds spell checking
" set relativenumber                    " Adds relative tab numbers(bad with hardmode)
set number                              " Adds line numbers
set tabstop=4 shiftwidth=4 expandtab    " Makes tab key insert 4 spaces
set exrc                                " Adds project-specific .vimrc files
set secure                              " Don't allows .vimrc access to shell
set nowrap                              " Don't automatically inserts newlines if string is huge
set formatoptions-=cro                  " Removes automatic newlines
filetype plugin indent on               " Adds syntax highlighting
color happy_hacking                     " Enables my favourite colorscheme
syntax on                               " Enables syntax highlighting
set cursorline                          " Adds cursor line highlighting
hi CursorLine cterm=NONE ctermbg=black  " Changes cursorline highlighting to fancy black
