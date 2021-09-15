colorscheme desert
hi Search ctermfg=255 ctermbg=4
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
"set cindent
:command Tabify %retab!
nnoremap <CR> :noh<CR><CR>

let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction
