# Résumé des Instructions en Langage Assembleur (SimuProc)

## **Instructions de base**

1. **MSG**  
   Affiche un message à l'écran.  
   ```assembly
   MSG 'Bonjour le monde!' ; Affiche "Bonjour le monde!"
   ```

2. **LDT**  
   Lit une valeur du clavier et la place dans AX.  
   ```assembly
   LDT 'Entrez une valeur : ' ; Demande une valeur et la stocke dans AX
   ```

3. **STA [mem]**  
   Stocke le contenu de AX dans une adresse mémoire.  
   ```assembly
   STA 10 ; Stocke la valeur de AX à l'adresse mémoire 10
   ```

4. **LDA [mem]**  
   Charge dans AX le contenu d'une adresse mémoire.  
   ```assembly
   LDA 10 ; Charge la valeur de l'adresse mémoire 10 dans AX
   ```

5. **EAP**  
   Affiche le contenu de AX.  
   ```assembly
   EAP ; Affiche la valeur de AX
   ```

6. **HLT**  
   Termine l'exécution du programme.  
   ```assembly
   HLT ; Arrête le programme
   ```

7. **CLA**  
   Met AX à 0.  
   ```assembly
   CLA ; AX = 0
   ```

8. **XAB**  
   Échange les valeurs de AX et BX.  
   ```assembly
   XAB ; Échange AX et BX
   ```

9. **ADD [mem]**  
   Additionne AX avec le contenu d'une adresse mémoire.  
   ```assembly
   ADD 10 ; AX = AX + [adresse 10]
   ```

10. **SUB [mem]**  
    Soustrait le contenu d'une adresse mémoire de AX.  
    ```assembly
    SUB 10 ; AX = AX - [adresse 10]
    ```

11. **MUL [mem]**  
    Multiplie AX par le contenu d'une adresse mémoire.  
    ```assembly
    MUL 10 ; AX = AX * [adresse 10]
    ```

12. **DIV [mem]**  
    Divise AX par le contenu d'une adresse mémoire, stocke le reste dans BX.  
    ```assembly
    DIV 10 ; AX = AX / [adresse 10], BX = reste
    ```

13. **MOV [dest, orig]**  
    Copie la valeur de l'origine vers la destination.  
    ```assembly
    MOV AX, 10 ; Copie la valeur de l'adresse 10 dans AX
    ```

---

### **Instructions conditionnelles, répétitives et de contrôle**

1. **INC [dest]**  
   Incrémente la destination de 1.  
   ```assembly
   INC AX ; AX = AX + 1
   ```

2. **DEC [dest]**  
   Décrémente la destination de 1.  
   ```assembly
   DEC AX ; AX = AX - 1
   ```

3. **LOOP [mem]**  
   Décrémente CX et saute à une adresse mémoire si CX != 0.  
   ```assembly
   MOV CX, 5 ; Initialise CX à 5
   LOOP 1 ; Décrémente CX et saute à l'adresse 1 si CX != 0
   ```

4. **JMP [mem]**  
   Saute inconditionnellement à une adresse mémoire.  
   ```assembly
   JMP 10 ; Saute à l'adresse 10
   ```

5. **CMP [mem]**  
   Compare AX avec le contenu d'une adresse mémoire.  
   ```assembly
   CMP 10 ; Compare AX avec [adresse 10]
   ```

6. **JEQ [mem]**  
   Saute à une adresse mémoire si Z=1 (égalité).  
   ```assembly
   JEQ 10 ; Saute à l'adresse 10 si Z=1
   ```

7. **JNE [mem]**  
   Saute à une adresse mémoire si Z=0 (inégalité).  
   ```assembly
   JNE 10 ; Saute à l'adresse 10 si Z=0
   ```

8. **JME [mem]**  
   Saute à une adresse mémoire si N=1 (AX < [mem]).  
   ```assembly
   JME 10 ; Saute à l'adresse 10 si N=1
   ```

9. **JMA [mem]**  
   Saute à une adresse mémoire si Z=0 et N=0 (AX > [mem]).  
   ```assembly
   JMA 10 ; Saute à l'adresse 10 si Z=0 et N=0
   ```

10. **JC [mem]**  
    Saute à une adresse mémoire si C=1 (retenue).  
    ```assembly
    JC 10 ; Saute à l'adresse 10 si C=1
    ```

11. **JNC [mem]**  
    Saute à une adresse mémoire si C=0 (pas de retenue).  
    ```assembly
    JNC 10 ; Saute à l'adresse 10 si C=0
    ```

12. **JO [mem]**  
    Saute à une adresse mémoire si O=1 (débordement).  
    ```assembly
    JO 10 ; Saute à l'adresse 10 si O=1
    ```

13. **JNO [mem]**  
    Saute à une adresse mémoire si O=0 (pas de débordement).  
    ```assembly
    JNO 10 ; Saute à l'adresse 10 si O=0
    ```

14. **CLN**  
    Efface le flag négatif (N=0).  
    ```assembly
    CLN ; N = 0
    ```

15. **CLC**  
    Efface le flag de retenue (C=0).  
    ```assembly
    CLC ; C = 0
    ```

16. **STC**  
    Active le flag de retenue (C=1).  
    ```assembly
    STC ; C = 1
    ```

17. **CMC**  
    Inverse le flag de retenue.  
    ```assembly
    CMC ; Inverse C (si C=1, C=0 et vice versa)
    ```

---

### **Nombres à virgule flottante**

1. **IN [registre, port]**  
   Charge un nombre à virgule flottante dans AX et BX.  
   ```assembly
   IN AX, 1 ; Charge un nombre à virgule flottante dans AX et BX
   ```

2. **OUT [port, registre]**  
   Affiche un nombre à virgule flottante.  
   ```assembly
   OUT 1, AX ; Affiche le nombre à virgule flottante dans AX et BX
   ```

3. **LDF [mem]**  
   Charge un nombre 32 bits (IEEE) dans AX et BX.  
   ```assembly
   LDF 10 ; Charge le nombre à virgule flottante de l'adresse 10 dans AX et BX
   ```

4. **STF [mem]**  
   Stocke un nombre 32 bits (IEEE) en mémoire.  
   ```assembly
   STF 10 ; Stocke le nombre dans AX et BX à l'adresse 10
   ```

5. **ADDF [mem]**  
   Additionne deux nombres à virgule flottante.  
   ```assembly
   ADDF 10 ; AX et BX = AX et BX + [adresse 10]
   ```

6. **SUBF [mem]**  
   Soustrait deux nombres à virgule flottante.  
   ```assembly
   SUBF 10 ; AX et BX = AX et BX - [adresse 10]
   ```

7. **MULF [mem]**  
   Multiplie deux nombres à virgule flottante.  
   ```assembly
   MULF 10 ; AX et BX = AX et BX * [adresse 10]
   ```

8. **DIVF [mem]**  
   Divise deux nombres à virgule flottante.  
   ```assembly
   DIVF 10 ; AX et BX = AX et BX / [adresse 10]
   ```

---

### **La pile**

1. **PUSH [registre]**  
   Empile la valeur d'un registre.  
   ```assembly
   PUSH AX ; Empile la valeur de AX
   ```

2. **POP [registre]**  
   Dépile la dernière valeur de la pile dans un registre.  
   ```assembly
   POP AX ; Dépile la dernière valeur de la pile dans AX
   ```

---


<h3 align="center"> 🧑🏻‍💻 | Made By : <a href="https://github.com/mohamedtalhaouii" target="_blank">Mohamed Talhaoui</a></h3>
