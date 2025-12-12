# Solutions Détaillées - Chapitre 3 Partie 1 : Le Langage PL/SQL

---

### Question 1
**Réponse : B) Procedural Language extension to SQL**

**Explication :** PL/SQL signifie "Procedural Language" et constitue une sur-couche procédurale à SQL. Il ajoute des fonctionnalités de programmation comme les boucles, les contrôles, les affectations et les exceptions au langage SQL standard.

---

### Question 2
**Réponse : B) SQL est un langage ensembliste (4ème génération) tandis que PL/SQL est une sur-couche procédurale**

**Explication :** SQL est un langage ensembliste de 4ème génération où on décrit le résultat sans dire comment accéder aux données. PL/SQL ajoute une couche procédurale avec boucles, contrôles, affectations et exceptions, permettant une programmation plus complexe.

---

### Question 3
**Réponse : B) Un bloc (BEGIN - END)**

**Explication :** Chaque programme PL/SQL est structuré en bloc, délimité par BEGIN et END. Cette structure permet d'organiser le code en sections logiques.

---

### Question 4
**Réponse : B) Le bloc de requêtes est envoyé au serveur qui l'exécute et renvoie un seul résultat final**

**Explication :** Avec PL/SQL, le bloc de requêtes est envoyé au serveur. Le serveur exécute le bloc complet et renvoie un seul résultat final, réduisant ainsi les échanges réseau par rapport à l'envoi de requêtes SQL individuelles.

---

### Question 5
**Réponse : B) DECLARE, BEGIN, EXCEPTION**

**Explication :** Un bloc PL/SQL comprend trois sections :
- **DECLARE** : déclaration de variables, tableaux, curseurs
- **BEGIN** : ordres exécutables (SQL et PL)
- **EXCEPTION** : gestion des erreurs

---

### Question 6
**Réponse : B) DECLARE**

**Explication :** La section DECLARE est utilisée pour déclarer les variables locales simples, les variables tableaux et les curseurs.

---

### Question 7
**Réponse : B) Les ordres exécutables (SQL et PL)**

**Explication :** La section BEGIN contient les ordres exécutables, aussi bien les ordres SQL (SELECT, INSERT, UPDATE, DELETE) que les ordres PL (affectations, boucles, conditions).

---

### Question 8
**Réponse : B) Recevoir et gérer les erreurs (SQL ou utilisateur)**

**Explication :** La section EXCEPTION sert à la réception et au traitement des erreurs, qu'elles soient des exceptions SQL standard ou des exceptions utilisateur définies.

---

### Question 9
**Réponse : B) nbr NUMBER(2);**

**Explication :** En PL/SQL, pour déclarer une variable numérique avec 2 chiffres, on utilise : `nbr NUMBER(2);`. NUMBER est le type numérique standard d'Oracle.

---

### Question 10
**Réponse : B) minimum CONSTANT INTEGER := 5;**

**Explication :** Pour déclarer une constante en PL/SQL, on utilise le mot-clé CONSTANT suivi du type et de la valeur initiale : `minimum CONSTANT INTEGER := 5;`

---

### Question 11
**Réponse : B) debut NUMBER NOT NULL;**

**Explication :** Pour interdire les valeurs nulles, on ajoute NOT NULL à la déclaration. Noter qu'une variable NOT NULL doit être initialisée lors de sa déclaration.

---

### Question 12
**Réponse : B) Déclarer une variable du même type que la colonne salaire de la table employe**

**Explication :** L'attribut %TYPE permet de déclarer une variable avec le même type qu'une colonne existante. `vsalaire employe.salaire%TYPE;` crée une variable du même type que la colonne salaire.

---

### Question 13
**Réponse : A) Déclarer une variable de type struct contenant tous les attributs d'une ligne de employe**

**Explication :** L'attribut %ROWTYPE crée une variable de type "struct" qui contient tous les attributs d'une ligne de la table. On accède aux champs via `variable.colonne`.

---

### Question 14
**Réponse : B) :=**

**Explication :** L'opérateur d'affectation en PL/SQL est `:=`. Exemple : `A := B;` affecte la valeur de B à A.

---

### Question 15
**Réponse : B) IF condition THEN instructions; END IF;**

**Explication :** La syntaxe correcte est :
```sql
IF condition THEN
    instructions;
END IF;
```

---

