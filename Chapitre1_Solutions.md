# Solutions Détaillées - Chapitre 1 : Architecture et Administration des Bases de Données

## Partie 1 : Généralités sur les BD et Architecture de SGBD

---

### Question 1
**Réponse : B) Une collection de données cohérentes et structurées (données persistantes) utilisées par des systèmes informatiques**

**Explication :** Une base de données est définie comme une collection de données fortement structurées et persistantes dont la structure est définie dans un schéma au moyen d'un langage de définition de données (DDL). Les données sont gérées par un SGBD.

---

### Question 2
**Réponse : B) Manipuler les bases de données (consulter, modifier, construire, organiser, transformer, copier, sauvegarder ou restaurer)**

**Explication :** Le SGBD (Système de Gestion de Base de Données) est un ensemble de logiciels informatiques qui sert à effectuer des opérations ordinaires sur les bases de données : consultation, modification, construction, organisation, transformation, copie, sauvegarde et restauration.

---

### Question 3
**Réponse : B) Phase 2 : 1970-2003**

**Explication :** La Phase 2 (1970-2003) correspond à l'émergence des BD relationnelles basées sur le modèle d'Edgar Frank Codd. Ce modèle est basé sur la théorie des ensembles, isole l'accès aux données de l'implémentation physique et propose un langage déclaratif SQL. La Phase 1 (1960-1970) correspond aux BD hiérarchiques et réseau.

---

### Question 4
**Réponse : B) Conceptuel, Interne, Externe**

**Explication :** L'architecture ANSI/SPARC définit trois niveaux :
- **Niveau Conceptuel** : Description de l'univers à modéliser avec les contraintes
- **Niveau Interne** : Description de l'organisation physique des données
- **Niveau Externe** : Applications accédant aux données (notion de vue)

---

### Question 5
**Réponse : B) L'univers à modéliser avec les contraintes d'intégrité**

**Explication :** Le schéma conceptuel décrit l'univers à modéliser avec éventuellement les contraintes liées à ces objets (contraintes d'intégrité). Il appartient au domaine des concepteurs de BD.

---

### Question 6
**Réponse : B) L'analyseur de requêtes**

**Explication :** L'analyseur de requêtes a pour rôle la génération de l'arbre algébrique, l'optimisation de la requête (génération de l'arbre optimisé) et la génération du plan d'exécution.

---

### Question 7
**Réponse : B) Début transaction - Demande de verrous - Lecture/Écriture - Fin transaction**

**Explication :** Une transaction est l'unité d'exécution d'une requête avec la structure : Début transaction → Demande de verrous → Lecture/Écriture → Fin transaction. Le gestionnaire de transactions pilote l'exécution de ces étapes.

---

### Question 8
**Réponse : B) Les vues**

**Explication :** L'indépendance logique signifie que le SGBD doit autoriser plusieurs visions d'utilisateurs sur la base. Ceci est possible grâce à la notion de vue, qui permet de créer des schémas externes personnalisés.

---

### Question 9
**Réponse : C) Partageabilité des données**

**Explication :** La partageabilité des données permet à plusieurs utilisateurs d'accéder en même temps à la base de données. Elle inclut la gestion des conflits d'accès et d'écriture.

---

### Question 10
**Réponse : B) Le programme d'application (client) gère l'interface et le SGBD (serveur) gère les données**

**Explication :** Dans l'architecture client-serveur, le client (programme d'application) gère l'interface (IHM) et le traitement du domaine d'application, tandis que le serveur (SGBD) gère les données. Ils sont sur des machines différentes.

---

### Question 11
**Réponse : B) Un service cloud qui fournit et gère automatiquement les bases de données**

**Explication :** Le DBaaS (Database-as-a-Service) est un service cloud qui fournit et gère automatiquement les bases de données sans intervention manuelle de l'équipe technique.

---

### Question 12
**Réponse : B) Traite les instructions DDL et les convertit en métadonnées**

**Explication :** Le DDL Compiler traite les instructions DDL (Data Definition Language) et les convertit en un ensemble de tables contenant des métadonnées (données sur les données, comme le nom de la table, le nom et la taille des colonnes).

---

### Question 13
**Réponse : C) Integrity Manager**

**Explication :** Le Gestionnaire d'intégrité (Integrity Manager) vérifie les contraintes d'intégrité lorsque la base de données est modifiée.

