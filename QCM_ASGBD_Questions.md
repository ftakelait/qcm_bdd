# QCM Complet - Administration des SGBD (ASGBD)

> **Module** : ASGBD  
> **Niveau** : 3ème année IA - USTHB  
> **Nombre de questions** : 100 questions  
> **Instructions** : Pour chaque question, choisissez la ou les réponse(s) correcte(s).

---

# PARTIE I : Architecture Oracle (Chapitre 1.1)

## Section A : Architecture Générale

### Question 1
Quels sont les principaux composants de l'architecture Oracle ?  
- [ ] A) Les fichiers de données uniquement
- [ ] B) Les composants mémoires, les processus et les fichiers de données
- [ ] C) Le CPU et la RAM
- [ ] D) Les tables et les index

### Question 2
Quelle est la relation entre une instance Oracle et une base de données ?  
- [ ] A) Ce sont des synonymes
- [ ] B) L'instance = composants mémoire + processus, la base = fichiers physiques
- [ ] C) La base contient plusieurs instances
- [ ] D) L'instance est un fichier

### Question 3
Que doit-on démarrer avant d'accéder à une base de données Oracle ?  
- [ ] A) Les fichiers de données
- [ ] B) L'instance Oracle
- [ ] C) Le serveur web
- [ ] D) Les tables

---

## Section B : System Global Area (SGA)

### Question 4
Que contient la SGA (System Global Area) ?  
- [ ] A) Uniquement les données utilisateur
- [ ] B) Database Buffer Cache, Redo Log Buffer, Shared Pool, Large Pool, Java Pool
- [ ] C) Les fichiers de contrôle
- [ ] D) Les programmes utilisateur

### Question 5
Quel est le rôle du Database Buffer Cache ?  
- [ ] A) Stocker les mots de passe utilisateurs
- [ ] B) Stocker des copies des blocs de données pour réduire les accès disque
- [ ] C) Compiler les requêtes SQL
- [ ] D) Gérer les connexions réseau

### Question 6
Quel est le rôle du Redo Log Buffer ?  
- [ ] A) Stocker les données utilisateur
- [ ] B) Enregistrer toutes les modifications pour protéger la base en cas de défaillance
- [ ] C) Compiler les procédures PL/SQL
- [ ] D) Gérer les connexions

### Question 7
Que contient le Shared Pool ?  
- [ ] A) Les données des tables
- [ ] B) Les zones SQL partagées, plans d'exécution et unités PL/SQL
- [ ] C) Les fichiers de contrôle
- [ ] D) Les mots de passe

### Question 8
À quoi sert le Large Pool ?  
- [ ] A) Stocker les grandes tables
- [ ] B) Allocations mémoire importantes (sauvegarde, restauration)
- [ ] C) Exécuter Java
- [ ] D) Stocker les index

### Question 9
À quoi sert le Java Pool ?  
- [ ] A) Exécuter JavaScript
- [ ] B) Stocker les structures de données liées à Java
- [ ] C) Compiler le code SQL
- [ ] D) Gérer les sessions

---

## Section C : Processus Oracle

### Question 10
Quel processus est responsable de l'exécution des requêtes SQL ?  
- [ ] A) User process
- [ ] B) Server process
- [ ] C) Background process
- [ ] D) Database Writer

### Question 11
Quel est le rôle du User Process ?  
- [ ] A) Exécuter les requêtes SQL
- [ ] B) Aider l'utilisateur à se connecter après une requête de connexion
- [ ] C) Écrire les données sur disque
- [ ] D) Archiver les fichiers log

### Question 12
Quelles tâches effectue le Server Process ?  
- [ ] A) Uniquement la connexion
- [ ] B) Analyser les requêtes SQL, créer les plans d'exécution, lire les blocs
- [ ] C) Seulement écrire les données
- [ ] D) Gérer les sauvegardes

### Question 13
Quels sont les 4 principaux processus d'arrière-plan ?  
- [ ] A) INIT, START, STOP, END
- [ ] B) DBWR, LGWR, SMON, PMON
- [ ] C) CREATE, READ, UPDATE, DELETE
- [ ] D) SYS, SYSTEM, ADMIN, USER

### Question 14
Quel est le rôle du processus DBWR (Database Writer) ?  
- [ ] A) Écrire les blocs du Buffer Cache vers les fichiers de données
- [ ] B) Créer de nouveaux utilisateurs
- [ ] C) Compiler le code PL/SQL
- [ ] D) Gérer les connexions utilisateur

### Question 15
Quel processus écrit les Redo blocks vers les fichiers Redo Log ?  
- [ ] A) DBWR
- [ ] B) LGWR (Log Writer)
- [ ] C) SMON
- [ ] D) PMON

### Question 16
Quel est le rôle du processus SMON (System Monitor) ?  
- [ ] A) Surveiller les autres processus
- [ ] B) Récupération du système et maintenance après arrêt anormal
- [ ] C) Écrire les données sur le disque
- [ ] D) Archiver les fichiers log

### Question 17
Quel est le rôle du processus PMON (Process Monitor) ?  
- [ ] A) Récupérer le système après crash
- [ ] B) Surveiller les processus, terminer les anormaux, libérer les ressources
- [ ] C) Écrire les données
- [ ] D) Archiver les logs

