# QCM - Chapitre 1 : Architecture et Administration des Bases de Données

## Partie 1 : Généralités sur les BD et Architecture de SGBD

---

### Question 1
Qu'est-ce qu'une base de données ?

- A) Un logiciel de traitement de texte
- B) Une collection de données cohérentes et structurées (données persistantes) utilisées par des systèmes informatiques
- C) Un système d'exploitation
- D) Un langage de programmation

---

### Question 2
Quel est le rôle principal d'un SGBD ?

- A) Créer des pages web
- B) Manipuler les bases de données (consulter, modifier, construire, organiser, transformer, copier, sauvegarder ou restaurer)
- C) Compiler du code source
- D) Gérer uniquement les impressions

---

### Question 3
Quelle phase historique correspond à l'émergence des BD relationnelles basées sur le modèle d'Edgar Frank Codd ?

- A) Phase 1 : 1960-1970
- B) Phase 2 : 1970-2003
- C) Phase 3 : 2000-aujourd'hui
- D) Phase 4 : NewSQL

---

### Question 4
Quels sont les trois niveaux de description des données dans l'architecture ANSI/SPARC ?

- A) Physique, Logique, Application
- B) Conceptuel, Interne, Externe
- C) Client, Serveur, Base
- D) Local, Distant, Cloud

---

### Question 5
Le schéma conceptuel décrit :

- A) Le stockage physique des données
- B) L'univers à modéliser avec les contraintes d'intégrité
- C) Les applications qui accèdent aux données
- D) La structure du réseau

---

### Question 6
Quel composant du SGBD est responsable de la génération de l'arbre algébrique et de l'optimisation des requêtes ?

- A) L'interface utilisateur
- B) L'analyseur de requêtes
- C) Le gestionnaire de transactions
- D) Le gestionnaire de mémoire

---

### Question 7
Une transaction dans un SGBD a la forme suivante :

- A) Début - Traitement - Fin
- B) Début transaction - Demande de verrous - Lecture/Écriture - Fin transaction
- C) Connexion - Requête - Déconnexion
- D) Insert - Update - Delete

---

### Question 8
L'indépendance logique dans un SGBD est possible grâce à :

- A) Les index
- B) Les vues
- C) Les triggers
- D) Les transactions

---

### Question 9
Quel objectif du SGBD permet à plusieurs utilisateurs d'accéder en même temps à la base de données ?

- A) Cohérence des données
- B) Évolution de la BD
- C) Partageabilité des données
- D) Indépendance physique

---

### Question 10
Dans l'architecture client-serveur d'un SGBD :

- A) Le client et le serveur sont sur la même machine
- B) Le programme d'application (client) gère l'interface et le SGBD (serveur) gère les données
- C) Il n'y a pas de distinction entre client et serveur
- D) Le client stocke toutes les données

---

### Question 11
Qu'est-ce que le DBaaS (Database-as-a-Service) ?

- A) Un type de base de données hiérarchique
- B) Un service cloud qui fournit et gère automatiquement les bases de données
- C) Un langage de programmation
- D) Un protocole réseau

---

### Question 12
Le DDL Compiler dans l'architecture interne d'un SGBD :

- A) Exécute les requêtes SELECT
- B) Traite les instructions DDL et les convertit en métadonnées
- C) Gère la mémoire tampon
- D) Optimise les performances

---

### Question 13
Quel composant du SGBD vérifie les contraintes d'intégrité lorsque la base de données est modifiée ?

- A) Query Optimizer
- B) Authorization Manager
- C) Integrity Manager
- D) Buffer Manager

---

### Question 14
Le Transaction Manager :

- A) Compile les procédures stockées
- B) Contrôle l'accès concurrent en ordonnançant les opérations
- C) Gère uniquement les sauvegardes
- D) Crée les index automatiquement

---

### Question 15
Le Recovery Manager est responsable de :

- A) L'optimisation des requêtes
- B) La gestion des problèmes liés aux pannes du système
- C) La création des utilisateurs
- D) Le chiffrement des données

---

## Partie 1 (Suite) : Le SGBD Oracle

---

### Question 16
Quelle est la signification du "c" dans Oracle 12c ?

- A) Code
- B) Cloud
- C) Client
- D) Core

---

### Question 17
L'instance Oracle est composée de :

- A) Uniquement des fichiers de données
- B) Des composants mémoire et des processus d'arrière-plan
- C) Uniquement du serveur web
- D) Des applications utilisateur

