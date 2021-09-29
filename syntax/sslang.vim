if exists("b:current_syntax")
    finish
endif

syn keyword sslangKeyword if else let Sched case loop do par later wait
syn keyword sslangUnits ns us ms secs mins hrs

syn match sslangOperator "\(<<\|>>\|[-+*/%&^|<>!=]\)"
syn match sslangOperator ":"
syn match sslangOperator "->"
syn match sslangOperator "<-"

syn match sslangIdentifier "[a-zA-Z][a-zA-Z0-9_']*" contained

syn match sslangNumber '\<[+-]\=\d\+\>'

syn match sslangComment "//.*$"
syn region sslangComment start="/\*" end="\*/" extend

syn region sslangString start='"' skip=/\v\\./ end='"'
syn region sslangString start="'" skip=/\v\\./ end="'"

syn keyword sslangBool true false

syn keyword sslangType Int Bool Event 

hi def link sslangKeyword Keyword
hi def link sslangOperator Operator
hi def link sslangUnits Special
hi def link sslangBool Boolean
hi def link sslangType Type
hi def link sslangIdentifier Identifier
hi def link sslangNumber Number
hi def link sslangComment Comment
hi def link sslangString String

let b:current_syntax = "sslang"