### Question 16
**Réponse : B) IF ... ELSIF ... ELSE ... END IF**

**Explication :** En PL/SQL, on utilise ELSIF (pas ELSEIF) pour les conditions alternatives :
```sql
IF condition THEN instructions;
ELSIF condition THEN instructions;
ELSE instructions;
END IF;
```

---

### Question 17
**Réponse : B) Faire un choix selon la valeur d'une variable**

**Explication :** La structure CASE permet de faire un choix parmi plusieurs options selon la valeur d'une variable :
```sql
CASE variable
    WHEN valeur1 THEN action1;
    WHEN valeur2 THEN action2;
    ELSE action;
END CASE;
```

---

### Question 18
**Réponse : B) LOOP instructions; EXIT WHEN (condition); END LOOP;**

**Explication :** La boucle LOOP basique utilise EXIT WHEN pour sortir :
```sql
LOOP
    instructions;
    EXIT WHEN (condition);
END LOOP;
```

---

### Question 19
**Réponse : B) FOR (indice IN borne1..borne2) LOOP instructions; END LOOP;**

**Explication :** La syntaxe de la boucle FOR en PL/SQL est :
```sql
FOR indice IN borne1..borne2 LOOP
    instructions;
END LOOP;
```

---

### Question 20
**Réponse : B) Parcourir les valeurs de l'indice en ordre décroissant**

**Explication :** L'option REVERSE fait parcourir les valeurs de borne2 à borne1 (ordre décroissant) au lieu de borne1 à borne2.

---

### Question 21
**Réponse : B) WHILE (condition) LOOP instructions; END LOOP;**

**Explication :** La syntaxe de la boucle WHILE en PL/SQL est :
```sql
WHILE (condition) LOOP
    instructions;
END LOOP;
```

---

### Question 22
**Réponse : B) DBMS_OUTPUT**

**Explication :** Le package DBMS_OUTPUT permet d'afficher des résultats intermédiaires. Les messages sont enregistrés dans une mémoire tampon côté serveur et affichés sur le poste client à la fin.

---

### Question 23
**Réponse : B) SET SERVEROUT ON**

**Explication :** Avant d'utiliser DBMS_OUTPUT.PUT_LINE, on doit activer la sortie serveur avec la commande : `SET SERVEROUT ON`

---

### Question 24
**Réponse : B) PUT écrit sans saut de ligne, PUT_LINE écrit avec saut de ligne**

**Explication :** DBMS_OUTPUT.PUT écrit dans le buffer sans saut de ligne, tandis que DBMS_OUTPUT.PUT_LINE écrit avec un saut de ligne à la fin.

---

### Question 25
**Réponse : B) DBMS_OUTPUT.NEW_LINE**

**Explication :** Pour ajouter un saut de ligne dans le buffer, on utilise DBMS_OUTPUT.NEW_LINE (sans paramètre).

---

### Question 26
**Réponse : B) Ranger les valeurs des colonnes sélectionnées dans des variables**

**Explication :** La clause INTO permet de stocker les valeurs sélectionnées dans des variables PL/SQL :
```sql
SELECT nom, adresse INTO vnom, vadresse FROM etudiant WHERE ide=matricule;
```

---

### Question 27
**Réponse : B) SELECT ... INTO ...**

**Explication :** L'instruction SELECT ... INTO est utilisée pour sélectionner une seule ligne et stocker les valeurs dans des variables.

---

### Question 28
**Réponse : B) Une zone mémoire partagée (SGA) pour stocker les résultats d'une sélection multi-ligne**

**Explication :** Un curseur est une zone mémoire dans la SGA (System Global Area) utilisée pour stocker les résultats d'une requête retournant plusieurs lignes. Le curseur contient en permanence l'adresse de la ligne courante.

---

### Question 29
**Réponse : B) Le curseur implicite est géré par SQL, le curseur explicite est déclaré avec DECLARE CURSOR**

**Explication :** Le curseur implicite est automatiquement créé par SQL lors d'une requête. Le curseur explicite est déclaré explicitement par le programmeur avec DECLARE CURSOR pour contrôler le traitement ligne par ligne.

---

### Question 30
**Réponse : B) DECLARE, OPEN, FETCH, CLOSE**

**Explication :** Les étapes de gestion d'un curseur explicite sont :
1. DECLARE : déclarer le curseur (ordre SQL sans exécution)
2. OPEN : monter les lignes sélectionnées en SGA
3. FETCH : ramener une ligne dans le programme
4. CLOSE : récupérer l'espace mémoire