---

### Question 18
La SGA (System Global Area) contient :

- A) Uniquement les fichiers log
- B) Les données et informations de contrôle utilisées par les processus
- C) Le code source des applications
- D) Les mots de passe utilisateurs

---

### Question 19
Le Database Buffer Cache dans la SGA sert à :

- A) Stocker les mots de passe
- B) Stocker des copies des blocs de données lus depuis les fichiers pour réduire les accès disque
- C) Compiler les requêtes SQL
- D) Gérer les connexions réseau

---

### Question 20
Le Redo Log Buffer enregistre :

- A) Les noms des utilisateurs
- B) Toutes les modifications effectuées sur la base de données pour la protéger en cas de défaillance
- C) Les statistiques de performance
- D) Les requêtes SELECT uniquement

---

### Question 21
Quel processus Oracle analyse les requêtes SQL et crée un plan d'exécution ?

- A) User process
- B) Server process
- C) DBWR
- D) LGWR

---

### Question 22
Le processus DBWR (Database Writer) :

- A) Écrit les requêtes SQL
- B) Écrit les blocs de données du Buffer Cache vers les fichiers de données physiques
- C) Gère les connexions utilisateur
- D) Archive les fichiers log

---

### Question 23
Le processus LGWR (Log Writer) :

- A) Crée les utilisateurs
- B) Écrit les blocs de journalisation depuis le Redo Log Buffer vers les Redo Log Files
- C) Optimise les requêtes
- D) Gère la mémoire

---

### Question 24
Le processus SMON (System Monitor) est responsable de :

- A) La surveillance des utilisateurs
- B) La récupération du système et des activités de maintenance globale
- C) L'écriture des données
- D) La compilation du code

---

### Question 25
Les Control Files dans Oracle contiennent :

- A) Les données utilisateur
- B) Les informations relatives à l'état de la base (nom, emplacement des fichiers)
- C) Le code source
- D) Les images et vidéos

---

### Question 26
Dans la structure logique de stockage Oracle, l'ordre croissant de taille est :

- A) Tablespace → Segment → Extent → Data Block
- B) Data Block → Extent → Segment → Tablespace
- C) Segment → Data Block → Tablespace → Extent
- D) Extent → Tablespace → Segment → Data Block

---

### Question 27
Un Extent dans Oracle est :

- A) Un fichier de données
- B) Un ensemble de blocs de données contigus
- C) Un utilisateur
- D) Une requête SQL

---

### Question 28
Dans l'architecture Multitenant d'Oracle, une CDB est :

- A) Une base de données compressée
- B) Une Container Database pouvant contenir plusieurs Pluggable Databases
- C) Une base de données cliente
- D) Un type de sauvegarde

---

### Question 29
Une PDB (Pluggable Database) :

- A) Ne peut pas être déplacée
- B) Est un ensemble portable de schémas apparaissant comme une base distincte
- C) Contient uniquement des fichiers temporaires
- D) N'existe pas dans Oracle

---

### Question 30
Le processus CKPT (Checkpoint) :

- A) Vérifie les mots de passe
- B) Met à jour les fichiers de données et de contrôle pour indiquer le point de contrôle le plus récent
- C) Compile les triggers
- D) Gère les rôles utilisateurs

---

## Partie 2 : Gestion de l'Intégrité - Contraintes d'Intégrité

---

### Question 31
Une contrainte d'intégrité est :

- A) Un type d'utilisateur
- B) Une règle qui maintient la cohérence des données
- C) Un fichier de sauvegarde
- D) Un processus d'arrière-plan

---

### Question 32
Quand peut-on déclarer une contrainte d'intégrité ?

- A) Uniquement à la création de la base
- B) À la création de la base ou à tout instant de son existence
- C) Uniquement après la suppression de données
- D) Jamais

---

### Question 33
La contrainte NOT NULL :

- A) Autorise les valeurs nulles
- B) Interdit la présence de valeurs nulles dans la colonne
- C) Supprime automatiquement les valeurs nulles
- D) Convertit les nulles en zéro

---

### Question 34
Une contrainte PRIMARY KEY :

- A) Permet les doublons
- B) Garantit l'unicité et crée automatiquement un index primaire
- C) Est identique à NOT NULL
- D) Ne peut pas être modifiée

---

### Question 35
La contrainte FOREIGN KEY :