### Question 18
Quel est le rôle du processus CKPT (Checkpoint) ?  
- [ ] A) Créer des points de sauvegarde
- [ ] B) Mettre à jour les fichiers de données et contrôle pour indiquer le dernier checkpoint
- [ ] C) Archiver les logs
- [ ] D) Surveiller les processus

### Question 19
Quel est le rôle du processus ARCn (Archiver) ?  
- [ ] A) Archiver les tables
- [ ] B) Copier les fichiers Redo Log vers un stockage d'archives quand ils sont pleins
- [ ] C) Supprimer les anciens fichiers
- [ ] D) Compresser les données

### Question 20
Quel est le rôle du processus RECO (Recoverer) ?  
- [ ] A) Récupérer les fichiers supprimés
- [ ] B) Résoudre les transactions distribuées en attente après défaillance
- [ ] C) Archiver les données
- [ ] D) Surveiller les connexions

---

## Section D : Fichiers Oracle

### Question 21
Quels sont les principaux fichiers d'une base Oracle ?  
- [ ] A) Data files, Redo log files, Control files, Parameter file
- [ ] B) Uniquement les Data files
- [ ] C) Les fichiers .exe et .dll
- [ ] D) Les fichiers temporaires uniquement

### Question 22
Que contiennent les Data files ?  
- [ ] A) Les paramètres de configuration
- [ ] B) Les données réelles de la base de données
- [ ] C) Les journaux de modifications
- [ ] D) Les informations d'état

### Question 23
Quel est le rôle des Redo Log files ?  
- [ ] A) Stocker les données
- [ ] B) Enregistrer les modifications pour permettre la récupération après panne
- [ ] C) Stocker les paramètres
- [ ] D) Contenir les contraintes

### Question 24
Que contiennent les Control files ?  
- [ ] A) Les données utilisateur
- [ ] B) Les informations d'état de la base (nom, emplacements des fichiers)
- [ ] C) Les requêtes SQL
- [ ] D) Les procédures stockées

### Question 25
Que contient le Parameter file ?  
- [ ] A) Les données
- [ ] B) Les paramètres de configuration définissant le démarrage de la base
- [ ] C) Les contraintes
- [ ] D) Les index

---

## Section E : Structures Logiques de Stockage

### Question 26
Quelle est la plus petite unité de stockage logique dans Oracle ?  
- [ ] A) Tablespace
- [ ] B) Segment
- [ ] C) Extent
- [ ] D) Data block

### Question 27
Qu'est-ce qu'un Extent ?  
- [ ] A) Une table
- [ ] B) Un ensemble de blocs de données contigus
- [ ] C) Un fichier
- [ ] D) Un processus

### Question 28
Qu'est-ce qu'un Segment ?  
- [ ] A) Une colonne
- [ ] B) Un ensemble d'extents allouées pour stocker des objets (table, index)
- [ ] C) Un fichier de contrôle
- [ ] D) Un processus

### Question 29
Qu'est-ce qu'un Tablespace dans Oracle ?  
- [ ] A) Un type de table
- [ ] B) Un conteneur logique de segments composé d'au moins un fichier de données
- [ ] C) Un processus d'arrière-plan
- [ ] D) Un type d'index

### Question 30
Quelle est la hiérarchie des structures logiques (du plus petit au plus grand) ?  
- [ ] A) Tablespace → Segment → Extent → Block
- [ ] B) Block → Extent → Segment → Tablespace
- [ ] C) Segment → Block → Extent → Tablespace
- [ ] D) Extent → Block → Segment → Tablespace

---

## Section F : Architecture Multitenant

### Question 31
Qu'est-ce que l'architecture multitenant dans Oracle ?  
- [ ] A) Une architecture avec plusieurs utilisateurs
- [ ] B) Une base conteneur (CDB) hébergeant plusieurs bases distinctes (PDBs)
- [ ] C) Une architecture réseau
- [ ] D) Un type de sauvegarde

### Question 32
À partir de quelle version Oracle l'architecture CDB a-t-elle été introduite ?  
- [ ] A) Oracle 9i
- [ ] B) Oracle 10g
- [ ] C) Oracle 12c
- [ ] D) Oracle 21c

### Question 33
Que signifie PDB ?  
- [ ] A) Personal Database
- [ ] B) Pluggable Database
- [ ] C) Primary Database
- [ ] D) Protected Database

### Question 34
Qu'est-ce que le Root dans une architecture CDB ?  
- [ ] A) L'utilisateur principal
- [ ] B) Une base contenant le dictionnaire de données global avec infos sur les PDBs
- [ ] C) Un fichier de configuration
- [ ] D) Un index

### Question 35
Que signifie le "c" dans Oracle 12c ?  
- [ ] A) Classic
- [ ] B) Cloud
- [ ] C) Container
- [ ] D) Core

---

# PARTIE II : Contraintes d'Intégrité et Triggers (Chapitre 1.2)

## Section A : Contraintes d'Intégrité

### Question 36
Quels sont les deux types de contraintes d'intégrité ?  
- [ ] A) Simple et complexe
- [ ] B) Statique et dynamique
- [ ] C) Interne et externe
- [ ] D) Primaire et secondaire

### Question 37
Quelles sont les contraintes d'intégrité statiques ?  
- [ ] A) Les triggers
- [ ] B) PRIMARY KEY, FOREIGN KEY, CHECK, NOT NULL, UNIQUE
- [ ] C) Les procédures stockées
- [ ] D) Les vues

