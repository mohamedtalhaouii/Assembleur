#SimuProc 1.4.2.0
MSG "Calcule L'expression A - B/(C + D) + E * F - G"

LDT "Etrer la valeur de A :"
STA 040
LDT "Etrer la valeur de B :"
STA 041
LDT "Etrer la valeur de C :"
STA 042
LDT "Etrer la valeur de D :"
STA 043
LDT "Etrer la valeur de E :"
STA 044
LDT "Etrer la valeur de F :"
STA 045
LDT "Etrer la valeur de G :"
STA 046

LDA 042
ADD 043 ;C + D
STA 042

LDA 041
DIV 042 ;B/(C + D)
STA 042

LDA 044
MUL 045 ;E * F
STA 044

LDA 040
SUB 042 ;A - B/(C + D)
STA 042

LDA 042
ADD 044 ;A - B/(C + D) + E * F
STA 044

LDA 044
SUB 046 ;A - B/(C + D) + E * F - G
STA 046

LDA 046
EAP
HLT