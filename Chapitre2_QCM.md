# QCM - Chapitre 2 : La Méta-Base (Les Catalogues) Oracle

---

### Question 1
Qu'est-ce qu'un catalogue dans le contexte d'un SGBD ?

- A) Un fichier de sauvegarde
- B) Une relation (table) contenant des informations sur tous les objets de la base de données
- C) Un programme d'application
- D) Un utilisateur spécial

---

### Question 2
Les informations descriptives des objets de la base sont stockées dans :

- A) Les fichiers log
- B) La Méta Base
- C) Les fichiers temporaires
- D) Le cache mémoire

---

### Question 3
Sans les catalogues, le SGBD :

- A) Fonctionne normalement
- B) Ne peut pas assurer ses objectifs
- C) Crée automatiquement de nouvelles tables
- D) Génère des sauvegardes

---

### Question 4
La méta-relation « RELATION » décrit :

- A) Les utilisateurs de la base
- B) Chaque relation (table) dans la base de données
- C) Les requêtes en cours d'exécution
- D) Les fichiers physiques

---

### Question 5
Quels sont les trois types de relations décrits dans la méta-relation « RELATION » ?

- A) Primaire, Secondaire, Tertiaire
- B) Système, Base, Virtuelle
- C) Locale, Distante, Cloud
- D) Simple, Complexe, Mixte

---

### Question 6
Une relation de type « système » est utilisée pour :

- A) Stocker les données utilisateur
- B) Assurer la gestion de la méta base
- C) Créer des vues
- D) Stocker les images

---

### Question 7
Une relation de type « virtuelle » correspond à :

- A) Une table physique
- B) Une vue où seule la description existe
- C) Un fichier de configuration
- D) Un index

---

### Question 8
Quelles informations sont typiquement incluses dans la méta-relation « RELATION » ?

- A) Image, Son, Vidéo
- B) Nom, Type, Taille, Cardinalité, Degré, Date de création, Version, Adresse
- C) Login, Mot de passe, Email
- D) Couleur, Forme, Taille

---

### Question 9
La cardinalité d'une relation représente :

- A) Le nombre d'attributs
- B) Le nombre de tuples (lignes) de la relation
- C) La taille en octets
- D) Le nombre d'index

---

### Question 10
Le degré d'une relation représente :

- A) Le nombre de tuples
- B) Le nombre d'attributs de la relation
- C) La taille du fichier
- D) Le niveau de sécurité

---

### Question 11
La méta-relation « ATTRIBUT » contient des informations sur :

- A) Les utilisateurs
- B) Les attributs (colonnes) de chaque relation
- C) Les fichiers physiques
- D) Les requêtes

---

### Question 12
Quelles informations sont incluses dans la méta-relation « ATTRIBUT » ?

- A) Nom attribut, Identificateur attribut, Type, Longueur, Position dans la relation
- B) Nom utilisateur, Mot de passe, Rôle
- C) Date, Heure, Timezone
- D) URL, Port, Protocole

---

### Question 13
La méta-relation « INDEX » décrit :

- A) Les utilisateurs
- B) Les index créés sur les relations
- C) Les fichiers log
- D) Les connexions réseau

---

### Question 14
Quelles informations sont incluses dans la méta-relation « INDEX » ?

- A) Nom de l'index, Identificateur de la relation indexée, Type de l'index, Attributs indexés
- B) Nom utilisateur, Email, Téléphone
- C) Date, Montant, Devise
- D) Serveur, Client, Protocole

---

### Question 15
La méta-relation « VUE » contient :

- A) Les images stockées
- B) La description des vues avec l'identificateur, les relations de base et la requête qui définit la vue
- C) Les vidéos
- D) Les fichiers audio

---

### Question 16
Comment la requête qui définit une vue est-elle stockée dans la méta-relation « VUE » ?

- A) Comme un fichier binaire
- B) Comme une chaîne de caractères
- C) Comme un tableau
- D) Comme un index

---

### Question 17
Les catalogues sont mis à jour :

- A) Manuellement par l'administrateur
- B) Dynamiquement et automatiquement au fur et à mesure que la base de données évolue
- C) Une fois par jour
- D) Jamais

---

### Question 18
Quelles opérations provoquent une mise à jour automatique des catalogues ?

- A) La lecture de données uniquement
- B) Les insertions, modifications de structure, ajouts d'index, créations de vues
- C) Le redémarrage du serveur
- D) Les sauvegardes

---

### Question 19
Si on exécute `ALTER TABLE Fournisseur ADD ADRESSEF ...`, quelles répercussions y aura-t-il sur les catalogues ?