### Question 38
Qu'est-ce qu'une contrainte dynamique ?  
- [ ] A) Une contrainte PRIMARY KEY
- [ ] B) Une règle de gestion active vérifiée lors de transitions (triggers)
- [ ] C) Une contrainte NOT NULL
- [ ] D) Une contrainte UNIQUE

---

## Section B : Triggers - Définition et Syntaxe

### Question 39
Qu'est-ce qu'un trigger dans Oracle ?  
- [ ] A) Une table temporaire
- [ ] B) Un programme déclenché automatiquement lors d'événements sur une table
- [ ] C) Un type d'index
- [ ] D) Un fichier de configuration

### Question 40
Quels événements peuvent déclencher un trigger ?  
- [ ] A) SELECT uniquement
- [ ] B) INSERT, UPDATE, DELETE
- [ ] C) CREATE et DROP
- [ ] D) CONNECT et DISCONNECT

### Question 41
Le nom d'un trigger doit être unique dans :  
- [ ] A) Toute la base de données
- [ ] B) Le même schéma
- [ ] C) La même table
- [ ] D) La même session

### Question 42
Pour les triggers UPDATE, que peut-on spécifier de plus ?  
- [ ] A) Rien de plus
- [ ] B) Une liste de colonnes (le trigger ne se déclenche que si l'UPDATE porte sur ces colonnes)
- [ ] C) Le type de données
- [ ] D) L'utilisateur

---

## Section C : Triggers - Types BEFORE/AFTER

### Question 43
Quelle est la différence entre un trigger BEFORE et AFTER ?  
- [ ] A) Il n'y a pas de différence
- [ ] B) BEFORE s'exécute avant l'événement, AFTER après
- [ ] C) BEFORE est plus rapide
- [ ] D) AFTER ne fonctionne qu'avec DELETE

### Question 44
Quand utiliser un trigger BEFORE ?  
- [ ] A) Pour archiver les données
- [ ] B) Pour modifier ou valider les données avant l'opération
- [ ] C) Pour l'audit
- [ ] D) Pour supprimer des données

### Question 45
Quand utiliser un trigger AFTER ?  
- [ ] A) Pour modifier les données avant insertion
- [ ] B) Pour des actions après l'opération (audit, mise à jour d'autres tables)
- [ ] C) Pour valider les contraintes
- [ ] D) Pour annuler l'opération

---

## Section D : Triggers - Types Ligne/Global

### Question 46
Qu'est-ce qu'un trigger ligne (FOR EACH ROW) ?  
- [ ] A) Un trigger qui s'exécute une seule fois
- [ ] B) Un trigger qui se déclenche pour chaque ligne affectée
- [ ] C) Un trigger sur une ligne spécifique
- [ ] D) Un trigger qui ne modifie qu'une ligne

### Question 47
Qu'est-ce qu'un trigger global (Statement) ?  
- [ ] A) Un trigger qui s'exécute pour chaque ligne
- [ ] B) Un trigger qui s'exécute une seule fois par instruction
- [ ] C) Un trigger sur toutes les tables
- [ ] D) Un trigger système

### Question 48
Comment savoir si un trigger est ligne ou global ?  
- [ ] A) Par son nom
- [ ] B) Si FOR EACH ROW est spécifié, c'est ligne ; sinon c'est global
- [ ] C) Par la table associée
- [ ] D) Par l'utilisateur créateur

---

## Section E : Triggers - Noms de Corrélation

### Question 49
Comment accède-t-on à la nouvelle valeur d'une colonne dans un trigger ?  
- [ ] A) NEW.colonne
- [ ] B) :new.colonne
- [ ] C) colonne_new
- [ ] D) CURRENT.colonne

### Question 50
Comment accède-t-on à l'ancienne valeur d'une colonne ?  
- [ ] A) :old.colonne
- [ ] B) OLD.colonne
- [ ] C) colonne_old
- [ ] D) PREVIOUS.colonne

### Question 51
Pour quelle instruction :old n'a pas de sens ?  
- [ ] A) UPDATE
- [ ] B) DELETE
- [ ] C) INSERT (il n'y a pas d'ancienne valeur)
- [ ] D) SELECT

### Question 52
Pour quelle instruction :new n'a pas de sens ?  
- [ ] A) UPDATE
- [ ] B) DELETE (il n'y a pas de nouvelle valeur)
- [ ] C) INSERT
- [ ] D) SELECT

---

## Section F : Triggers - Restrictions et Gestion

### Question 53
Quelles instructions SQL sont autorisées dans un trigger ?  
- [ ] A) Toutes les instructions
- [ ] B) Les instructions LMD (INSERT, UPDATE, DELETE, SELECT)
- [ ] C) Seulement SELECT
- [ ] D) CREATE et DROP

### Question 54
Quelles instructions SQL sont INTERDITES dans un trigger ?  
- [ ] A) SELECT et INSERT
- [ ] B) Les instructions LDD (CREATE, ALTER, DROP) et contrôle de transaction (COMMIT, ROLLBACK)
- [ ] C) UPDATE et DELETE
- [ ] D) Aucune

### Question 55
Quel est le nombre maximum de triggers en cascade autorisé par Oracle ?  
- [ ] A) 10
- [ ] B) 16
- [ ] C) 32
- [ ] D) 64

