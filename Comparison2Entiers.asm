#SimuProc 1.4.2.0
MSG "Comparison Enter deux Entiers"
LDT "Entrer La valeur de A :"
STA 030
LDT "Entrer La valeur de B :"
STA 031

LDA 030
CMP 031
JNE 00A ;Sauter Si A != B
MSG "A et B sont Egaux !"
JMP 010 ;Fin

LDA 030
CMP 031
JMA 00F ;Sauter Si A > B
MSG "A est Plus Petite que B"
JMP 010 ;Fin

MSG "A est Plus Grande que B"
HLT
