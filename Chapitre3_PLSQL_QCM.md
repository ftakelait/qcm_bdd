# QCM - Chapitre 3 Partie 1 : Le Langage PL/SQL

---

### Question 1
Quelle est la signification de PL/SQL ?

- A) Programming Language for SQL - un langage de programmation remplaçant SQL standard
- B) Procedural Language extension to SQL - une extension procédurale ajoutant des structures de programmation à SQL
- C) Public Language SQL - une version open source du langage SQL standardisé
- D) Private Language SQL - un dialecte SQL propriétaire limité aux bases Oracle

---

### Question 2
Quelle est la différence principale entre SQL et PL/SQL ?

- A) SQL est plus rapide car il est compilé tandis que PL/SQL est interprété ligne par ligne
- B) SQL est déclaratif/ensembliste (4e génération), PL/SQL ajoute les structures procédurales (boucles, conditions)
- C) PL/SQL ne peut pas utiliser d'instructions SQL et nécessite une conversion manuelle
- D) Il n'y a aucune différence significative, ce sont deux noms pour le même langage

---

### Question 3
Chaque programme PL/SQL est structuré en :

- A) Une fonction mathématique pure sans effets de bord ni variables persistantes
- B) Un bloc délimité par BEGIN et END contenant des sections optionnelles (DECLARE, EXCEPTION)
- C) Un fichier texte simple sans structure particulière interprété ligne par ligne
- D) Une requête SELECT unique pouvant être paramétrée avec des variables

---

### Question 4
Quel est l'avantage principal de PL/SQL dans une architecture Client-Serveur ?

- A) Le client exécute tout le code localement sans solliciter le serveur Oracle
- B) Le bloc complet est envoyé au serveur qui l'exécute et renvoie un seul résultat (moins de trafic réseau)
- C) Chaque requête SQL est traitée séparément avec un aller-retour réseau à chaque fois
- D) Le serveur ne fait rien car tout le traitement est délégué au client pour des raisons de sécurité

---

### Question 5
Quelles sont les trois sections principales d'un bloc PL/SQL ?

- A) SELECT (extraction données), INSERT (ajout données), UPDATE (modification données)
- B) DECLARE (déclarations), BEGIN (instructions exécutables), EXCEPTION (gestion erreurs)
- C) CREATE (création objets), ALTER (modification structure), DROP (suppression objets)
- D) OPEN (ouverture curseur), FETCH (lecture données), CLOSE (fermeture curseur)

---

### Question 6
Dans quelle section d'un bloc PL/SQL déclare-t-on les variables locales ?

- A) Dans la section BEGIN avec les autres instructions exécutables
- B) Dans la section DECLARE avant le mot-clé BEGIN
- C) Dans la section EXCEPTION réservée aux traitements d'erreur
- D) Dans la section END après toutes les instructions

---

### Question 7
La section BEGIN d'un bloc PL/SQL contient :

- A) Uniquement les déclarations de variables, constantes et curseurs
- B) Les instructions exécutables : ordres SQL (SELECT, INSERT...) et ordres PL (IF, LOOP, affectations)
- C) Uniquement les gestionnaires d'exceptions pour traiter les erreurs
- D) Rien de significatif, c'est juste un marqueur de début obligatoire

---

### Question 8
À quoi sert la section EXCEPTION d'un bloc PL/SQL ?

- A) Déclarer les variables exceptionnelles qui ne rentrent pas dans DECLARE
- B) Intercepter et traiter les erreurs (SQL ou utilisateur) survenues dans BEGIN
- C) Exécuter les requêtes SQL qui pourraient échouer en production
- D) Fermer proprement les connexions avant la terminaison du programme

---

### Question 9
Comment déclarer une variable numérique pouvant contenir jusqu'à 2 chiffres en PL/SQL ?

- A) DECLARE nbr AS INTEGER WITH PRECISION 2;
- B) nbr NUMBER(2); (dans la section DECLARE)
- C) CREATE VARIABLE nbr NUM(2);
- D) nbr := NUMERIC(2); (dans la section BEGIN)

---

