# Résumé des Instructions en Langage Assembleur


### 1. **Instructions de Base**
   - **MSG** : Affiche un message.
     ```assembly
     MSG 'Hello World'
     ```
   - **LDT** : Charge une valeur saisie au clavier dans le registre `AX`.
     ```assembly
     LDT 'Saisir une valeur : '
     ```
   - **STA [mem] / LDA [mem]** : Stocke ou charge le contenu de `AX` dans/de l’adresse mémoire.
     ```assembly
     STA 15       ; Stocke AX dans l'adresse mémoire 15
     LDA 15       ; Charge le contenu de l'adresse mémoire 15 dans AX
     ```
   - **EAP** : Affiche le contenu de `AX`.
     ```assembly
     EAP
     ```
   - **HLT** : Terminer le programme.
     ```assembly
     HLT
     ```

### 2. **Instructions Arithmétiques**
   - **CLA** : Remet `AX` à zéro.
     ```assembly
     CLA
     ```
   - **XAB** : Échange les valeurs entre `AX` et `BX`.
     ```assembly
     XAB
     ```
   - **ADD [mem] / SUB [mem]** : Additionne ou soustrait la valeur en mémoire avec `AX`.
     ```assembly
     ADD 15       ; AX = AX + valeur en mémoire @15
     SUB 15       ; AX = AX - valeur en mémoire @15
     ```
   - **MUL [mem] / DIV [mem]** : Multiplie ou divise `AX` par la valeur en mémoire.
     ```assembly
     MUL 15       ; AX = AX * valeur en mémoire @15
     DIV 15       ; AX = AX / valeur en mémoire @15, BX = reste
     ```
   - **ADDF / SUBF / MULF / DIVF [mem]** : Opérations arithmétiques pour les nombres flottants.
     ```assembly
     ADDF 20      ; Addition flottante avec le contenu de @20
     SUBF 20      ; Soustraction flottante avec le contenu de @20
     ```

### 3. **Instructions Conditionnelles et de Contrôle de Flux**
   - **INC [dest] / DEC [dest]** : Incrémente ou décrémente une valeur.
     ```assembly
     INC AX       ; Incrémente AX de 1
     DEC AX       ; Décrémente AX de 1
     ```
   - **LOOP [mem]** : Boucle en décrémentant `CX` jusqu’à `CX = 0`.
     ```assembly
     LOOP 1       ; Sauter à l’adresse 1 si CX ≠ 0
     ```
   - **JMP [mem]** : Saut inconditionnel vers une adresse.
     ```assembly
     JMP 21       ; Saut à l’adresse mémoire 21
     ```
   - **CMP [mem]** : Compare `AX` avec une valeur en mémoire et met à jour les flags.
     ```assembly
     CMP 15       ; Compare AX avec la valeur en mémoire @15
     ```
   - **JEQ / JNE** : Saut si égal ou différent.
     ```assembly
     JEQ 10       ; Saut à @10 si Z = 1 (AX = valeur)
     JNE 11       ; Saut à @11 si Z = 0 (AX ≠ valeur)
     ```
   - **JME / JMA** : Saut si inférieur ou supérieur après une comparaison.
     ```assembly
     JME 12       ; Saut à @12 si N = 1 (AX < valeur)
     JMA 13       ; Saut à @13 si Z = 0 et N = 0 (AX > valeur)
     ```
   - **JC / JNC** : Saut si Carry Flag activé/désactivé.
     ```assembly
     JC 14        ; Saut si Carry Flag est activé (C = 1)
     JNC 15       ; Saut si Carry Flag est désactivé (C = 0)
     ```
   - **JO / JNO** : Saut si Overflow Flag activé/désactivé.
     ```assembly
     JO 16        ; Saut si Overflow Flag est activé (O = 1)
     JNO 17       ; Saut si Overflow Flag est désactivé (O = 0)
     ```

### 4. **Instructions de Contrôle des Drapeaux (Flags)**
   - **CLN** : Efface le flag négatif.
     ```assembly
     CLN
     ```
   - **CLC / STC** : Efface ou active le Carry Flag.
     ```assembly
     CLC         ; Désactive le Carry Flag
     STC         ; Active le Carry Flag
     ```
   - **CMC** : Inverse le Carry Flag.
     ```assembly
     CMC
     ```

### 5. **Instructions pour les Nombres Flottants**
   - **IN [registre, port] / OUT [port, registre]** : I/O pour les nombres flottants.
     ```assembly
     IN AX, 1     ; Charge un nombre flottant dans AX
     OUT 1, AX    ; Affiche le contenu flottant de AX
     ```
   - **LDF [mem] / STF [mem]** : Charge ou stocke un nombre flottant en mémoire.
     ```assembly
     LDF 18       ; Charge le nombre flottant 32 bits de @18 et @19 dans BX et AX
     STF 20       ; Stocke le nombre flottant dans @20 et @21
     ```

### 6. **Instructions pour la Gestion de la Pile**
   - **PUSH [registre]** : Empile le contenu d’un registre.
     ```assembly
     PUSH AX      ; Empile AX sur la pile
     ```
   - **POP [registre]** : Dépile la dernière valeur et la place dans le registre spécifié.
     ```assembly
     POP AX       ; Dépile dans AX
     ```

---


<h3 align="center"> 🧑🏻‍💻 | Made By : <a href="https://github.com/mohamedtalhaouii" target="_blank">Mohamed Talhaoui</a></h3>