- A) Aucune modification
- B) Ajout d'une ligne dans le catalogue ATTRIBUT et modification du tuple FOURNISSEUR (degré, taille, version)
- C) Suppression de la table
- D) Création d'un nouvel utilisateur

---

### Question 20
Le dictionnaire de données Oracle appartient à l'utilisateur :

- A) PUBLIC
- B) SYSTEM
- C) SYS
- D) ADMIN

---

### Question 21
Quelles informations sont stockées dans la Méta Base Oracle ?

- A) Uniquement les noms des tables
- B) Structure logique et physique, définitions des objets, contraintes, utilisateurs, privilèges, audit
- C) Uniquement les mots de passe
- D) Les fichiers multimédia

---

### Question 22
Les informations contenues dans les tables système du dictionnaire des données Oracle sont codées en :

- A) Minuscules
- B) MAJUSCULES
- C) Camel case
- D) Snake case

---

### Question 23
Le dictionnaire des données Oracle est mis à jour automatiquement après :

- A) Uniquement les instructions SELECT
- B) Chaque instruction SQL du LMD (INSERT, UPDATE, DELETE) ou LDD (CREATE, ALTER, DROP)
- C) Les commentaires SQL
- D) Les instructions ROLLBACK uniquement

---

### Question 24
Les vues du dictionnaire de données avec le préfixe CDB_* fournissent :

- A) Des informations sur les objets de l'utilisateur courant
- B) Des informations sur les objets de toutes les PDB dans un CDB
- C) Des informations sur les fichiers log
- D) Des statistiques de performance

---

### Question 25
Les vues du dictionnaire de données avec le préfixe DBA_* fournissent :

- A) Des informations sur les objets de l'utilisateur courant
- B) Des informations sur tous les objets dans la PDB
- C) Uniquement les statistiques
- D) Les erreurs système

---

### Question 26
Les vues du dictionnaire de données avec le préfixe USER_* fournissent :

- A) Des informations sur tous les objets de la base
- B) Des informations sur les objets appartenant au compte connecté
- C) Des informations sur les autres utilisateurs
- D) Les processus système

---

### Question 27
Les vues du dictionnaire de données avec le préfixe ALL_* fournissent :

- A) Uniquement les objets système
- B) Les informations des vues USER_* plus les objets pour lesquels des privilèges ont été octroyés
- C) Aucune information
- D) Les erreurs

---

### Question 28
Pour trouver la liste de toutes les vues du dictionnaire de données, on interroge :

- A) USER_TABLES
- B) DICTIONARY ou DICT
- C) ALL_INDEXES
- D) DBA_USERS

---

### Question 29
La démarche pour interroger correctement le dictionnaire des données est :

- A) Exécuter directement une requête
- B) 1) Trouver le nom de la vue (DICTIONARY), 2) Choisir les colonnes (DESC), 3) Interroger la vue (SELECT)
- C) Créer une nouvelle table
- D) Supprimer l'ancienne vue

---

### Question 30
Pour trouver les vues relatives aux séquences, on utilise la requête :

- A) SELECT * FROM USER_TABLES;
- B) SELECT * FROM DICTIONARY WHERE table_name LIKE '%SEQUENCE%';
- C) CREATE VIEW ...;
- D) DROP TABLE ...;

---

### Question 31
La vue USER_TABLES (synonyme TABS) décrit :

- A) Les utilisateurs
- B) Les tables relationnelles de l'utilisateur
- C) Les index
- D) Les procédures

---

### Question 32
La vue USER_TAB_COLUMNS (synonyme COLS) décrit :

- A) Les tables
- B) Les colonnes des tables et vues
- C) Les index
- D) Les triggers

---

### Question 33
La vue USER_INDEXES (synonyme IND) décrit :

- A) Les tables
- B) Les index de l'utilisateur
- C) Les vues
- D) Les séquences

---

### Question 34
La vue USER_CONSTRAINTS décrit :

- A) Les utilisateurs
- B) Les définitions des contraintes de tables
- C) Les fichiers log
- D) Les processus

---

### Question 35
La vue USER_VIEWS décrit :

- A) Les tables
- B) Les vues de l'utilisateur
- C) Les index
- D) Les triggers

---

### Question 36
La vue USER_SYNONYMS décrit :

- A) Les antonymes
- B) Les synonymes privés de l'utilisateur
- C) Les homonymes
- D) Les paronymes

---

### Question 37
Les vues DBA_SYNONYMS et ALL_SYNONYMS décrivent :

- A) Uniquement les synonymes publics
- B) Tous les synonymes (privés et publics)
- C) Aucun synonyme
- D) Les erreurs