### Question 10
Comment déclarer une constante en PL/SQL ?

- A) constante INTEGER := 5; (le mot CONSTANT est implicite pour les initialisations)
- B) minimum CONSTANT INTEGER := 5; (mot-clé CONSTANT explicite avec initialisation obligatoire)
- C) CONST minimum = 5; (syntaxe inspirée du langage C)
- D) minimum = 5 IMMUTABLE; (mot-clé IMMUTABLE pour les valeurs figées)

---

### Question 11
Comment déclarer une variable qui ne peut pas contenir de valeur nulle ?

- A) debut NUMBER NULLABLE FALSE; (attribut NULLABLE explicitement à FALSE)
- B) debut NUMBER NOT NULL := valeur_initiale; (NOT NULL avec initialisation obligatoire)
- C) debut NUMBER NO NULL; (syntaxe abrégée sans underscore)
- D) debut NUMBER REQUIRED; (mot-clé REQUIRED pour les valeurs obligatoires)

---

### Question 12
La référence `employe.salaire%TYPE` permet de :

- A) Créer une nouvelle table employe avec une colonne salaire du même type
- B) Déclarer une variable ayant le même type de données que la colonne salaire de la table employe
- C) Supprimer la colonne salaire de la table employe
- D) Modifier le type de la colonne salaire dans la table employe

---

### Question 13
La référence `employe%ROWTYPE` permet de :

- A) Déclarer une variable record contenant tous les attributs d'une ligne de la table employe
- B) Créer une nouvelle table avec la même structure que employe
- C) Supprimer une ligne de la table employe en utilisant son type
- D) Modifier le type de toutes les colonnes de la table employe

---

### Question 14
Quel est l'opérateur d'affectation en PL/SQL ?

- A) = (signe égal simple comme en SQL standard)
- B) := (deux-points suivi du signe égal, syntaxe Pascal/Ada)
- C) == (double égal comme dans les langages C et Java)
- D) <- (flèche gauche comme dans le langage R)

---

### Question 15
Quelle est la syntaxe correcte d'une structure IF en PL/SQL ?

- A) IF condition { instructions } (accolades comme en C/Java)
- B) IF condition THEN instructions; END IF; (mots-clés THEN et END IF obligatoires)
- C) if (condition) then instructions fi (minuscules et terminateur fi)
- D) IF condition DO instructions DONE (syntaxe style shell script)

---

### Question 16
Comment écrire une structure IF avec plusieurs conditions alternatives en PL/SQL ?

- A) IF ... ELSEIF ... ELSE ... ENDIF (ELSEIF en un mot, ENDIF sans espace)
- B) IF ... ELSIF ... ELSE ... END IF; (ELSIF sans E au milieu, END IF avec espace)
- C) IF ... ELIF ... ELSE ... FI (syntaxe abrégée style shell)
- D) IF ... ELSE IF ... ELSE ... END (ELSE IF en deux mots)

---

### Question 17
La structure CASE en PL/SQL permet de :

- A) Créer des tables temporaires selon des conditions dynamiques
- B) Sélectionner une action parmi plusieurs selon la valeur d'une variable ou expression
- C) Supprimer des données conditionnellement sans utiliser DELETE
- D) Déclarer des variables avec des types différents selon le contexte

---

### Question 18
Quelle est la syntaxe correcte d'une boucle LOOP basique en PL/SQL ?

- A) LOOP instructions ENDLOOP; (ENDLOOP en un seul mot)
- B) LOOP instructions; EXIT WHEN (condition); END LOOP; (EXIT WHEN pour sortir)
- C) WHILE TRUE DO instructions DONE (boucle infinie style shell)
- D) REPEAT instructions UNTIL condition; (syntaxe Pascal)

---

### Question 19
Quelle est la syntaxe correcte d'une boucle FOR en PL/SQL ?

- A) FOR i = 1 TO 10 DO instructions DONE (syntaxe Basic/Fortran)
- B) FOR indice IN borne1..borne2 LOOP instructions; END LOOP; (IN et .. pour l'intervalle)
- C) for i in range(1,10): instructions (syntaxe Python)
- D) FOR (i := 1; i < 10; i++) LOOP ... END (syntaxe C avec incrémentation)