---

### Question 14
**Réponse : B) Contrôle l'accès concurrent en ordonnançant les opérations**

**Explication :** Le Transaction Manager contrôle l'accès concurrent en exécutant les opérations de manière ordonnancée selon les transactions reçues. Il garantit que la base de données reste dans un état cohérent avant et après l'exécution d'une transaction.

---

### Question 15
**Réponse : B) La gestion des problèmes liés aux pannes du système**

**Explication :** Le Recovery Manager (Gestionnaire de reprise) gère les problèmes liés aux pannes du système, permettant la récupération de la base de données après un incident.

---

## Partie 1 (Suite) : Le SGBD Oracle

---

### Question 16
**Réponse : B) Cloud**

**Explication :** Dans les versions d'Oracle, les suffixes ont une signification :
- "c" = Cloud (Oracle 12c, 23c)
- "g" = Grid (Oracle 10g)
- "i" = Internet (Oracle 9i)

---

### Question 17
**Réponse : B) Des composants mémoire et des processus d'arrière-plan**

**Explication :** L'instance Oracle est composée des composants mémoire (SGA) et des processus d'arrière-plan. Elle doit être démarrée avant d'accéder à la base de données.

---

### Question 18
**Réponse : B) Les données et informations de contrôle utilisées par les processus**

**Explication :** La SGA (System Global Area) est la mémoire allouée pour stocker les données et les informations de contrôle de la base de données utilisées par les processus Oracle.

---

### Question 19
**Réponse : B) Stocker des copies des blocs de données lus depuis les fichiers pour réduire les accès disque**

**Explication :** Le Database Buffer Cache stocke des copies des blocs de données lus depuis les fichiers de données afin de réduire les accès au disque dur, améliorant ainsi les performances.

---

### Question 20
**Réponse : B) Toutes les modifications effectuées sur la base de données pour la protéger en cas de défaillance**

**Explication :** Le Redo Log Buffer enregistre toutes les modifications effectuées sur la base de données afin de la protéger en cas de défaillance de l'instance.

---

### Question 21
**Réponse : B) Server process**

**Explication :** Les Server processes exécutent les tâches demandées par le client : ils analysent les requêtes SQL, les placent dans le shared pool, créent et exécutent un plan d'exécution pour chaque requête.

---

### Question 22
**Réponse : B) Écrit les blocs de données du Buffer Cache vers les fichiers de données physiques**

**Explication :** DBWR (Database Writer) a pour tâche d'écrire les blocs de données du Database Buffer Cache (présent dans la SGA) vers les fichiers de données physiques.

---

### Question 23
**Réponse : B) Écrit les blocs de journalisation depuis le Redo Log Buffer vers les Redo Log Files**

**Explication :** LGWR (Log Writer) écrit les blocs de journalisation (Redo blocks) depuis le Redo Log Buffer (présent dans la SGA) vers les fichiers journaux de reprise (Redo Log Files).

---

### Question 24
**Réponse : B) La récupération du système et des activités de maintenance globale**

**Explication :** SMON (System Monitor) est responsable de la récupération du système et des activités de maintenance au niveau global (par exemple, le nettoyage des espaces temporaires après un arrêt anormal).

---

### Question 25
**Réponse : B) Les informations relatives à l'état de la base (nom, emplacement des fichiers)**

**Explication :** Les Control Files contiennent les informations relatives à l'état de la base, telles que le nom de la base, les noms des fichiers de données et des fichiers journaux, ainsi que leurs emplacements sur le disque.

---

### Question 26
**Réponse : B) Data Block → Extent → Segment → Tablespace**

**Explication :** La hiérarchie de stockage logique Oracle est :
1. **Data Block** : plus petite unité (quelques octets)
2. **Extent** : ensemble de blocs contigus
3. **Segment** : ensemble d'extents pour un objet
4. **Tablespace** : conteneur logique de segments

---

### Question 27
**Réponse : B) Un ensemble de blocs de données contigus**

**Explication :** Un Extent (extension) est un ensemble de blocs de données contigus, utilisé pour stocker un type particulier d'information.

---

### Question 28
**Réponse : B) Une Container Database pouvant contenir plusieurs Pluggable Databases**

**Explication :** Une CDB (Container Database) est une base de données conteneur qui peut héberger plusieurs bases de données distinctes appelées PDB (Pluggable Databases), chacune fonctionnant de manière indépendante.

