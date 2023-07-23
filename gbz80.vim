" Vim syntax file
" Language:     GBZ80 assembler/rgbasm assembler
" Maintainer:   Seth Loveall <baja-blastoise@protonmail.com>
" Last Change:  2023 July 18

" quite when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" do we need case match for variable names?
syn case ignore

" GBZ80 assembly instructions
syn keyword gbz80Instruction adc add and cp dec inc or sbc sub xor
syn keyword gbz80Instruction bit res set swap
syn keyword gbz80Instruction rl rla rlc rlca rr rra rrc rrca sla sra srl
syn keyword gbz80Instruction ld ldh
syn keyword gbz80Instruction call jp jr ret reti rst callfar farcall
syn keyword gbz80Instruction ccf cpl daa di ei halt nop scf stop
syn keyword gbz80Instruction print println

" stack instructions
syn keyword gbz80SpecInst add dec inc ld pop push "TODO: CLEAN UP DUPLICATES MATCHING THIS ROW

" memory instructions
syn keyword gbz80SpecInst db ds dw dl
syn region gbz80MemBlock  start="\[" end="\]"

" other instructions?
syn keyword gbz80SpecInst def equ align

" Labels
syn match gbz80Label        "[a-z_][a-z0-9_]*:"
syn match gbz80Label        "\.[a-z_][a-z0-9_]*"
syn match gbz80SpecialLabel "[a-z_][a-z0-9_]*::"

" Constants TODO: NOT SURE ABOUT THIS ONE
syn match gbz80Constant "[a-z_][a-z0-9_]*equ"
syn match gbz80StringConst "[a-z_][a-z0-9_]*equs"

" TODO: should be capital?
syn keyword gbz80Macro macro endm section export purge incbin
syn keyword gbz80Macro union endu nextu include
syn keyword gbz80Macro rept endr fail warn
syn keyword gbz80Macro assert static_assert
syn keyword gbz80Macro opt popo pusho

" conditionals
syn keyword gbz80Conditional if elif else endc

" comments
syn match gbz80Comment ";.*"
syn region gbz80CommentBlock start="/\*" end="\*/"

" string
syn region gbz80String start="\"" end="\""

" register
syn keyword gbz80Register a b c d e h l bc de hl

" condition codes
syn keyword gbz80ConCodes z nz c nc !cc

" number types - could restrict hex/oct/bin to maximum lenth for gameboy?
syn match gbz80Hex "\$[a-f0-9]\+"
syn match gbz80Oct "&[0-7]\+"
syn match gbz80Bin "%[0-1]\+"
syn match gbz80Graph "`[0-3]\{8}"

" todo/etc.
syn keyword gbz80ToDo contained TODO FIXME NOTE
" TODO: todo doesn't work LMAO

" define default highlighting
hi def link gbz80Instruction        Statement
hi def link gbz80SpecInst           Statement
hi def link gbz80Constant           Constant
hi def link gbz80StringConst        Constant
hi def link gbz80Label              Label
hi def link gbz80SpecialLabel       Label
hi def link gbz80Comment            Comment
hi def link gbz80CommentBlock       Comment
hi def link gbz80Macro              PreProc
hi def link gbz80Conditional        Conditional
hi def link gbz80String             String
hi def link gbz80Register           Debug
hi def link gbz80Hex                Number
hi def link gbz80Oct                Number
hi def link gbz80Bin                Number
hi def link gbz80Graph              Number
hi def link gbz80ConCodes           Conditional
hi def link gbz80MemBlock           PreProc
hi def link gbz80ToDo               Todo

let b:current_syntax = "gbz80"