### Question 56
Quel privilège faut-il pour créer un trigger ?  
- [ ] A) CREATE TABLE
- [ ] B) CREATE TRIGGER
- [ ] C) CREATE PROCEDURE
- [ ] D) CREATE VIEW

### Question 57
Pour créer un trigger sur une table dont on n'est pas propriétaire, il faut :  
- [ ] A) Être DBA
- [ ] B) Posséder le privilège ALTER sur la table ou ALTER ANY TABLE
- [ ] C) Avoir CREATE TABLE
- [ ] D) Rien de spécial

### Question 58
Comment modifier un trigger existant ?  
- [ ] A) ALTER TRIGGER
- [ ] B) CREATE OR REPLACE TRIGGER ou DROP puis CREATE
- [ ] C) UPDATE TRIGGER
- [ ] D) MODIFY TRIGGER

### Question 59
Comment désactiver un trigger ?  
- [ ] A) DROP TRIGGER nomtrigger
- [ ] B) ALTER TRIGGER nomtrigger DISABLE
- [ ] C) DELETE TRIGGER nomtrigger
- [ ] D) STOP TRIGGER nomtrigger

### Question 60
Comment désactiver tous les triggers d'une table ?  
- [ ] A) DROP ALL TRIGGERS ON table
- [ ] B) ALTER TABLE nomtable DISABLE ALL TRIGGERS
- [ ] C) DELETE TRIGGERS FROM table
- [ ] D) STOP TRIGGERS table

### Question 61
Par défaut, un trigger est-il activé ou désactivé à sa création ?  
- [ ] A) Désactivé
- [ ] B) Activé
- [ ] C) Dépend de la configuration
- [ ] D) Dépend de l'utilisateur

### Question 62
Dans quelle vue système consulte-t-on les définitions des triggers ?  
- [ ] A) USER_TABLES
- [ ] B) USER_TRIGGERS
- [ ] C) USER_PROCEDURES
- [ ] D) USER_OBJECTS

### Question 63
Quelle procédure permet de générer une erreur dans un trigger ?  
- [ ] A) ERROR_MESSAGE()
- [ ] B) raise_application_error()
- [ ] C) THROW_ERROR()
- [ ] D) SIGNAL_ERROR()

### Question 64
Quelle est la plage des numéros d'erreur pour raise_application_error ?  
- [ ] A) 1 à 999
- [ ] B) 20000 à 20999
- [ ] C) 10000 à 19999
- [ ] D) 30000 à 39999

---

# PARTIE III : Index et Mémoire Relationnelle (Chapitre 1.3)

## Section A : B-Arbre - Concepts

### Question 65
Qu'est-ce qu'un B-Arbre ?  
- [ ] A) Un type de table
- [ ] B) Une structure d'index arborescente équilibrée
- [ ] C) Un processus Oracle
- [ ] D) Un type de contrainte

### Question 66
Dans un B-Arbre, où sont stockées les données ?  
- [ ] A) Dans tous les nœuds
- [ ] B) Dans les pages feuilles uniquement
- [ ] C) Dans la racine
- [ ] D) Dans les nœuds intermédiaires

### Question 67
Dans un B-Arbre d'ordre d, combien d'enregistrements minimum par page feuille ?  
- [ ] A) d enregistrements
- [ ] B) ⌈d/2⌉ enregistrements (sauf la racine)
- [ ] C) 2*d enregistrements
- [ ] D) 1 enregistrement

### Question 68
Dans un B-Arbre d'ordre d, combien d'enregistrements maximum par page feuille ?  
- [ ] A) d/2 enregistrements
- [ ] B) d enregistrements
- [ ] C) 2*d enregistrements
- [ ] D) d+1 enregistrements

---

## Section B : B-Arbre - Insertion

### Question 69
Que se passe-t-il lors d'une insertion si la page est saturée ?  
- [ ] A) L'insertion échoue
- [ ] B) Éclatement : nouvelle page allouée, clés réparties
- [ ] C) La page est supprimée
- [ ] D) Les données sont compressées

### Question 70
Lors d'un éclatement, que fait-on avec la clé médiane ?  
- [ ] A) On la supprime
- [ ] B) On la propage vers le nœud parent
- [ ] C) On la garde dans la page originale
- [ ] D) On la déplace vers une autre feuille

### Question 71
L'éclatement peut-il se propager jusqu'à la racine ?  
- [ ] A) Non, jamais
- [ ] B) Oui, ce qui peut augmenter la profondeur de l'arbre
- [ ] C) Seulement si la base est en mode maintenance
- [ ] D) Seulement avec des privilèges DBA

---

## Section C : B-Arbre - Suppression

### Question 72
Lors d'une suppression, si une page a moins de ⌈d/2⌉ enregistrements, que fait-on ?  
- [ ] A) Rien, c'est accepté
- [ ] B) On examine les pages voisines pour équilibrage ou fusion
- [ ] C) On supprime la page
- [ ] D) On annule la suppression

### Question 73
Qu'est-ce que la suppression avec équilibrage ?  
- [ ] A) Supprimer et recréer l'arbre
- [ ] B) Redistribuer les enregistrements avec une page voisine ayant plus de ⌈d/2⌉
- [ ] C) Supprimer la page entière
- [ ] D) Fusionner toutes les pages

