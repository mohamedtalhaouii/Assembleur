#SimuProc 1.4.2.0
LDT "Entrer un entier compris entre 10 et 100 : "
STA 20

LDA 20
CMP 30 ; N < 10
JME 00
LDA 20
CMP 32 ; N > 100
JMA 00

LDA 20
CMP 30 ; N > 10
JMA 00B
    LDA 20
    CMP 32 ; N < 100
    JME 00E

MSG "La Reponse est Correct !"
HLT

#30
1010
#32
1100100
