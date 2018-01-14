" Syntax file for objdump output
syntax match Comment '\/\/.*\_$' contains=Identifier
syntax match Constant '-\?0x[0-9a-fA-F]\+'
syntax match Identifier '<\zs.*\ze>'
syntax match Label '$[a-z0-9]\+'
syntax keyword Operator ret
