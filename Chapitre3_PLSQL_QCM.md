# QCM - Chapitre 3 Partie 1 : Le Langage PL/SQL

---

### Question 1
Quelle est la signification de PL/SQL ?

- A) Programming Language for SQL
- B) Procedural Language extension to SQL
- C) Public Language SQL
- D) Private Language SQL

---

### Question 2
Quelle est la différence principale entre SQL et PL/SQL ?

- A) SQL est plus rapide
- B) SQL est un langage ensembliste (4ème génération) tandis que PL/SQL est une sur-couche procédurale
- C) PL/SQL ne peut pas utiliser SQL
- D) Il n'y a aucune différence

---

### Question 3
Chaque programme PL/SQL est :

- A) Une fonction mathématique
- B) Un bloc (BEGIN - END)
- C) Un fichier texte
- D) Une requête SELECT

---

### Question 4
Quel est l'avantage principal de PL/SQL dans une architecture Client-Serveur ?

- A) Le client exécute tout le code
- B) Le bloc de requêtes est envoyé au serveur qui l'exécute et renvoie un seul résultat final
- C) Chaque requête est traitée séparément
- D) Le serveur n'exécute rien

---

### Question 5
Quelles sont les trois sections principales d'un bloc PL/SQL ?

- A) SELECT, INSERT, UPDATE
- B) DECLARE, BEGIN, EXCEPTION
- C) CREATE, ALTER, DROP
- D) OPEN, FETCH, CLOSE

---

### Question 6
Dans quelle section d'un bloc PL/SQL déclare-t-on les variables locales ?

- A) BEGIN
- B) DECLARE
- C) EXCEPTION
- D) END

---

### Question 7
La section BEGIN d'un bloc PL/SQL contient :

- A) Uniquement les déclarations
- B) Les ordres exécutables (SQL et PL)
- C) Uniquement les exceptions
- D) Rien

---

### Question 8
À quoi sert la section EXCEPTION d'un bloc PL/SQL ?

- A) Déclarer des variables
- B) Recevoir et gérer les erreurs (SQL ou utilisateur)
- C) Exécuter les requêtes
- D) Fermer les connexions

---

### Question 9
Comment déclarer une variable de type numérique avec 2 chiffres en PL/SQL ?

- A) nbr INTEGER(2);
- B) nbr NUMBER(2);
- C) nbr NUM(2);
- D) nbr NUMERIC(2);

---

### Question 10
Comment déclarer une constante en PL/SQL ?

- A) constante INTEGER := 5;
- B) minimum CONSTANT INTEGER := 5;
- C) CONST minimum = 5;
- D) minimum = 5 CONSTANT;

---

### Question 11
Comment déclarer une variable qui ne peut pas être nulle ?

- A) debut NUMBER NULL;
- B) debut NUMBER NOT NULL;
- C) debut NUMBER NO NULL;
- D) debut NUMBER != NULL;

---

### Question 12
La référence `employe.salaire%TYPE` permet de :

- A) Créer une nouvelle table
- B) Déclarer une variable du même type que la colonne salaire de la table employe
- C) Supprimer une colonne
- D) Modifier un type

---

### Question 13
La référence `employe%ROWTYPE` permet de :

- A) Déclarer une variable de type struct contenant tous les attributs d'une ligne de employe
- B) Créer une nouvelle table
- C) Supprimer une ligne
- D) Modifier une ligne

---

### Question 14
Quel est l'opérateur d'affectation en PL/SQL ?

- A) =
- B) :=
- C) ==
- D) <-

---

### Question 15
Quelle est la syntaxe correcte d'une structure IF en PL/SQL ?

- A) IF condition { instructions }
- B) IF condition THEN instructions; END IF;
- C) if (condition) then instructions fi
- D) IF condition DO instructions DONE

---

### Question 16
Comment écrire une structure IF avec plusieurs conditions alternatives ?

- A) IF ... ELSEIF ... ELSE ... ENDIF
- B) IF ... ELSIF ... ELSE ... END IF
- C) IF ... ELIF ... ELSE ... FI
- D) IF ... ELSE IF ... ELSE ... END

---

### Question 17
La structure CASE en PL/SQL permet de :

- A) Créer des tables
- B) Faire un choix selon la valeur d'une variable
- C) Supprimer des données
- D) Déclarer des variables

---

### Question 18
Quelle est la syntaxe correcte d'une boucle LOOP basique ?

- A) LOOP instructions ENDLOOP
- B) LOOP instructions; EXIT WHEN (condition); END LOOP;
- C) WHILE TRUE DO instructions DONE
- D) REPEAT instructions UNTIL condition

---

### Question 19
Quelle est la syntaxe correcte d'une boucle FOR en PL/SQL ?

- A) FOR i = 1 TO 10 DO ... DONE
- B) FOR (indice IN borne1..borne2) LOOP instructions; END LOOP;
- C) for i in range(1,10): ...
- D) FOR i := 1; i < 10; i++ LOOP ... END

---

### Question 20
L'option REVERSE dans une boucle FOR permet de :

