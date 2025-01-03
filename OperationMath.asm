#SimuProc 1.4.2.0
MSG "Calcule L'expression A - B/(C + D) + E * F - G"

LDT "Etrer la valeur de A :"
STA 40
LDT "Etrer la valeur de B :"
STA 41
LDT "Etrer la valeur de C :"
STA 42
LDT "Etrer la valeur de D :"
STA 43
LDT "Etrer la valeur de E :"
STA 44
LDT "Etrer la valeur de F :"
STA 45
LDT "Etrer la valeur de G :"
STA 46

LDA 42
ADD 43 ;C + D
STA 42

LDA 41
DIV 42 ;B/(C + D)
STA 42

LDA 44
MUL 45 ;E * F
STA 44

LDA 40
SUB 42 ;A - B/(C + D)
STA 42

LDA 42
ADD 44 ;A - B/(C + D) + E * F
STA 44

LDA 44
SUB 46 ;A - B/(C + D) + E * F - G
STA 46

LDA 46
EAP
HLT