---

### Question 38
La vue USER_TAB_COMMENTS contient :

- A) Les données des tables
- B) Les commentaires à propos des tables ou vues
- C) Le code source
- D) Les requêtes

---

### Question 39
La vue USER_USERS décrit :

- A) Tous les utilisateurs de la base
- B) Les caractéristiques de l'utilisateur courant
- C) Les groupes
- D) Les rôles

---

### Question 40
La vue USER_TAB_GRANTS liste :

- A) Les tables
- B) Les autorisations sur les tables et les vues
- C) Les index
- D) Les contraintes

---

### Question 41
La vue USER_COL_PRIVS_RECD fournit des informations sur :

- A) Les colonnes créées
- B) Les colonnes pour lesquelles l'utilisateur a reçu une autorisation
- C) Les colonnes supprimées
- D) Les colonnes modifiées

---

### Question 42
La vue DBA_ROLES contient :

- A) Les tables
- B) Tous les rôles existants
- C) Les index
- D) Les vues

---

### Question 43
La vue USER_ROLE_PRIVS décrit :

- A) Les tables de l'utilisateur
- B) Les rôles donnés à l'utilisateur
- C) Les index de l'utilisateur
- D) Les vues de l'utilisateur

---

### Question 44
La vue SESSION_ROLES indique :

- A) Les rôles créés
- B) Les rôles actifs à un instant t pour la session courante
- C) Les rôles supprimés
- D) Les rôles désactivés

---

### Question 45
Les vues dynamiques de performances Oracle sont identifiées avec le préfixe :

- A) USER_
- B) DBA_
- C) V_$ (synonym V$)
- D) ALL_

---

### Question 46
Les vues dynamiques sont accessibles uniquement pour :

- A) Tous les utilisateurs
- B) L'utilisateur SYS et les utilisateurs ayant le privilège SYSDBA
- C) Les utilisateurs anonymes
- D) Les applications tierces

---

### Question 47
Pour trouver la liste des vues dynamiques, on interroge :

- A) DICTIONARY
- B) V$FIXED_TABLE
- C) USER_TABLES
- D) ALL_VIEWS

---

### Question 48
La vue V$PARAMETER fournit :

- A) Les tables utilisateur
- B) Les informations sur les paramètres d'initialisation
- C) Les index
- D) Les contraintes

---

### Question 49
La vue V$SGA fournit :

- A) Les tables
- B) Des informations récapitulatives sur la SGA (System Global Area)
- C) Les utilisateurs
- D) Les rôles

---

### Question 50
La vue V$SESSION donne des informations sur :

- A) Les tables
- B) La session courante
- C) Les index
- D) Les fichiers

---

### Question 51
La vue V$INSTANCE donne :

- A) Les tables
- B) L'état de l'instance courante
- C) Les utilisateurs
- D) Les contraintes

---

### Question 52
La vue V$DATABASE contient :

- A) Les données utilisateur
- B) Des informations sur la base de données (nom, date de création)
- C) Les requêtes
- D) Les triggers

---

### Question 53
La vue V$DATAFILE donne :

- A) Les tables
- B) Les informations sur les fichiers de données (nom, statut)
- C) Les index
- D) Les vues

---

### Question 54
La vue V$CONTROLFILE fournit :

- A) Les tables
- B) Les noms des fichiers de contrôle
- C) Les index
- D) Les utilisateurs

---

### Question 55
La vue V$LOGFILE contient :

- A) Les tables
- B) Des informations sur les fichiers de redo log en ligne
- C) Les statistiques
- D) Les erreurs

---

### Question 56
Pour vérifier s'il y a une référence de clé étrangère entre deux tables, on exploite :

- A) USER_TABLES
- B) USER_CONSTRAINTS
- C) USER_INDEXES
- D) USER_VIEWS

---

### Question 57
Le synonyme TABS correspond à la vue :

- A) USER_INDEXES
- B) USER_TABLES
- C) USER_VIEWS
- D) USER_CONSTRAINTS

---

### Question 58
Le synonyme IND correspond à la vue :

- A) USER_TABLES
- B) USER_INDEXES
- C) USER_VIEWS
- D) USER_CONSTRAINTS

---

### Question 59
La vue USER_ERRORS contient :

- A) Les données des tables
- B) Les erreurs après compilation des objets PL/SQL stockés
- C) Les statistiques
- D) Les fichiers log

---

### Question 60
La vue USER_SOURCE contient :

- A) Les données des tables
- B) Le code source des objets PL/SQL stockés (procédures, fonctions, packages, triggers)
- C) Les index
- D) Les fichiers de configuration