### Question 74
Qu'est-ce que la suppression avec fusion ?  
- [ ] A) Supprimer plusieurs enregistrements
- [ ] B) Regrouper deux pages en une seule quand équilibrage impossible
- [ ] C) Fusionner l'arbre avec un autre
- [ ] D) Supprimer l'index

### Question 75
La suppression avec équilibrage modifie-t-elle la structure du B-Arbre ?  
- [ ] A) Oui, toujours
- [ ] B) Non, elle ne modifie pas la structure
- [ ] C) Parfois
- [ ] D) Seulement pour la racine

---

## Section D : Index Bitmap

### Question 76
Qu'est-ce qu'un index Bitmap ?  
- [ ] A) Un index utilisant des images
- [ ] B) Un index stockant un tableau de bits pour chaque valeur possible
- [ ] C) Un index sur les colonnes BLOB
- [ ] D) Un index non-clustered

### Question 77
Pour quel type de colonnes l'index Bitmap est-il particulièrement adapté ?  
- [ ] A) Les colonnes avec beaucoup de valeurs distinctes
- [ ] B) Les colonnes avec peu de valeurs distinctes
- [ ] C) Les colonnes numériques uniquement
- [ ] D) Les colonnes de type date

### Question 78
Comment fonctionne la recherche avec un index Bitmap ?  
- [ ] A) Parcours séquentiel
- [ ] B) Sélection des RowId où le bit = 1 pour la valeur recherchée
- [ ] C) Calcul de hash
- [ ] D) Parcours d'arbre

---

## Section E : Index dans Oracle

### Question 79
Quels types d'index sont disponibles dans Oracle ?  
- [ ] A) Seulement B-Arbre
- [ ] B) B-Arbre, Bitmap, Hashage
- [ ] C) Seulement Bitmap
- [ ] D) Seulement Hash

### Question 80
Quel type d'index est créé par défaut dans Oracle ?  
- [ ] A) Bitmap
- [ ] B) Hash
- [ ] C) B-Arbre
- [ ] D) Clustered

### Question 81
Quelle est la syntaxe pour créer un index ?  
- [ ] A) CREATE INDEX nom_index FOR table(col)
- [ ] B) CREATE INDEX nom_index ON table(col)
- [ ] C) ADD INDEX nom_index TO table(col)
- [ ] D) INDEX CREATE nom_index table(col)

### Question 82
Comment créer un index unique ?  
- [ ] A) CREATE INDEX UNIQUE nom ON table(col)
- [ ] B) CREATE UNIQUE INDEX nom ON table(col)
- [ ] C) CREATE INDEX nom UNIQUE ON table(col)
- [ ] D) UNIQUE CREATE INDEX nom ON table(col)

### Question 83
Comment créer un index Bitmap ?  
- [ ] A) CREATE INDEX BITMAP nom ON table(col)
- [ ] B) CREATE BITMAP INDEX nom ON table(col)
- [ ] C) CREATE INDEX nom BITMAP ON table(col)
- [ ] D) BITMAP CREATE INDEX nom ON table(col)

### Question 84
Comment supprimer un index ?  
- [ ] A) DELETE INDEX nom
- [ ] B) DROP INDEX nom
- [ ] C) REMOVE INDEX nom
- [ ] D) ERASE INDEX nom

---

# PARTIE IV : Métabase Oracle (Chapitre 2)

## Section A : Concepts Fondamentaux

### Question 85
Qu'est-ce que le dictionnaire de données (métabase) ?  
- [ ] A) Un livre de documentation
- [ ] B) Un ensemble de tables et vues contenant les métadonnées de la base
- [ ] C) Un fichier de configuration
- [ ] D) Un type de sauvegarde

### Question 86
À qui appartient le dictionnaire de données ?  
- [ ] A) À l'utilisateur courant
- [ ] B) À l'utilisateur SYS
- [ ] C) À tous les utilisateurs
- [ ] D) À l'administrateur système

### Question 87
Comment les informations sont-elles codées dans les tables système ?  
- [ ] A) En minuscules
- [ ] B) En MAJUSCULES
- [ ] C) En camelCase
- [ ] D) De façon aléatoire

### Question 88
Quand le dictionnaire de données est-il mis à jour ?  
- [ ] A) Manuellement par l'administrateur
- [ ] B) Automatiquement après chaque instruction LMD ou LDD
- [ ] C) Une fois par jour
- [ ] D) Au redémarrage de la base

---

## Section B : Vues du Dictionnaire

### Question 89
Quels sont les préfixes des vues du dictionnaire ?  
- [ ] A) SYS_, ADMIN_, PUBLIC_
- [ ] B) USER_, ALL_, DBA_, CDB_
- [ ] C) READ_, WRITE_, FULL_
- [ ] D) PRIVATE_, PUBLIC_, SYSTEM_

### Question 90
Que contiennent les vues USER_* ?  
- [ ] A) Tous les objets de la base
- [ ] B) Les objets appartenant à l'utilisateur courant
- [ ] C) Les objets des autres utilisateurs
- [ ] D) Les objets système

### Question 91
Que contiennent les vues ALL_* ?  
- [ ] A) Seulement les objets propres
- [ ] B) Les objets propres + ceux auxquels l'utilisateur a accès
- [ ] C) Tous les objets de la base
- [ ] D) Seulement les objets système