- A) Inverser l'ordre des colonnes
- B) Parcourir les valeurs de l'indice en ordre décroissant
- C) Supprimer la boucle
- D) Répéter la boucle deux fois

---

### Question 21
Quelle est la syntaxe d'une boucle WHILE en PL/SQL ?

- A) WHILE condition { instructions }
- B) WHILE (condition) LOOP instructions; END LOOP;
- C) while condition do instructions done
- D) DO instructions WHILE condition

---

### Question 22
Pour afficher des résultats intermédiaires en PL/SQL, on utilise le package :

- A) SYS_OUTPUT
- B) DBMS_OUTPUT
- C) DISPLAY_OUTPUT
- D) PRINT_OUTPUT

---

### Question 23
Avant d'utiliser DBMS_OUTPUT.PUT_LINE, on doit exécuter :

- A) SET OUTPUT ON
- B) SET SERVEROUT ON
- C) ENABLE OUTPUT
- D) START OUTPUT

---

### Question 24
Quelle est la différence entre DBMS_OUTPUT.PUT et DBMS_OUTPUT.PUT_LINE ?

- A) PUT est plus rapide
- B) PUT écrit sans saut de ligne, PUT_LINE écrit avec saut de ligne
- C) Il n'y a pas de différence
- D) PUT_LINE ne peut pas afficher du texte

---

### Question 25
Pour effectuer un saut de ligne dans l'affichage, on utilise :

- A) DBMS_OUTPUT.NEWLINE
- B) DBMS_OUTPUT.NEW_LINE
- C) DBMS_OUTPUT.ENDL
- D) DBMS_OUTPUT.LINE_BREAK

---

### Question 26
La clause INTO dans un SELECT PL/SQL sert à :

- A) Créer une nouvelle table
- B) Ranger les valeurs des colonnes sélectionnées dans des variables
- C) Supprimer des données
- D) Joindre des tables

---

### Question 27
Quelle instruction PL/SQL permet de sélectionner une seule ligne ?

- A) SELECT ... FOR ...
- B) SELECT ... INTO ...
- C) SELECT ... FROM ... TO ...
- D) SELECT ... AS ...

---

### Question 28
Un curseur en PL/SQL est :

- A) Un pointeur de souris
- B) Une zone mémoire partagée (SGA) pour stocker les résultats d'une sélection multi-ligne
- C) Un type de variable booléenne
- D) Un fichier de configuration

---

### Question 29
Quelle est la différence entre un curseur implicite et un curseur explicite ?

- A) Il n'y a pas de différence
- B) Le curseur implicite est géré par SQL, le curseur explicite est déclaré avec DECLARE CURSOR
- C) Le curseur explicite est plus lent
- D) Le curseur implicite ne peut pas lire de données

---

### Question 30
Quelles sont les étapes de gestion d'un curseur explicite ?

- A) CREATE, READ, DELETE, CLOSE
- B) DECLARE, OPEN, FETCH, CLOSE
- C) START, GET, PUT, STOP
- D) BEGIN, LOOP, END, TERMINATE

---

### Question 31
L'instruction OPEN sur un curseur :

- A) Déclare le curseur
- B) Monte les lignes sélectionnées en SGA
- C) Ferme le curseur
- D) Supprime les données

---

### Question 32
L'instruction FETCH sur un curseur :

- A) Ouvre le curseur
- B) Ramène une ligne dans les variables du programme client
- C) Ferme le curseur
- D) Déclare le curseur

---

### Question 33
L'instruction CLOSE sur un curseur :

- A) Ouvre le curseur
- B) Récupère l'espace mémoire en SGA
- C) Lit une ligne
- D) Déclare une variable

---

### Question 34
La variable système Curseur%FOUND indique :

- A) Le nombre de lignes
- B) Si le curseur a encore des lignes (booléen TRUE si des lignes restent)
- C) L'adresse mémoire
- D) Le nom du curseur

---

### Question 35
La variable système Curseur%NOTFOUND indique :

- A) Le curseur est ouvert
- B) Le curseur n'a plus de lignes (booléen TRUE si aucune ligne ne reste)
- C) Le curseur est déclaré
- D) Le nombre de colonnes

---

### Question 36
La variable système Curseur%COUNT retourne :

- A) Un booléen
- B) Le nombre de lignes déjà retournées
- C) Le nom du curseur
- D) La taille mémoire

---

### Question 37
La variable système Curseur%ISOPEN indique :

- A) Si le curseur est fermé
- B) Si le curseur est ouvert (booléen)
- C) Le nombre de lignes
- D) Le type de données

---

### Question 38
Qu'est-ce qu'une exception en PL/SQL ?

- A) Une variable normale
- B) Une erreur (SQL ou applicative) qui provoque un débranchement vers la section EXCEPTION
- C) Un type de curseur
- D) Une instruction SQL

---

### Question 39
Les exceptions SQL prédéfinies (comme NO_DATA_FOUND) :

- A) Doivent être déclarées
- B) Sont déjà définies et ne nécessitent pas de déclaration
- C) N'existent pas
- D) Sont toujours ignorées

---

### Question 40
L'exception NO_DATA_FOUND est levée quand :

