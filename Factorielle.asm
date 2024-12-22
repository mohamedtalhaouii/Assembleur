#SimuProc 1.4.2.0
LDT "Entrer un Enrier : "
STA 020 ; N
STA 021 ; F
INC 030 ; i = 1

LDA 020
CMP 030 ; Si ( N = i )
JEQ 00F

LDA 020
CMP 030
JME 00A ; Si( N < i )
LDA 021
MUL 030 ; F = F * i
STA 021
INC 030 ; i++
JMP 004
;Affichage
MSG "Factorielle est : "
LDA 021
EAP
HLT


#30
0 ; i = 0