---

### Question 29
**Réponse : B) Est un ensemble portable de schémas apparaissant comme une base distincte**

**Explication :** Une PDB (Pluggable Database) est un ensemble portable de schémas, d'objets de schéma et d'objets non liés à un schéma, qui apparaît comme une base de données distincte au sein du conteneur.

---

### Question 30
**Réponse : B) Met à jour les fichiers de données et de contrôle pour indiquer le point de contrôle le plus récent**

**Explication :** CKPT (Checkpoint Process) met à jour tous les fichiers de données et les fichiers de contrôle de la base de données afin d'indiquer le point de contrôle le plus récent.

---

## Partie 2 : Gestion de l'Intégrité - Contraintes d'Intégrité

---

### Question 31
**Réponse : B) Une règle qui maintient la cohérence des données**

**Explication :** Une contrainte d'intégrité est une règle qui peut être simple ou complexe, pouvant prendre la valeur vraie ou faux. Elle s'applique sur les données d'une base de données et permet de maintenir la cohérence des données.

---

### Question 32
**Réponse : B) À la création de la base ou à tout instant de son existence**

**Explication :** Les contraintes d'intégrité peuvent être déclarées à la création de la base de données ou à tout instant de son existence. On peut définir de nouvelles contraintes de manière dynamique.

---

### Question 33
**Réponse : B) Interdit la présence de valeurs nulles dans la colonne**

**Explication :** La contrainte NOT NULL interdit la présence de valeurs nulles dans la colonne. Exemple : `Nomemp varchar(10) NOT NULL`

---

### Question 34
**Réponse : B) Garantit l'unicité et crée automatiquement un index primaire**

**Explication :** La contrainte PRIMARY KEY garantit l'unicité des valeurs et Oracle crée automatiquement un index primaire sur cette colonne pour optimiser les accès.

---

### Question 35
**Réponse : A) Définit une colonne par référence à une autre table**

**Explication :** La contrainte FOREIGN KEY définit une colonne d'une table par référence à une colonne d'une autre table, établissant ainsi une relation entre les deux tables.

---

### Question 36
**Réponse : B) Un seul état de la base de données**

**Explication :** Une contrainte d'intégrité statique concerne un seul état de la base de données. Elle vérifie une condition sur les données à un moment donné.

---

### Question 37
**Réponse : B) Contrôle le passage d'un état à un autre**

**Explication :** Les contraintes d'intégrité dynamiques sont définies au cours de changements d'états. Elles contrôlent le passage d'un état à un autre, où les n-uplets du nouvel état dépendent de ceux de l'ancien.

---

### Question 38
**Réponse : B) ALTER TABLE ... ADD CONSTRAINT**

**Explication :** La syntaxe pour ajouter une contrainte est :
```sql
ALTER TABLE <nom_table>
ADD CONSTRAINT nom_contrainte type_contrainte;
```

---

### Question 39
**Réponse : B) ALTER TABLE ... DROP CONSTRAINT**

**Explication :** La syntaxe pour supprimer une contrainte est :
```sql
ALTER TABLE <nom_table>
DROP CONSTRAINT nom_contrainte;
```

---

### Question 40
**Réponse : B) Contrôle la valeur d'un constituant en fonction des valeurs d'autres constituants du même tuple**

**Explication :** Une contrainte intra-relation multi attribut horizontale contrôle la valeur d'un constituant en fonction des valeurs apparaissant dans les autres constituants du même tuple. Exemple : `Depenses ≤ Recettes`

---

## Partie 2 (Suite) : Les Triggers

---

### Question 41
**Réponse : B) Une règle de type "si événement et/ou condition alors action"**

**Explication :** Un trigger (déclencheur) est une règle ayant la structure : « si événement et/ou condition alors action ». L'action est déclenchée à la suite de l'événement, si la condition est vérifiée.

---

### Question 42
**Réponse : B) CREATE TRIGGER ... {BEFORE/AFTER} {DELETE/INSERT/UPDATE} ON ... BEGIN ... END**

**Explication :** La syntaxe de base d'un trigger Oracle est :
```sql
CREATE TRIGGER [Nom_Trigger]
{BEFORE / AFTER}
{DELETE / INSERT / UPDATE [OF liste_colonnes]}
ON Nom_Table
[FOR EACH ROW]
BEGIN
  -- instructions PL/SQL
END;
```