### Question 92
Que contiennent les vues DBA_* ?  
- [ ] A) Seulement les objets de l'utilisateur
- [ ] B) Tous les objets de la base (nécessite privilèges DBA)
- [ ] C) Seulement les index
- [ ] D) Seulement les tables système

### Question 93
Quelle vue liste toutes les vues du dictionnaire ?  
- [ ] A) TABLES
- [ ] B) VIEWS
- [ ] C) DICTIONARY (ou DICT)
- [ ] D) CATALOG

### Question 94
Quelle vue contient les informations sur les tables ?  
- [ ] A) USER_COLUMNS
- [ ] B) USER_TABLES
- [ ] C) USER_INDEXES
- [ ] D) USER_VIEWS

### Question 95
Quelle vue contient les contraintes des tables ?  
- [ ] A) USER_TABLES
- [ ] B) USER_CONSTRAINTS
- [ ] C) USER_INDEXES
- [ ] D) USER_COLUMNS

---

## Section C : Vues Dynamiques (V$)

### Question 96
Qu'est-ce qu'une vue dynamique (V$) ?  
- [ ] A) Une vue modifiable
- [ ] B) Une vue enregistrant l'activité courante de la base
- [ ] C) Une vue temporaire
- [ ] D) Une vue créée par l'utilisateur

### Question 97
Qui peut accéder aux vues V$ ?  
- [ ] A) Tous les utilisateurs
- [ ] B) L'utilisateur SYS et ceux ayant le privilège SYSDBA
- [ ] C) Seulement l'utilisateur SYSTEM
- [ ] D) Personne

### Question 98
Quelle vue dynamique donne l'état de l'instance ?  
- [ ] A) V$DATABASE
- [ ] B) V$INSTANCE
- [ ] C) V$SESSION
- [ ] D) V$PROCESS

### Question 99
Quelle vue dynamique donne les informations sur la base ?  
- [ ] A) V$DATABASE
- [ ] B) V$INSTANCE
- [ ] C) V$SESSION
- [ ] D) V$PROCESS

### Question 100
Quelle vue dynamique donne les informations sur les sessions ?  
- [ ] A) V$DATABASE
- [ ] B) V$INSTANCE
- [ ] C) V$SESSION
- [ ] D) V$SGA

---

# PARTIE V : PL/SQL (Chapitre 3.1)

## Section A : Structure de Base

### Question 101
Quelle est la structure générale d'un bloc PL/SQL ?  
- [ ] A) BEGIN ... END
- [ ] B) DECLARE ... BEGIN ... EXCEPTION ... END
- [ ] C) START ... STOP
- [ ] D) OPEN ... CLOSE

### Question 102
Quelle section est obligatoire dans un bloc PL/SQL ?  
- [ ] A) DECLARE
- [ ] B) BEGIN ... END
- [ ] C) EXCEPTION
- [ ] D) Toutes sont obligatoires

### Question 103
Où déclare-t-on les variables en PL/SQL ?  
- [ ] A) Dans BEGIN
- [ ] B) Dans la section DECLARE
- [ ] C) Dans EXCEPTION
- [ ] D) N'importe où

---

## Section B : Variables et Types

### Question 104
Comment déclarer une variable du même type qu'une colonne ?  
- [ ] A) variable table.colonne
- [ ] B) variable table.colonne%TYPE
- [ ] C) variable AS table.colonne
- [ ] D) variable LIKE table.colonne

### Question 105
Comment déclarer une variable du même type qu'une ligne entière ?  
- [ ] A) variable table%TYPE
- [ ] B) variable table%ROWTYPE
- [ ] C) variable table%LINE
- [ ] D) variable table%RECORD

### Question 106
Quel est l'opérateur d'affectation en PL/SQL ?  
- [ ] A) =
- [ ] B) :=
- [ ] C) ==
- [ ] D) <-

---

## Section C : Structures de Contrôle

### Question 107
Quelle est la syntaxe de la structure conditionnelle ?  
- [ ] A) IF condition THEN instructions END
- [ ] B) IF condition THEN instructions END IF
- [ ] C) IF condition instructions ENDIF
- [ ] D) WHEN condition THEN instructions

### Question 108
Quelle est la syntaxe de la boucle FOR ?  
- [ ] A) FOR i = 1 TO n DO
- [ ] B) FOR i IN borne1..borne2 LOOP instructions END LOOP
- [ ] C) FOR (i; i < n; i++) { }
- [ ] D) FOREACH i IN range

### Question 109
Quelle est la syntaxe de la boucle WHILE ?  
- [ ] A) WHILE condition DO
- [ ] B) WHILE (condition) LOOP instructions END LOOP
- [ ] C) DO WHILE condition
- [ ] D) LOOP WHILE condition

### Question 110
Comment sortir d'une boucle LOOP ?  
- [ ] A) BREAK
- [ ] B) EXIT WHEN (condition)
- [ ] C) STOP
- [ ] D) RETURN

---

## Section D : Affichage

### Question 111
Quel package permet d'afficher des messages ?  
- [ ] A) PRINT_OUTPUT
- [ ] B) DBMS_OUTPUT
- [ ] C) DISPLAY_MESSAGE
- [ ] D) SHOW_TEXT