---

### Question 31
**Réponse : B) Monte les lignes sélectionnées en SGA**

**Explication :** L'instruction OPEN exécute la requête associée au curseur et charge les lignes résultantes dans la SGA (mémoire partagée).

---

### Question 32
**Réponse : B) Ramène une ligne dans les variables du programme client**

**Explication :** Chaque FETCH ramène une ligne du curseur (depuis la SGA) dans les variables du programme client. On répète FETCH tant qu'il y a des lignes.

---

### Question 33
**Réponse : B) Récupère l'espace mémoire en SGA**

**Explication :** L'instruction CLOSE ferme le curseur et libère l'espace mémoire qu'il occupait dans la SGA.

---

### Question 34
**Réponse : B) Si le curseur a encore des lignes (booléen TRUE si des lignes restent)**

**Explication :** Curseur%FOUND est une variable booléenne qui vaut TRUE si le dernier FETCH a récupéré une ligne, indiquant que le curseur est toujours "ouvert" (encore des lignes).

---

### Question 35
**Réponse : B) Le curseur n'a plus de lignes (booléen TRUE si aucune ligne ne reste)**

**Explication :** Curseur%NOTFOUND est l'opposé de %FOUND. Elle vaut TRUE quand le curseur est "fermé" (plus de lignes à récupérer).

---

### Question 36
**Réponse : B) Le nombre de lignes déjà retournées**

**Explication :** Curseur%COUNT (note: la terminologie Oracle standard est %ROWCOUNT) retourne le nombre de lignes déjà récupérées par les instructions FETCH successives. Le cours utilise la notation %COUNT.

---

### Question 37
**Réponse : B) Si le curseur est ouvert (booléen)**

**Explication :** Curseur%ISOPEN est un booléen qui indique si le curseur est actuellement ouvert (TRUE) ou fermé (FALSE).

---

### Question 38
**Réponse : B) Une erreur (SQL ou applicative) qui provoque un débranchement vers la section EXCEPTION**

**Explication :** Une exception est une erreur qui provoque automatiquement un débranchement vers le paragraphe EXCEPTION. Ce débranchement peut être involontaire (erreur SQL) ou volontaire (RAISE d'une exception applicative).

---

### Question 39
**Réponse : B) Sont déjà définies et ne nécessitent pas de déclaration**

**Explication :** Les exceptions SQL prédéfinies (DUP_VAL_ON_INDEX, NO_DATA_FOUND, OTHERS, etc.) sont déjà définies par Oracle et ne nécessitent pas de déclaration.

---

### Question 40
**Réponse : B) Un SELECT ne retourne aucune ligne**

**Explication :** L'exception NO_DATA_FOUND est levée quand une instruction SELECT ... INTO ne retourne aucune ligne.

---

### Question 41
**Réponse : B) On tente d'insérer une valeur dupliquée sur une colonne avec index unique**

**Explication :** DUP_VAL_ON_INDEX est levée lors d'une tentative d'insertion ou de mise à jour d'une valeur dupliquée sur une colonne ayant un index unique ou une contrainte d'unicité.

---

### Question 42
**Réponse : B) nomerreur EXCEPTION;**

**Explication :** Pour déclarer une exception personnalisée en PL/SQL, on écrit : `nomerreur EXCEPTION;` dans la section DECLARE.

---

### Question 43
**Réponse : B) PRAGMA EXCEPTION_INIT(nomerreur, n°erreur);**

**Explication :** Pour associer un numéro d'erreur Oracle à une exception personnalisée :
```sql
nomerreur EXCEPTION;
PRAGMA EXCEPTION_INIT(nomerreur, -2291);
```

---

### Question 44
**Réponse : B) Capture toutes les exceptions non gérées explicitement**

**Explication :** La clause WHEN OTHERS dans la section EXCEPTION capture toutes les exceptions qui n'ont pas été gérées par les clauses WHEN précédentes.

---

### Question 45
**Réponse : B) Un programme PL/SQL stocké dans la base de données**

**Explication :** Une procédure stockée est un programme PL/SQL stocké dans la base de données. Le SGBD conserve le code source (USER_SOURCE) et le code compilé optimisé.

---

### Question 46
**Réponse : B) Elle est compilée et optimisée, puis stockée pour réutilisation**