---

### Question 20
L'option REVERSE dans une boucle FOR permet de :

- A) Inverser l'ordre des colonnes retournées par un curseur
- B) Parcourir les valeurs de l'indice en ordre décroissant (de borne2 vers borne1)
- C) Supprimer la boucle et exécuter les instructions une seule fois
- D) Répéter la boucle deux fois en sens normal puis inversé

---

### Question 21
Quelle est la syntaxe d'une boucle WHILE en PL/SQL ?

- A) WHILE condition { instructions } (accolades comme en C)
- B) WHILE (condition) LOOP instructions; END LOOP; (mots-clés LOOP et END LOOP)
- C) while condition do instructions done (minuscules style shell)
- D) DO instructions WHILE condition END DO (style do-while avec test à la fin)

---

### Question 22
Pour afficher des résultats intermédiaires en PL/SQL, on utilise le package :

- A) SYS_OUTPUT qui est le package système d'affichage standard
- B) DBMS_OUTPUT avec les procédures PUT_LINE, PUT et NEW_LINE
- C) DISPLAY_OUTPUT qui gère les affichages formatés à l'écran
- D) PRINT_OUTPUT qui imprime les résultats sur la sortie standard

---

### Question 23
Avant d'utiliser DBMS_OUTPUT.PUT_LINE, on doit exécuter la commande SQL*Plus :

- A) SET OUTPUT ON; (activation générique de la sortie)
- B) SET SERVEROUT ON; (activation de la sortie serveur vers le client)
- C) ENABLE OUTPUT; (commande d'activation du buffer d'affichage)
- D) START OUTPUT; (démarrage du système d'affichage)

---

### Question 24
Quelle est la différence entre DBMS_OUTPUT.PUT et DBMS_OUTPUT.PUT_LINE ?

- A) PUT est plus rapide car il n'alloue pas de buffer supplémentaire
- B) PUT écrit sans retour à la ligne, PUT_LINE ajoute un saut de ligne après l'écriture
- C) Il n'y a aucune différence fonctionnelle, ce sont des alias
- D) PUT_LINE ne peut afficher que du texte, PUT accepte tout type de données

---

### Question 25
Pour effectuer un saut de ligne explicite dans l'affichage DBMS_OUTPUT, on utilise :

- A) DBMS_OUTPUT.NEWLINE (sans underscore)
- B) DBMS_OUTPUT.NEW_LINE (avec underscore, sans paramètres)
- C) DBMS_OUTPUT.ENDL (style C++)
- D) DBMS_OUTPUT.LINE_BREAK (descriptif explicite)

---

### Question 26
La clause INTO dans une requête SELECT PL/SQL sert à :

- A) Créer une nouvelle table temporaire pour stocker les résultats
- B) Stocker les valeurs des colonnes sélectionnées dans des variables PL/SQL
- C) Supprimer les données existantes avant d'insérer les nouvelles
- D) Effectuer une jointure avec une autre table spécifiée

---

### Question 27
Quelle instruction PL/SQL permet de récupérer exactement une ligne dans des variables ?

- A) SELECT ... FOR ... (clause FOR pour itérer sur les résultats)
- B) SELECT ... INTO variable1, variable2 ... (clause INTO pour affecter aux variables)
- C) SELECT ... FROM ... TO variable (clause TO pour la destination)
- D) SELECT ... AS variable (clause AS pour renommer en variable)

---

### Question 28
Un curseur en PL/SQL est :

- A) Un pointeur graphique permettant de sélectionner visuellement les données à modifier
- B) Une zone mémoire en SGA stockant les résultats d'une requête multi-lignes avec un pointeur courant
- C) Une variable booléenne indiquant si une requête a retourné des résultats
- D) Un fichier de configuration stockant les préférences utilisateur

---

### Question 29
Quelle est la différence entre un curseur implicite et un curseur explicite ?