- A) Les données sont corrompues
- B) Un SELECT ne retourne aucune ligne
- C) Il y a trop de données
- D) Le curseur est ouvert

---

### Question 41
L'exception DUP_VAL_ON_INDEX est levée quand :

- A) Un index est supprimé
- B) On tente d'insérer une valeur dupliquée sur une colonne avec index unique
- C) L'index est créé
- D) La table est vide

---

### Question 42
Comment déclarer une exception personnalisée en PL/SQL ?

- A) EXCEPTION nomerreur;
- B) nomerreur EXCEPTION;
- C) CREATE EXCEPTION nomerreur;
- D) NEW EXCEPTION nomerreur;

---

### Question 43
Pour associer un numéro d'erreur Oracle à une exception personnalisée, on utilise :

- A) ASSOCIATE EXCEPTION
- B) PRAGMA EXCEPTION_INIT(nomerreur, n°erreur);
- C) LINK EXCEPTION
- D) BIND EXCEPTION

---

### Question 44
La clause WHEN OTHERS dans la section EXCEPTION :

- A) Ne capture aucune erreur
- B) Capture toutes les exceptions non gérées explicitement
- C) Provoque une erreur
- D) Ferme le programme

---

### Question 45
Une procédure stockée est :

- A) Un fichier texte
- B) Un programme PL/SQL stocké dans la base de données
- C) Un fichier log
- D) Un utilisateur

---

### Question 46
Quel est l'avantage d'une procédure stockée ?

- A) Elle n'est jamais exécutée
- B) Elle est compilée et optimisée, puis stockée pour réutilisation
- C) Elle supprime les données
- D) Elle crée des tables

---

### Question 47
Quelle est la syntaxe pour créer une procédure stockée ?

- A) CREATE FUNCTION
- B) CREATE [OR REPLACE] PROCEDURE nom_procédure [(paramètres)] AS ... BEGIN ... END;
- C) CREATE TABLE
- D) CREATE INDEX

---

### Question 48
Comment appeler une procédure stockée depuis SQL*Plus ?

- A) CALL procedure
- B) EXECUTE nom_procédure(paramètres);
- C) RUN procedure
- D) START procedure

---

### Question 49
Le mot clé OUT dans un paramètre de procédure indique :

- A) Le paramètre est en entrée
- B) Le paramètre est en sortie (retourné par la procédure)
- C) Le paramètre est obligatoire
- D) Le paramètre est optionnel

---

### Question 50
Quelle est la différence entre une procédure et une fonction stockée ?

- A) Il n'y a pas de différence
- B) Une fonction retourne un seul résultat avec RETURN, une procédure peut avoir plusieurs paramètres OUT
- C) Une procédure est plus rapide
- D) Une fonction ne peut pas être stockée

---

### Question 51
Quelle est la syntaxe pour créer une fonction stockée ?

- A) CREATE PROCEDURE
- B) CREATE [OR REPLACE] FUNCTION nom_fonction [(paramètres)] RETURN type_résultat IS ... BEGIN ... RETURN(valeur); END;
- C) CREATE TABLE
- D) CREATE INDEX

---

### Question 52
Comment appeler une fonction stockée dans une requête SQL ?

- A) Ce n'est pas possible
- B) SELECT nom_fonction(paramètres) FROM DUAL;
- C) CALL nom_fonction
- D) RUN nom_fonction

---

### Question 53
Une fonction stockée peut être appelée depuis :

- A) Uniquement SQL*Plus
- B) Une requête SQL, un programme PL/SQL, une procédure ou une autre fonction
- C) Uniquement le système d'exploitation
- D) Uniquement un fichier texte

---

### Question 54
Le mot clé RETURN dans une fonction :

- A) Crée une table
- B) Retourne la valeur résultat de la fonction
- C) Supprime des données
- D) Ouvre un curseur

---

### Question 55
Comment concaténer des chaînes de caractères en PL/SQL ?

- A) Avec le signe +
- B) Avec le symbole ||
- C) Avec la fonction CONCAT uniquement
- D) Avec le signe &

---

### Question 56
La fonction TO_CHAR permet de :

- A) Créer une table
- B) Convertir une valeur numérique ou date en chaîne de caractères
- C) Supprimer des caractères
- D) Compter les caractères

---

### Question 57
Pour saisir une valeur depuis SQL*Plus et l'utiliser dans un script, on utilise :

- A) INPUT
- B) ACCEPT variable PROMPT 'message'
- C) READ variable
- D) GET variable

---

### Question 58
Comment référencer une variable de substitution dans un script SQL*Plus ?

- A) $variable
- B) &variable
- C) @variable
- D) #variable

---

### Question 59
L'instruction COMMIT dans un bloc PL/SQL :

- A) Annule les modifications
- B) Valide définitivement les modifications de la transaction
- C) Ouvre un curseur
- D) Déclare une variable

---

### Question 60
Où sont stockées les informations sur les procédures et fonctions ?

- A) Dans les fichiers log
- B) Dans USER_SOURCE et USER_OBJECTS du dictionnaire de données
- C) Dans un fichier texte
- D) Nulle part