### Question 112
Quelle commande rend les affichages visibles dans SQL*Plus ?  
- [ ] A) ENABLE OUTPUT
- [ ] B) SET SERVEROUTPUT ON
- [ ] C) SHOW OUTPUT
- [ ] D) DISPLAY ON

### Question 113
Quelle procédure affiche un message avec saut de ligne ?  
- [ ] A) DBMS_OUTPUT.PRINT
- [ ] B) DBMS_OUTPUT.PUT_LINE
- [ ] C) DBMS_OUTPUT.DISPLAY
- [ ] D) DBMS_OUTPUT.SHOW

### Question 114
Quelle procédure affiche un message sans saut de ligne ?  
- [ ] A) DBMS_OUTPUT.PUT
- [ ] B) DBMS_OUTPUT.PUT_LINE
- [ ] C) DBMS_OUTPUT.PRINT
- [ ] D) DBMS_OUTPUT.WRITE

---

## Section E : Curseurs

### Question 115
Qu'est-ce qu'un curseur en PL/SQL ?  
- [ ] A) Un type de variable
- [ ] B) Une zone mémoire pour stocker les résultats d'une requête multi-lignes
- [ ] C) Un type de boucle
- [ ] D) Un opérateur SQL

### Question 116
Quand doit-on utiliser un curseur explicite ?  
- [ ] A) Pour toutes les requêtes
- [ ] B) Pour sélectionner plusieurs lignes
- [ ] C) Seulement pour les INSERT
- [ ] D) Pour les DELETE

### Question 117
Quelles sont les étapes de traitement d'un curseur explicite ?  
- [ ] A) CREATE, USE, DELETE
- [ ] B) DECLARE, OPEN, FETCH, CLOSE
- [ ] C) START, PROCESS, END
- [ ] D) INIT, LOOP, FINISH

### Question 118
Que fait l'instruction OPEN ?  
- [ ] A) Déclare le curseur
- [ ] B) Exécute la requête et charge les résultats en SGA
- [ ] C) Récupère une ligne
- [ ] D) Ferme le curseur

### Question 119
Que fait l'instruction FETCH ?  
- [ ] A) Ouvre le curseur
- [ ] B) Récupère une ligne du curseur dans des variables
- [ ] C) Ferme le curseur
- [ ] D) Déclare le curseur

### Question 120
Quelle variable système indique si le curseur contient encore des lignes ?  
- [ ] A) Curseur%HASMORE
- [ ] B) Curseur%FOUND
- [ ] C) Curseur%ACTIVE
- [ ] D) Curseur%OPEN

### Question 121
Que signifie Curseur%NOTFOUND ?  
- [ ] A) Le curseur n'existe pas
- [ ] B) Plus de lignes à récupérer
- [ ] C) Le curseur est fermé
- [ ] D) Erreur dans la requête

### Question 122
Que retourne Curseur%ROWCOUNT ?  
- [ ] A) Le nombre total de lignes
- [ ] B) Le nombre de lignes déjà récupérées
- [ ] C) Le nombre de colonnes
- [ ] D) Le numéro de la ligne courante

---

## Section F : Exceptions

### Question 123
Où gère-t-on les exceptions en PL/SQL ?  
- [ ] A) Dans DECLARE
- [ ] B) Dans la section EXCEPTION
- [ ] C) Dans BEGIN
- [ ] D) Après END

### Question 124
Quelle exception est levée si un SELECT INTO ne retourne aucune ligne ?  
- [ ] A) EMPTY_RESULT
- [ ] B) NO_DATA_FOUND
- [ ] C) NULL_RETURN
- [ ] D) ZERO_ROWS

### Question 125
Quelle exception est levée pour une violation de contrainte UNIQUE ?  
- [ ] A) UNIQUE_VIOLATION
- [ ] B) DUP_VAL_ON_INDEX
- [ ] C) DUPLICATE_KEY
- [ ] D) CONSTRAINT_ERROR

### Question 126
Comment capturer toutes les exceptions non gérées ?  
- [ ] A) WHEN ALL THEN
- [ ] B) WHEN OTHERS THEN
- [ ] C) WHEN ANY THEN
- [ ] D) DEFAULT

---

## Section G : Procédures et Fonctions

### Question 127
Quelle est la différence entre une procédure et une fonction ?  
- [ ] A) Il n'y a pas de différence
- [ ] B) Une fonction retourne obligatoirement une valeur avec RETURN
- [ ] C) Une procédure est plus rapide
- [ ] D) Une fonction ne peut pas avoir de paramètres

### Question 128
Comment appeler une procédure depuis SQL*Plus ?  
- [ ] A) CALL procedure
- [ ] B) EXECUTE procedure
- [ ] C) RUN procedure
- [ ] D) START procedure

### Question 129
Comment voir les erreurs après création d'une procédure ?  
- [ ] A) SELECT ERRORS
- [ ] B) SHOW ERRORS
- [ ] C) LIST ERRORS
- [ ] D) VIEW ERRORS

### Question 130
Où peut-on appeler une fonction stockée ?  
- [ ] A) Seulement dans PL/SQL
- [ ] B) Dans une requête SQL, un bloc PL/SQL, une procédure ou fonction
- [ ] C) Seulement dans SQL
- [ ] D) Seulement dans les triggers

---

# PARTIE VI : Contrôle d'Accès (Chapitre 3.2)

