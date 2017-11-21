"syntax match Brackets display '[(){}\[\]]'
"highlight Brackets ctermfg=80

syntax match ClassName display '\<\([A-Z][a-z0-9]*\)\+\>'
syntax match ClassName display '\.\@<=\*'
highlight ClassName ctermfg=33
highlight Comment ctermfg=241
highlight Statement ctermfg=166
highlight Repeat ctermfg=166
highlight Operator ctermfg=166
highlight Conditional ctermfg=166
highlight Function ctermfg=168

syntax match Constructor display '\(\(public\|protected\|private\)\s\+\)\@<=\([A-Z][a-z0-9]*\)\+\( *(\)\@='
highlight Constructor ctermfg=32

syntax match Final '\<[A-Z][A-Z0-9]\+\%(_[A-Z0-9]\+\)*\>'
"highlight Final ctermfg=255

syn match javaAnnotation "@\([_$a-zA-Z][_$a-zA-Z0-9]*\.\)*[_$a-zA-Z][_$a-zA-Z0-9]*\>"

"hi javaTypedef term=italic cterm=NONE ctermfg=72 ctermbg=NONE gui=bold guifg=#60ff60 guibg=NONE