- A) Définit une colonne par référence à une autre table
- B) Crée une nouvelle table
- C) Supprime les enregistrements
- D) Est une contrainte temporaire

---

### Question 36
Une contrainte d'intégrité statique concerne :

- A) Le changement d'état
- B) Un seul état de la base de données
- C) Uniquement les vues
- D) Les processus système

---

### Question 37
Une contrainte d'intégrité dynamique :

- A) Ne change jamais
- B) Contrôle le passage d'un état à un autre
- C) Est définie uniquement sur les index
- D) Ne peut pas utiliser les triggers

---

### Question 38
La syntaxe pour ajouter une contrainte à une table existante est :

- A) INSERT CONSTRAINT
- B) ALTER TABLE ... ADD CONSTRAINT
- C) CREATE CONSTRAINT
- D) UPDATE CONSTRAINT

---

### Question 39
Pour supprimer une contrainte, on utilise :

- A) DELETE CONSTRAINT
- B) ALTER TABLE ... DROP CONSTRAINT
- C) REMOVE CONSTRAINT
- D) CLEAR CONSTRAINT

---

### Question 40
Une contrainte intra-relation multi attribut horizontale :

- A) Concerne une seule colonne
- B) Contrôle la valeur d'un constituant en fonction des valeurs d'autres constituants du même tuple
- C) Compare les valeurs entre différentes tables
- D) Ne peut pas être définie

---

## Partie 2 (Suite) : Les Triggers

---

### Question 41
Un trigger (déclencheur) est :

- A) Un type d'index
- B) Une règle de type "si événement et/ou condition alors action"
- C) Un utilisateur spécial
- D) Un fichier de configuration

---

### Question 42
La syntaxe de base d'un trigger Oracle est :

- A) CREATE FUNCTION
- B) CREATE TRIGGER ... {BEFORE/AFTER} {DELETE/INSERT/UPDATE} ON ... BEGIN ... END
- C) CREATE PROCEDURE
- D) CREATE INDEX

---

### Question 43
L'option BEFORE dans un trigger signifie que :

- A) Le trigger n'est jamais exécuté
- B) Le bloc action est levé avant l'exécution de l'événement
- C) Le trigger est exécuté en dernier
- D) Le trigger supprime les données

---

### Question 44
L'option FOR EACH ROW définit :

- A) Un trigger global
- B) Un trigger ligne qui se déclenche pour chaque ligne affectée
- C) Un trigger qui ne s'exécute qu'une fois
- D) Un trigger désactivé

---

### Question 45
Les noms de corrélation :NEW et :OLD dans un trigger permettent de :

- A) Créer de nouvelles tables
- B) Accéder aux anciennes et nouvelles valeurs de colonne
- C) Supprimer des enregistrements
- D) Créer des index

---

### Question 46
Pour un trigger déclenché par INSERT, quelle valeur de corrélation a un sens ?

- A) :OLD uniquement
- B) :NEW uniquement
- C) Les deux
- D) Aucune

---

### Question 47
Quelles instructions sont autorisées dans les triggers ?

- A) Les instructions DDL
- B) Les instructions LMD (INSERT, UPDATE, DELETE, SELECT)
- C) COMMIT et ROLLBACK
- D) Toutes les instructions

---

### Question 48
Oracle autorise jusqu'à combien de triggers en cascade ?

- A) 8
- B) 16
- C) 32
- D) 64

---

### Question 49
Pour désactiver un trigger, on utilise :

- A) DROP TRIGGER
- B) ALTER TRIGGER ... DISABLE
- C) DELETE TRIGGER
- D) REMOVE TRIGGER

---

### Question 50
Les définitions des triggers sont stockées dans :

- A) Les fichiers de données
- B) Les tables de la métabase (USER_TRIGGERS, ALL_TRIGGERS, DBA_TRIGGERS)
- C) Les fichiers log
- D) La RAM uniquement

---

### Question 51
La procédure RAISE_APPLICATION_ERROR permet de :

- A) Créer un utilisateur
- B) Provoquer une erreur personnalisée dans un trigger
- C) Optimiser les requêtes
- D) Créer un index

---

## Partie 3 : La Mémoire Relationnelle

---

### Question 52
Les quatre fonctions principales de la couche SGBD qui accède à la BD sont :

- A) Créer, Lire, Modifier, Supprimer
- B) Présenter une vision relationnelle, Gérer la MC, Gérer les relations, Établir des méthodes d'accès
- C) Connecter, Déconnecter, Authentifier, Autoriser
- D) Indexer, Hacher, Trier, Filtrer