---

### Question 43
**Réponse : B) Le bloc action est levé avant l'exécution de l'événement**

**Explication :** L'option BEFORE signifie que le bloc action est levé (exécuté) avant l'exécution de l'événement déclencheur (INSERT, UPDATE ou DELETE).

---

### Question 44
**Réponse : B) Un trigger ligne qui se déclenche pour chaque ligne affectée**

**Explication :** L'option FOR EACH ROW définit un trigger ligne qui se déclenche individuellement pour chaque ligne de la table affectée par le trigger. Sans cette option, c'est un trigger global (statement) qui s'exécute une seule fois.

---

### Question 45
**Réponse : B) Accéder aux anciennes et nouvelles valeurs de colonne**

**Explication :** Les noms de corrélation permettent de désigner les anciennes et nouvelles valeurs :
- `:new.colonne` : nouvelle valeur
- `:old.colonne` : ancienne valeur

---

### Question 46
**Réponse : B) :NEW uniquement**

**Explication :** Pour un trigger déclenché par INSERT, seule la nouvelle valeur (:NEW) a un sens car il n'y a pas d'ancienne valeur. Pour DELETE, seule :OLD a un sens.

---

### Question 47
**Réponse : B) Les instructions LMD (INSERT, UPDATE, DELETE, SELECT)**

**Explication :** Les instructions du LMD sont autorisées dans les triggers. Les instructions DDL (CREATE, ALTER, DROP) et les instructions de contrôle de transaction (ROLLBACK, COMMIT) ne sont PAS autorisées.

---

### Question 48
**Réponse : C) 32**

**Explication :** Oracle autorise jusqu'à 32 triggers en cascade à un moment donné. Un trigger peut provoquer le déclenchement d'un autre trigger.

---

### Question 49
**Réponse : B) ALTER TRIGGER ... DISABLE**

**Explication :** Pour désactiver un trigger, on utilise :
```sql
ALTER TRIGGER nomtrigger DISABLE;
```
Pour désactiver tous les triggers d'une table :
```sql
ALTER TABLE nomtable DISABLE ALL TRIGGERS;
```

---

### Question 50
**Réponse : B) Les tables de la métabase (USER_TRIGGERS, ALL_TRIGGERS, DBA_TRIGGERS)**

**Explication :** Les définitions des triggers sont stockées dans les tables de la métabase, notamment dans les tables USER_TRIGGERS, ALL_TRIGGERS et DBA_TRIGGERS.

---

### Question 51
**Réponse : B) Provoquer une erreur personnalisée dans un trigger**

**Explication :** La procédure RAISE_APPLICATION_ERROR permet de provoquer une erreur personnalisée avec un message et un code d'erreur (entre -20000 et -20999). Exemple :
```sql
RAISE_APPLICATION_ERROR(-20300, 'Salaire incorrect pour ce grade');
```

---

## Partie 3 : La Mémoire Relationnelle

---

### Question 52
**Réponse : B) Présenter une vision relationnelle, Gérer la MC, Gérer les relations, Établir des méthodes d'accès**

**Explication :** Les quatre fonctions principales sont :
1. Présenter une vision relationnelle des fichiers
2. Gérer la mémoire centrale (buffer)
3. Gérer les différentes relations (tables, index, vues, catalogues)
4. Établir des méthodes d'accès (hachage, index, B-arbre)

---

### Question 53
**Réponse : B) L'unité de transfert entre mémoire secondaire et mémoire centrale**

**Explication :** La page est l'unité de transfert entre mémoire secondaire (MS) et mémoire centrale (MC). Un fichier est sauvegardé dans plusieurs pages.

---

### Question 54
**Réponse : B) Les enregistrements sont placés l'un après l'autre sans ordre particulier**

**Explication :** Dans l'organisation séquentielle (Tas de données), les enregistrements sont placés l'un après l'autre dans des pages successives sans ordre particulier. Le seul accès possible est un balayage séquentiel, ce qui est coûteux.

---

### Question 55
**Réponse : B) Une fonction h(c) pour calculer un numéro de bloc**

**Explication :** La technique du hachage utilise une fonction h(c) qui calcule un numéro de bloc (ou paquet) en appliquant une fonction mathématique (hash code) sur une clé c. Exemple : H(c) = c MOD N où N est le nombre de paquets.

---