- A) Il n'y a aucune différence, ce sont deux termes pour le même concept
- B) Le curseur implicite est géré automatiquement par SQL, l'explicite est déclaré par le programmeur avec CURSOR
- C) Le curseur explicite est toujours plus lent car il nécessite plus de ressources mémoire
- D) Le curseur implicite ne peut pas lire de données, seulement vérifier leur existence

---

### Question 30
Quelles sont les étapes de gestion d'un curseur explicite dans l'ordre ?

- A) CREATE (création), READ (lecture), DELETE (suppression), CLOSE (fermeture)
- B) DECLARE (déclaration), OPEN (exécution requête), FETCH (lecture ligne), CLOSE (libération mémoire)
- C) START (démarrage), GET (récupération), PUT (modification), STOP (arrêt)
- D) BEGIN (début), LOOP (boucle), END (fin), TERMINATE (terminaison)

---

### Question 31
L'instruction OPEN sur un curseur explicite :

- A) Déclare le curseur et définit la requête SQL associée
- B) Exécute la requête et charge les lignes résultantes dans la zone mémoire SGA
- C) Ferme le curseur et libère les ressources mémoire associées
- D) Supprime toutes les données pointées par le curseur

---

### Question 32
L'instruction FETCH sur un curseur :

- A) Ouvre le curseur et prépare l'exécution de la requête
- B) Ramène la ligne courante dans les variables spécifiées et avance le pointeur
- C) Ferme le curseur après avoir traité toutes les lignes
- D) Déclare les variables de réception pour les colonnes du curseur

---

### Question 33
L'instruction CLOSE sur un curseur :

- A) Ouvre le curseur pour une nouvelle exécution de la requête
- B) Libère la mémoire SGA occupée par les résultats du curseur
- C) Lit la dernière ligne disponible dans les variables
- D) Déclare une nouvelle variable pour stocker l'état du curseur

---

### Question 34
La variable système Curseur%FOUND indique :

- A) Le nombre total de lignes retournées par la requête du curseur
- B) Un booléen TRUE si le dernier FETCH a ramené une ligne (données disponibles)
- C) L'adresse mémoire du premier enregistrement du curseur
- D) Le nom du curseur tel que défini dans la clause DECLARE

---

### Question 35
La variable système Curseur%NOTFOUND indique :

- A) Que le curseur est toujours ouvert et contient des lignes à traiter
- B) Un booléen TRUE si le dernier FETCH n'a pas ramené de ligne (fin de données)
- C) Que le curseur a été déclaré mais jamais ouvert
- D) Le nombre de colonnes non trouvées dans la requête

---

### Question 36
La variable système Curseur%COUNT retourne :

- A) Un booléen indiquant si le curseur est vide ou non
- B) Le nombre de lignes déjà récupérées par les FETCH successifs (compteur)
- C) Le nom du curseur pour l'affichage dans les messages d'erreur
- D) La taille mémoire occupée par le curseur en octets

---

### Question 37
La variable système Curseur%ISOPEN indique :

- A) Si le curseur a été fermé par une instruction CLOSE
- B) Un booléen TRUE si le curseur est actuellement ouvert (après OPEN, avant CLOSE)
- C) Le nombre de lignes restant à lire dans le curseur
- D) Le type de données de la première colonne du curseur

---

### Question 38
Qu'est-ce qu'une exception en PL/SQL ?

- A) Une variable spéciale contenant des valeurs inhabituelles ou nulles
- B) Une erreur (SQL ou applicative) provoquant un saut vers la section EXCEPTION du bloc
- C) Un type particulier de curseur optimisé pour les grandes tables
- D) Une instruction SQL réservée aux opérations de maintenance

---

### Question 39
Les exceptions SQL prédéfinies (comme NO_DATA_FOUND, DUP_VAL_ON_INDEX) :

- A) Doivent être déclarées explicitement dans la section DECLARE avant utilisation
- B) Sont prédéfinies par Oracle et peuvent être utilisées directement dans EXCEPTION
- C) N'existent pas en Oracle, il faut utiliser des codes d'erreur numériques
- D) Sont toujours ignorées sauf si on active un mode de débogage spécial

---

### Question 40
L'exception NO_DATA_FOUND est levée quand :

