" Indentation settings
setlocal shiftwidth=4
setlocal tabstop=4
setlocal noexpandtab
setlocal number

" Smart indent for C
setlocal smartindent

" Additional indentation based on line content (optional)
" You can implement custom logic here similar to the Python example
" but tailored to Betty style guidelines for C.

" Comment highlighting
syntax on
syn match cComment "/\*\([^*]\|*\*\([^*]\*\)\)*\*/$" contains=cComment
syn match cPreprocLine "^\s*#\s.*$"

" Keyword highlighting
syn match cKeyword "int|float|double|char|void|break|case|continue|default|do|else|enum|extern|for|goto|if|return|sizeof|static|struct|switch|typedef|union|unsigned|while"

" Operator highlighting
syn match cOperator "[\+\-\*\/%~=\!\^\&|\<\>]|[?:;,]"

" Variable and function highlighting
syn match cVariable "[a-zA-Z_\d]+"
syn match cFunctionDefinition "\s*\([a-zA-Z_\d]+\)\s*"

" Preprocessor directive highlighting
syn match cPreproc "#\s*"

" Disable vim defaults for highlighting comments as cKeywords
"hi! clear cComment
"hi! clear cPreprocLine

" Set highlighting colors (adjust to your preference)
"hi! cComment guifg=#000080
"hi! cPreprocLine guifg=#{F8F8F8}
"hi! cKeyword guifg=#FF0000
"hi! cOperator guifg=#{EE9B00}
"hi! cVariable guifg=#FFFF00
"hi! cFunctionDefinition guifg=#{C678DD}
"hi! cPreproc guifg=#{FBE878}
