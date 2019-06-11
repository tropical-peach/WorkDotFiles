set background=dark
hi clear
if exists("syntax_on")
		syntax reset
endif

let g:colors_name = "peachy"

syn keyword TODO FIXME TODO
hi TODO guifg=#ef1057 guibg=#72994b term=bold
syn match myKEYS contained  "\<\(NOTE\|BUG\|TODO\|FIXME\):"
hi def link myKEYS TODO

hi Normal guibg=#15070b guifg=PapayaWhip ctermfg=magenta 
hi NonText guibg=#1f0f0f guifg=Brown2 ctermfg=Brown ctermbg=Black
hi LineNr guibg=#1f0f0f guifg=Brown2
hi DiffDelete guibg=DarkRed guifg=White ctermbg=DarkRed ctermfg=White
hi DiffAdd guibg=DarkGreen guifg=White ctermbg=DarkGreen ctermfg=White
hi DiffText gui=NONE guibg=DarkCyan guifg=Yellow ctermbg=DarkCyan ctermfg=Yellow
hi DiffChange guibg=DarkCyan guifg=White ctermbg=DarkCyan ctermfg=White
hi Constant guifg=#72994b ctermfg=Red
hi Comment guifg=#A0773D
hi PreProc guifg=#ce7191 ctermfg=Green
hi StatusLine guibg=White guifg=Sienna4 cterm=NONE ctermfg=Black ctermbg=Brown
hi StatusLineNC gui=NONE guifg=Black guibg=Gray ctermbg=Black ctermfg=Gray
hi VertSplit guifg=Gray
hi Search guibg=Gold3 ctermbg=darkred ctermfg=Black
hi Type gui=NONE guifg=DarkSeaGreen2
hi Statement gui=NONE guifg=#5090b3
hi FoldColumn guibg=#1f0f0f ctermfg=Cyan ctermbg=Black
hi Folded guibg=grey20 ctermfg=Cyan ctermbg=Black