- A) Les données sont corrompues et ne peuvent pas être lues depuis le disque
- B) Un SELECT INTO ne retourne aucune ligne (zéro résultat)
- C) Il y a trop de données et le buffer mémoire déborde
- D) Le curseur est ouvert mais n'a jamais été déclaré

---

### Question 41
L'exception DUP_VAL_ON_INDEX est levée quand :

- A) Un index est supprimé alors qu'il est utilisé par une requête en cours
- B) On tente d'insérer/modifier une valeur créant un doublon sur une colonne avec contrainte d'unicité
- C) Un index est créé sur une colonne contenant déjà des valeurs en double
- D) La table est vide et l'index ne peut pas être construit

---

### Question 42
Comment déclarer une exception personnalisée en PL/SQL ?

- A) EXCEPTION nomerreur; (mot-clé EXCEPTION suivi du nom)
- B) nomerreur EXCEPTION; (nom suivi du type EXCEPTION dans DECLARE)
- C) CREATE EXCEPTION nomerreur; (instruction DDL de création)
- D) NEW EXCEPTION nomerreur; (opérateur NEW pour instancier)

---

### Question 43
Pour associer un code d'erreur Oracle à une exception personnalisée, on utilise :

- A) ASSOCIATE EXCEPTION nomerreur WITH ERROR numero;
- B) PRAGMA EXCEPTION_INIT(nomerreur, numero_erreur_Oracle);
- C) LINK EXCEPTION nomerreur TO numero;
- D) BIND EXCEPTION nomerreur = numero;

---

### Question 44
La clause WHEN OTHERS dans la section EXCEPTION :

- A) Ne capture aucune erreur mais affiche un message d'avertissement
- B) Capture toutes les exceptions non gérées par les clauses WHEN précédentes (gestionnaire par défaut)
- C) Provoque une erreur fatale terminant immédiatement le programme
- D) Ferme automatiquement tous les curseurs et connexions ouverts

---

### Question 45
Une procédure stockée est :

- A) Un fichier texte contenant des instructions SQL à exécuter manuellement
- B) Un programme PL/SQL compilé et stocké dans la base de données, prêt à être appelé
- C) Un fichier de journalisation contenant l'historique des opérations
- D) Un utilisateur ayant des droits spéciaux pour exécuter des commandes DBA

---

### Question 46
Quel est l'avantage principal d'une procédure stockée ?

- A) Elle n'est jamais exécutée automatiquement et nécessite une intervention manuelle
- B) Elle est compilée une fois, optimisée et stockée pour réutilisation (meilleures performances)
- C) Elle supprime automatiquement les données obsolètes après chaque exécution
- D) Elle crée de nouvelles tables à chaque appel pour sauvegarder les résultats

---

### Question 47
Quelle est la syntaxe pour créer une procédure stockée ?

- A) CREATE FUNCTION nom_fonction AS PROCEDURE body;
- B) CREATE [OR REPLACE] PROCEDURE nom_proc [(paramètres)] AS déclarations BEGIN instructions END;
- C) CREATE TABLE nom_table AS PROCEDURE (colonnes);
- D) CREATE INDEX nom_index AS PROCEDURE ON table;

---

### Question 48
Comment appeler une procédure stockée depuis SQL*Plus ?

- A) CALL nom_procedure(parametres); (syntaxe CALL standard SQL)
- B) EXECUTE nom_procedure(parametres); ou EXEC nom_procedure(parametres);
- C) RUN nom_procedure(parametres); (commande RUN)
- D) START nom_procedure(parametres); (identique au démarrage d'un script)

---

### Question 49
Le mot-clé OUT dans un paramètre de procédure indique :

- A) Que le paramètre est en entrée uniquement et ne peut pas être modifié
- B) Que le paramètre est en sortie et retourne une valeur vers l'appelant
- C) Que le paramètre est obligatoire et ne peut pas avoir de valeur par défaut
- D) Que le paramètre est optionnel et peut être omis lors de l'appel

---

### Question 50
Quelle est la différence entre une procédure et une fonction stockée ?