### Question 56
**Réponse : B) Peut dégrader les performances**

**Explication :** Dans le hachage, lorsqu'un bloc est saturé, il y a débordement. La gestion des débordements peut dégrader les performances de la technique de hachage.

---

### Question 57
**Réponse : B) Contient toutes les clés du fichier (densité = 1)**

**Explication :** Un index dense a une densité = 1, ce qui signifie qu'il contient toutes les clés du fichier indexé. L'accès est direct à l'enregistrement à partir de l'index.

---

### Question 58
**Réponse : B) Crée des entrées pour certains enregistrements seulement, le fichier étant trié et divisé en blocs**

**Explication :** Un index non dense crée des enregistrements index pour certains enregistrements du fichier. Le fichier doit être trié et divisé en blocs. Chaque entrée de l'index contient (clé, adresse du bloc). L'accès est direct au bloc puis séquentiel à l'intérieur.

---

### Question 59
**Réponse : B) Chaque nœud a au plus d fils**

**Explication :** Un B-arbre d'ordre d signifie que chaque nœud a au plus d fils (c'est-à-dire d pointeurs). Un nœud ayant k fils (k ≤ d) contient k-1 clés.

---

### Question 60
**Réponse : B) [d/2] fils (arrondi supérieur de d/2)**

**Explication :** Dans un B-arbre d'ordre d, chaque nœud (excepté la racine et les feuilles) a au moins ⌈d/2⌉ fils (arrondi supérieur de d/2).

---

### Question 61
**Réponse : C) 2 fils**

**Explication :** Dans un B-arbre, la racine a au moins 2 fils. C'est une propriété fondamentale qui garantit la structure équilibrée de l'arbre.

---

### Question 62
**Réponse : B) Au même niveau**

**Explication :** Toutes les feuilles d'un B-arbre apparaissent au même niveau (profondeur p de l'arbre). Cette propriété garantit que l'accès à n'importe quelle donnée nécessite le même nombre d'opérations.

---

### Question 63
**Réponse : B) Le nœud est saturé (a le maximum de fils)**

**Explication :** L'insertion avec éclatement se produit quand le nœud est saturé (il a d-1 clés, donc d fils). On alloue alors une nouvelle page, on répartit les clés équitablement, et on propage l'éclatement vers les ancêtres si nécessaire.

---

### Question 64
**Réponse : B) Le nœud a moins de [d/2] enregistrements après suppression et son frère n'a pas assez d'éléments**

**Explication :** La suppression avec fusion se produit quand après suppression, le nœud a moins de ⌈d/2⌉ enregistrements ET son frère adjacent n'a pas plus de ⌈d/2⌉ enregistrements. On regroupe alors les deux nœuds.

---

### Question 65
**Réponse : B) Ne modifie pas la structure du B-arbre**

**Explication :** La suppression avec équilibrage redistribue les enregistrements entre le nœud et son frère de manière équilibrée, sans modifier la structure globale du B-arbre.

---

### Question 66
**Réponse : B) Les colonnes qui ne possèdent que quelques valeurs distinctes**

**Explication :** Un index Bitmap est très utile pour les colonnes qui ne possèdent que quelques valeurs distinctes (faible cardinalité), comme le genre d'un film ou le statut d'une commande.

---

### Question 67
**Réponse : B) Un tableau de bits avec autant de bits qu'il y a de lignes dans la table**

**Explication :** Pour chaque valeur distincte de l'attribut indexé, on stocke un tableau de bits (bitmap) avec autant de bits qu'il y a de lignes dans la table. Un bit à 1 indique que la ligne possède cette valeur.

---

### Question 68
**Réponse : B) CREATE INDEX nom_index ON nom_table(colonne)**

**Explication :** La syntaxe pour créer un index B-arbre (par défaut) dans Oracle est :
```sql
CREATE INDEX nom_index ON nom_table(colonne[, colonne2...]);
```
Le B-arbre est le type d'index par défaut dans Oracle.

---

### Question 69
**Réponse : B) CREATE BITMAP INDEX ... ON ...**

**Explication :** Pour créer un index Bitmap dans Oracle :
```sql
CREATE BITMAP INDEX nom_index ON nom_table(colonne);
```

---

### Question 70
**Réponse : B) DROP INDEX nom_index**

**Explication :** Pour supprimer un index dans Oracle :
```sql
DROP INDEX nom_index;
```