## Section A : Types de Privilèges

### Question 131
Quels sont les deux types de privilèges ?  
- [ ] A) Lecture et écriture
- [ ] B) Privilèges système et privilèges objets
- [ ] C) Privilèges publics et privés
- [ ] D) Privilèges temporaires et permanents

### Question 132
Qu'est-ce qu'un privilège système ?  
- [ ] A) Un droit sur une table
- [ ] B) Un droit d'exécuter une instruction SQL (CREATE, ALTER, DROP)
- [ ] C) Un droit de lecture
- [ ] D) Un droit sur une vue

### Question 133
Qu'est-ce qu'un privilège objet ?  
- [ ] A) Un droit système
- [ ] B) Un droit d'accéder à un objet d'un autre schéma (SELECT, INSERT, etc.)
- [ ] C) Un droit de connexion
- [ ] D) Un droit de création

---

## Section B : GRANT et REVOKE

### Question 134
Quelle commande attribue des privilèges ?  
- [ ] A) ALLOW
- [ ] B) GRANT
- [ ] C) PERMIT
- [ ] D) ENABLE

### Question 135
Quelle commande retire des privilèges ?  
- [ ] A) REMOVE
- [ ] B) REVOKE
- [ ] C) DELETE
- [ ] D) DENY

### Question 136
Quel privilège système permet de se connecter ?  
- [ ] A) CONNECT
- [ ] B) CREATE SESSION
- [ ] C) LOGIN
- [ ] D) ACCESS DATABASE

### Question 137
Quelle option permet de transmettre un privilège système ?  
- [ ] A) WITH GRANT OPTION
- [ ] B) WITH ADMIN OPTION
- [ ] C) TRANSFERABLE
- [ ] D) SHAREABLE

### Question 138
Quelle option permet de transmettre un privilège objet ?  
- [ ] A) WITH ADMIN OPTION
- [ ] B) WITH GRANT OPTION
- [ ] C) TRANSFERABLE
- [ ] D) SHAREABLE

### Question 139
Comment donner un privilège à tous les utilisateurs ?  
- [ ] A) GRANT ... TO ALL
- [ ] B) GRANT ... TO PUBLIC
- [ ] C) GRANT ... TO EVERYONE
- [ ] D) GRANT ... TO *

---

## Section C : Rôles

### Question 140
Qu'est-ce qu'un rôle ?  
- [ ] A) Un type d'utilisateur
- [ ] B) Un groupe nommé de privilèges qu'on peut attribuer
- [ ] C) Un type de table
- [ ] D) Un niveau de sécurité

### Question 141
Comment créer un rôle ?  
- [ ] A) ADD ROLE nom
- [ ] B) CREATE ROLE nom
- [ ] C) NEW ROLE nom
- [ ] D) MAKE ROLE nom

### Question 142
Quels sont les rôles prédéfinis dans Oracle ?  
- [ ] A) ADMIN, USER, GUEST
- [ ] B) CONNECT, RESOURCE, DBA
- [ ] C) READ, WRITE, EXECUTE
- [ ] D) PUBLIC, PRIVATE, SYSTEM

### Question 143
Que permet le rôle CONNECT ?  
- [ ] A) Tout faire
- [ ] B) INSERT, UPDATE, DELETE, SELECT sur les relations autorisées, créer des vues
- [ ] C) Seulement se connecter
- [ ] D) Créer des tables

### Question 144
Que permet le rôle RESOURCE ?  
- [ ] A) Seulement lire
- [ ] B) Créer tables, vues, triggers, procédures
- [ ] C) Seulement se connecter
- [ ] D) Tous les privilèges

### Question 145
Que permet le rôle DBA ?  
- [ ] A) Seulement administrer
- [ ] B) Tous les privilèges système avec ADMIN OPTION
- [ ] C) Créer des utilisateurs seulement
- [ ] D) Gérer les sauvegardes

---

## Section D : Utilisateurs et Profils

### Question 146
Comment créer un utilisateur ?  
- [ ] A) ADD USER nom
- [ ] B) CREATE USER nom IDENTIFIED BY password
- [ ] C) NEW USER nom
- [ ] D) INSERT USER nom

### Question 147
Comment créer un profil ?  
- [ ] A) ADD PROFILE
- [ ] B) CREATE PROFILE nom LIMIT ...
- [ ] C) NEW PROFILE
- [ ] D) INSERT PROFILE

### Question 148
Que peut limiter un profil ?  
- [ ] A) Seulement le mot de passe
- [ ] B) Sessions simultanées, temps CPU, tentatives de connexion, durée du mot de passe
- [ ] C) Seulement les tables accessibles
- [ ] D) Seulement les heures de connexion

---

## Section E : Vues des Privilèges

### Question 149
Quelle vue liste les privilèges sur les tables ?  
- [ ] A) USER_TAB_PRIVS
- [ ] B) USER_TAB_GRANTS
- [ ] C) USER_PRIVILEGES
- [ ] D) USER_PERMISSIONS

### Question 150
Quelle vue liste les rôles de l'utilisateur courant ?  
- [ ] A) USER_ROLES
- [ ] B) USER_ROLE_PRIVS
- [ ] C) MY_ROLES
- [ ] D) SESSION_ROLES

---

## Fin du QCM Complet

**Bon courage pour votre examen !**