- A) Il n'y a aucune différence fonctionnelle, ce sont des synonymes
- B) Une fonction retourne obligatoirement une valeur via RETURN, une procédure utilise des paramètres OUT
- C) Une procédure est toujours plus rapide car elle ne calcule pas de valeur de retour
- D) Une fonction ne peut pas être stockée dans la base de données

---

### Question 51
Quelle est la syntaxe pour créer une fonction stockée ?

- A) CREATE PROCEDURE nom_fonction RETURNING type ...;
- B) CREATE [OR REPLACE] FUNCTION nom_fonction [(params)] RETURN type IS ... BEGIN ... RETURN valeur; END;
- C) CREATE TABLE nom_fonction TYPE FUNCTION ...;
- D) CREATE INDEX nom_fonction AS FUNCTION ON table;

---

### Question 52
Comment appeler une fonction stockée dans une requête SQL ?

- A) Ce n'est pas possible, les fonctions ne peuvent être appelées que depuis PL/SQL
- B) SELECT nom_fonction(parametres) FROM DUAL; (ou dans une clause SELECT/WHERE)
- C) CALL nom_fonction(parametres) INTO variable;
- D) RUN nom_fonction(parametres) RETURNING result;

---

### Question 53
Une fonction stockée peut être appelée depuis :

- A) Uniquement l'interface SQL*Plus en mode interactif
- B) Une requête SQL, un bloc PL/SQL, une procédure ou une autre fonction
- C) Uniquement le système d'exploitation via des scripts shell
- D) Uniquement un fichier texte de commandes batch

---

### Question 54
Le mot-clé RETURN dans une fonction PL/SQL :

- A) Crée une nouvelle table temporaire pour stocker les résultats
- B) Retourne la valeur résultat de la fonction vers l'appelant et termine l'exécution
- C) Supprime toutes les données modifiées et annule la transaction
- D) Ouvre un nouveau curseur pour lire des données supplémentaires

---

### Question 55
Comment concaténer des chaînes de caractères en PL/SQL ?

- A) Avec l'opérateur + comme dans la plupart des langages de programmation
- B) Avec l'opérateur || (double barre verticale) : 'texte1' || 'texte2'
- C) Uniquement avec la fonction CONCAT() sans alternative d'opérateur
- D) Avec l'opérateur & (esperluette) : 'texte1' & 'texte2'

---

### Question 56
La fonction TO_CHAR permet de :

- A) Créer une nouvelle table à partir d'une chaîne de caractères décrivant sa structure
- B) Convertir une valeur numérique ou date en chaîne de caractères formatée
- C) Supprimer des caractères spéciaux d'une chaîne pour la nettoyer
- D) Compter le nombre de caractères dans une chaîne de texte

---

### Question 57
Pour saisir une valeur interactive depuis SQL*Plus, on utilise :

- A) INPUT variable FROM KEYBOARD;
- B) ACCEPT variable PROMPT 'message de saisie';
- C) READ variable FROM STDIN;
- D) GET variable FROM USER;

---

### Question 58
Comment référencer une variable de substitution SQL*Plus dans un script ?

- A) $variable (préfixe dollar comme les variables shell Unix)
- B) &variable (préfixe esperluette pour les variables de substitution)
- C) @variable (préfixe arobase comme les annotations Java)
- D) #variable (préfixe dièse comme les commentaires)

---

### Question 59
L'instruction COMMIT dans un bloc PL/SQL :

- A) Annule toutes les modifications et restaure l'état initial de la transaction
- B) Valide définitivement toutes les modifications depuis le dernier COMMIT ou début de transaction
- C) Ouvre un nouveau curseur pour lire les données modifiées
- D) Déclare une variable de contrôle pour la gestion des transactions

---

### Question 60
Où sont stockées les informations sur les procédures et fonctions créées ?

- A) Dans les fichiers de journalisation (redo logs) avec les autres transactions
- B) Dans le dictionnaire de données : USER_SOURCE (code) et USER_OBJECTS (métadonnées)
- C) Dans un fichier texte externe au répertoire Oracle
- D) Nulle part, elles doivent être recréées à chaque redémarrage de l'instance