---

### Question 53
La page est :

- A) Un utilisateur
- B) L'unité de transfert entre mémoire secondaire et mémoire centrale
- C) Une requête SQL
- D) Un trigger

---

### Question 54
Dans l'organisation séquentielle (Tas de données) :

- A) Les données sont triées
- B) Les enregistrements sont placés l'un après l'autre sans ordre particulier
- C) Un index est automatiquement créé
- D) Le hachage est utilisé

---

### Question 55
La technique du hachage utilise :

- A) Un arbre binaire
- B) Une fonction h(c) pour calculer un numéro de bloc
- C) Une liste chaînée uniquement
- D) Un tri alphabétique

---

### Question 56
Dans le hachage, la gestion des débordements :

- A) N'existe pas
- B) Peut dégrader les performances
- C) Améliore toujours les performances
- D) Est automatiquement optimisée

---

### Question 57
Un index dense :

- A) Ne contient aucune clé
- B) Contient toutes les clés du fichier (densité = 1)
- C) Contient uniquement la première clé
- D) Est toujours vide

---

### Question 58
Un index non dense :

- A) Est associé à un fichier non trié
- B) Crée des entrées pour certains enregistrements seulement, le fichier étant trié et divisé en blocs
- C) Contient toutes les clés
- D) N'utilise pas d'adresses

---

### Question 59
Un B-arbre d'ordre d signifie que :

- A) Chaque nœud a exactement d fils
- B) Chaque nœud a au plus d fils
- C) L'arbre a d niveaux
- D) Il y a d enregistrements

---

### Question 60
Dans un B-arbre, chaque nœud (excepté la racine et les feuilles) a au moins :

- A) 1 fils
- B) [d/2] fils (arrondi supérieur de d/2)
- C) d fils
- D) 2d fils

---

### Question 61
Dans un B-arbre, la racine a au moins :

- A) 0 fils
- B) 1 fils
- C) 2 fils
- D) d fils

---

### Question 62
Toutes les feuilles d'un B-arbre apparaissent :

- A) À des niveaux différents
- B) Au même niveau
- C) Uniquement à la racine
- D) De manière aléatoire

---

### Question 63
L'insertion dans un B-arbre avec éclatement se produit quand :

- A) Le nœud est vide
- B) Le nœud est saturé (a le maximum de fils)
- C) L'arbre est vide
- D) La clé existe déjà

---

### Question 64
La suppression avec fusion dans un B-arbre se produit quand :

- A) Le nœud a trop d'éléments
- B) Le nœud a moins de [d/2] enregistrements après suppression et son frère n'a pas assez d'éléments
- C) L'arbre est plein
- D) La clé n'existe pas

---

### Question 65
La suppression avec équilibrage dans un B-arbre :

- A) Modifie la structure du B-arbre
- B) Ne modifie pas la structure du B-arbre
- C) Supprime tout l'arbre
- D) Crée un nouvel arbre

---

### Question 66
Un index Bitmap est particulièrement utile pour :

- A) Les colonnes avec beaucoup de valeurs distinctes
- B) Les colonnes qui ne possèdent que quelques valeurs distinctes
- C) Les clés primaires uniquement
- D) Les tables temporaires

---

### Question 67
Dans un index Bitmap, pour chaque valeur on stocke :

- A) La valeur complète de chaque enregistrement
- B) Un tableau de bits avec autant de bits qu'il y a de lignes dans la table
- C) Un pointeur vers le disque
- D) Une copie de la table

---

### Question 68
La syntaxe pour créer un index B-arbre (par défaut) dans Oracle est :

- A) CREATE BTREE INDEX
- B) CREATE INDEX nom_index ON nom_table(colonne)
- C) CREATE TREE INDEX
- D) CREATE DEFAULT INDEX

---

### Question 69
Pour créer un index Bitmap dans Oracle, on utilise :

- A) CREATE INDEX ... BITMAP
- B) CREATE BITMAP INDEX ... ON ...
- C) CREATE INDEX ... TYPE BITMAP
- D) CREATE BIT INDEX

---

### Question 70
Pour supprimer un index dans Oracle, on utilise :

- A) DELETE INDEX
- B) DROP INDEX nom_index
- C) REMOVE INDEX
- D) ALTER INDEX ... DELETE