**Explication :** La procédure stockée est compilée et optimisée en tenant compte des objets accélérateurs (INDEX, etc.), puis stockée pour être réutilisée sans recompilation.

---

### Question 47
**Réponse : B) CREATE [OR REPLACE] PROCEDURE nom_procédure [(paramètres)] AS ... BEGIN ... END;**

**Explication :** La syntaxe est :
```sql
CREATE [OR REPLACE] PROCEDURE nom_procédure
    [(variable1 type1, ..., variablen typen [OUT])] AS
    -- déclarations
BEGIN
    -- instructions
EXCEPTION
    -- gestion erreurs
END;
/
```

---

### Question 48
**Réponse : B) EXECUTE nom_procédure(paramètres);**

**Explication :** Pour appeler une procédure stockée depuis SQL*Plus, on utilise :
```sql
EXECUTE nom_procédure(paramètre1, paramètre2, ...);
```

---

### Question 49
**Réponse : B) Le paramètre est en sortie (retourné par la procédure)**

**Explication :** Le mot clé OUT indique que le paramètre est un paramètre de sortie. La valeur sera retournée par la procédure à l'appelant.

---

### Question 50
**Réponse : B) Une fonction retourne un seul résultat avec RETURN, une procédure peut avoir plusieurs paramètres OUT**

**Explication :** La différence principale est qu'une fonction retourne obligatoirement une seule valeur via RETURN, tandis qu'une procédure peut avoir zéro ou plusieurs paramètres de sortie (OUT).

---

### Question 51
**Réponse : B) CREATE [OR REPLACE] FUNCTION nom_fonction [(paramètres)] RETURN type_résultat IS ... BEGIN ... RETURN(valeur); END;**

**Explication :** La syntaxe d'une fonction stockée est :
```sql
CREATE [OR REPLACE] FUNCTION nom_fonction
    [(paramètre1 type1, ...)]
RETURN type_résultat IS
    -- déclarations
BEGIN
    -- instructions
    RETURN(variable);
END;
/
```

---

### Question 52
**Réponse : B) SELECT nom_fonction(paramètres) FROM DUAL;**

**Explication :** Une fonction stockée peut être appelée directement dans une requête SQL :
```sql
SELECT nom_fonction('e1') FROM DUAL;
```

---

### Question 53
**Réponse : B) Une requête SQL, un programme PL/SQL, une procédure ou une autre fonction**

**Explication :** Une fonction stockée peut être appelée depuis :
- Une requête SQL normale
- Un programme PL/SQL
- Une procédure stockée
- Une autre fonction stockée

---

### Question 54
**Réponse : B) Retourne la valeur résultat de la fonction**

**Explication :** Le mot clé RETURN retourne la valeur résultat de la fonction. Une fonction peut avoir un ou plusieurs RETURN (dans différentes branches conditionnelles).

---

### Question 55
**Réponse : B) Avec le symbole ||**

**Explication :** En PL/SQL, la concaténation de chaînes se fait avec l'opérateur `||`. Exemple : `'Nom : ' || vnom`

---

### Question 56
**Réponse : B) Convertir une valeur numérique ou date en chaîne de caractères**

**Explication :** TO_CHAR convertit une valeur numérique ou date en chaîne de caractères. Exemple : `TO_CHAR(e2)` convertit le nombre e2 en texte.

---

### Question 57
**Réponse : B) ACCEPT variable PROMPT 'message'**

**Explication :** En SQL*Plus, la commande ACCEPT permet de saisir une valeur :
```sql
ACCEPT vide PROMPT 'Entrer le matricule : '
```

---

### Question 58
**Réponse : B) &variable**

**Explication :** Pour référencer une variable de substitution dans un script SQL*Plus, on utilise le préfixe `&`. Exemple : `'&ide'`

---

### Question 59
**Réponse : B) Valide définitivement les modifications de la transaction**

**Explication :** L'instruction COMMIT valide définitivement toutes les modifications effectuées depuis le début de la transaction ou le dernier COMMIT.

---

### Question 60
**Réponse : B) Dans USER_SOURCE et USER_OBJECTS du dictionnaire de données**

**Explication :** Les informations sur les procédures et fonctions sont stockées dans le dictionnaire de données Oracle, notamment dans les vues USER_SOURCE (code source) et USER_OBJECTS (métadonnées).
