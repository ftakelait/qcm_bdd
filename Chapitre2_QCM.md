# QCM - Chapitre 2 : La Méta-Base (Les Catalogues) Oracle

---

### Question 1
Qu'est-ce qu'un catalogue dans le contexte d'un SGBD ?

- A) Un fichier de sauvegarde contenant une copie complète des données utilisateur
- B) Une table système contenant des métadonnées sur tous les objets de la base de données
- C) Un programme d'application permettant de visualiser les données sous forme de rapports
- D) Un utilisateur spécial ayant des droits d'administration sur toutes les tables

---

### Question 2
Les informations descriptives des objets de la base (tables, colonnes, index) sont stockées dans :

- A) Les fichiers de journalisation (redo logs) pour permettre la récupération après panne
- B) La Méta-Base, un ensemble de tables système décrivant la structure de la base
- C) Les fichiers temporaires créés lors de l'exécution des requêtes complexes
- D) Le cache mémoire qui est vidé à chaque redémarrage de l'instance

---

### Question 3
Sans les catalogues (méta-base), le SGBD :

- A) Fonctionne normalement mais plus lentement sans les optimisations
- B) Ne peut pas assurer ses objectifs car il ne connaît pas la structure des données
- C) Crée automatiquement de nouvelles tables pour remplacer les catalogues manquants
- D) Génère des sauvegardes automatiques pour reconstruire les informations perdues

---

### Question 4
La méta-relation « RELATION » décrit :

- A) Les utilisateurs ayant accès à la base de données et leurs privilèges
- B) Chaque table (relation) de la base avec ses caractéristiques (type, taille, cardinalité)
- C) Les requêtes SQL en cours d'exécution sur le serveur Oracle
- D) Les fichiers physiques stockant les données sur le disque dur

---

### Question 5
Quels sont les trois types de relations décrits dans la méta-relation « RELATION » ?

- A) Relations Primaires (clé primaire), Secondaires (clé étrangère), Tertiaires (sans clé)
- B) Relations Système (gestion méta-base), Base (données utilisateur), Virtuelle (vues)
- C) Relations Locales (même serveur), Distantes (autre serveur), Cloud (externalisées)
- D) Relations Simples (une table), Complexes (jointures), Mixtes (vues matérialisées)

---

### Question 6
Une relation de type « système » est utilisée pour :

- A) Stocker les données métier saisies par les utilisateurs de l'application
- B) Assurer la gestion interne de la méta-base elle-même (ex: table des attributs)
- C) Créer des vues personnalisées pour différents groupes d'utilisateurs
- D) Stocker les fichiers multimédias volumineux comme les images

---

### Question 7
Une relation de type « virtuelle » correspond à :

- A) Une table physique stockée sur le disque avec toutes ses données
- B) Une vue où seule la définition (requête SQL) existe, pas de données stockées
- C) Un fichier de configuration contenant les paramètres de l'instance
- D) Un index secondaire créé pour accélérer les requêtes de recherche

---

### Question 8
Quelles informations sont typiquement incluses dans la méta-relation « RELATION » ?

- A) Image binaire des données, son associé, vidéos de démonstration
- B) Nom, Type, Taille tuple, Cardinalité, Degré, Date création, Version, Adresse
- C) Login utilisateur, Mot de passe crypté, Email de contact
- D) Couleur d'affichage, Forme des icônes, Taille de police

---

### Question 9
La cardinalité d'une relation représente :

- A) Le nombre d'attributs (colonnes) définissant la structure de la table
- B) Le nombre de tuples (lignes) actuellement présents dans la relation
- C) La taille en octets d'un enregistrement complet de la table
- D) Le nombre d'index définis sur cette relation pour optimiser les accès

---

### Question 10
Le degré d'une relation représente :

- A) Le nombre de tuples (lignes) stockés dans la relation
- B) Le nombre d'attributs (colonnes) constituant la structure de la relation
- C) La taille totale du fichier stockant les données de la table
- D) Le niveau de sécurité associé à cette table (public, confidentiel, secret)

---

### Question 11
La méta-relation « ATTRIBUT » contient des informations sur :

- A) Les comptes utilisateurs autorisés à accéder à la base de données
- B) Les colonnes (attributs) de chaque table avec leurs caractéristiques
- C) Les fichiers physiques et leur emplacement sur le système de fichiers
- D) Les requêtes SQL stockées pour exécution différée

---

### Question 12
Quelles informations sont incluses dans la méta-relation « ATTRIBUT » ?

- A) Nom de l'attribut, Identifiant interne, Type de données, Longueur, Position dans la relation
- B) Nom de l'utilisateur propriétaire, Mot de passe, Rôle assigné
- C) Date de la dernière modification, Heure précise, Fuseau horaire
- D) URL du serveur, Numéro de port, Protocole de communication

---

### Question 13
La méta-relation « INDEX » décrit :

- A) Les comptes utilisateurs et leurs niveaux d'accès aux différentes tables
- B) Les index créés sur les relations avec leurs caractéristiques et colonnes indexées
- C) Les fichiers de journalisation utilisés pour la reprise après panne
- D) Les connexions réseau entre les clients et le serveur de base de données

---

### Question 14
Quelles informations sont incluses dans la méta-relation « INDEX » ?

- A) Nom de l'index, Identificateur de la relation indexée, Type d'index, Attributs indexés
- B) Nom de l'utilisateur créateur, Adresse email, Numéro de téléphone
- C) Date de transaction, Montant, Devise utilisée
- D) Adresse du serveur, Client connecté, Protocole utilisé

---

### Question 15
La méta-relation « VUE » contient :

- A) Les images et graphiques stockés dans la base de données
- B) L'identificateur de la vue, les tables de base utilisées et la requête SQL définissant la vue
- C) Les séquences vidéo stockées en format binaire compressé
- D) Les fichiers audio pour les applications multimédia

---

### Question 16
Comment la requête qui définit une vue est-elle stockée dans la méta-relation « VUE » ?

- A) Comme un fichier binaire compilé pour une exécution plus rapide
- B) Comme une chaîne de caractères représentant le texte SQL de la requête
- C) Comme un tableau de pointeurs vers les tables de base concernées
- D) Comme un index spécial pointant vers les résultats pré-calculés

---

### Question 17
Les catalogues (méta-base) sont mis à jour :

- A) Manuellement par l'administrateur via des commandes spécifiques de maintenance
- B) Dynamiquement et automatiquement par le SGBD lors de chaque modification de structure
- C) Une seule fois par jour pendant la fenêtre de maintenance nocturne
- D) Jamais, car ils sont créés une fois pour toutes lors de l'installation

---

### Question 18
Quelles opérations provoquent une mise à jour automatique des catalogues ?

- A) Uniquement les opérations de lecture SELECT sur les tables utilisateur
- B) Les créations/modifications de tables, ajouts d'index, créations de vues (DDL)
- C) Le simple redémarrage du serveur Oracle sans modification de données
- D) Les opérations de sauvegarde RMAN vers des supports externes

---

### Question 19
Si on exécute `ALTER TABLE Fournisseur ADD ADRESSEF VARCHAR2(50)`, quelles répercussions sur les catalogues ?

- A) Aucune modification car ALTER TABLE ne touche pas la méta-base
- B) Ajout d'une ligne dans ATTRIBUT, modification du degré et de la taille dans RELATION
- C) Suppression de la table Fournisseur et recréation avec le nouvel attribut
- D) Création d'un nouvel utilisateur ADRESSEF avec des droits sur la table

---

### Question 20
Le dictionnaire de données Oracle appartient à l'utilisateur :

- A) PUBLIC qui représente tous les utilisateurs de la base de données
- B) SYSTEM qui est l'administrateur par défaut créé à l'installation
- C) SYS qui est le propriétaire des tables et vues du dictionnaire de données
- D) ADMIN qui est un compte générique pour les tâches d'administration

---

### Question 21
Quelles informations sont stockées dans la Méta-Base Oracle ?

- A) Uniquement les noms des tables créées par les utilisateurs
- B) Structure logique/physique, définitions objets, contraintes, utilisateurs, privilèges, audit
- C) Uniquement les mots de passe cryptés des utilisateurs pour l'authentification
- D) Les fichiers multimédias volumineux comme les images et les vidéos

---

### Question 22
Les informations contenues dans les vues du dictionnaire des données Oracle sont codées en :

- A) Minuscules pour respecter la convention des identifiants Oracle
- B) MAJUSCULES, il faut donc utiliser des critères en majuscules dans les requêtes
- C) CamelCase alternant majuscules et minuscules pour la lisibilité
- D) snake_case avec des underscores séparant les mots

---

### Question 23
Le dictionnaire des données Oracle est mis à jour automatiquement après :

- A) Uniquement les instructions SELECT qui ne modifient pas les données
- B) Chaque instruction DDL (CREATE, ALTER, DROP) et DML (INSERT, UPDATE, DELETE)
- C) Uniquement les commentaires SQL ajoutés aux scripts
- D) Exclusivement les instructions ROLLBACK annulant des modifications

---

### Question 24
Les vues du dictionnaire de données avec le préfixe CDB_* fournissent :

- A) Des informations uniquement sur les objets appartenant à l'utilisateur courant
- B) Des informations sur les objets de toutes les PDB au sein d'une Container Database
- C) Des informations sur les fichiers de journalisation (redo logs)
- D) Des statistiques de performance pour l'optimisation des requêtes

---

### Question 25
Les vues du dictionnaire de données avec le préfixe DBA_* fournissent :

- A) Des informations uniquement sur les objets créés par l'utilisateur connecté
- B) Des informations sur tous les objets de la base, nécessitant des privilèges DBA
- C) Uniquement les statistiques d'utilisation des ressources système
- D) Les messages d'erreur générés par les processus d'arrière-plan

---

### Question 26
Les vues du dictionnaire de données avec le préfixe USER_* fournissent :

- A) Des informations sur tous les objets de la base accessibles à tous les utilisateurs
- B) Des informations uniquement sur les objets appartenant au compte utilisateur connecté
- C) Des informations sur les autres utilisateurs et leurs privilèges
- D) Les informations sur les processus système et les ressources mémoire

---

### Question 27
Les vues du dictionnaire de données avec le préfixe ALL_* fournissent :

- A) Uniquement les informations sur les objets système créés à l'installation
- B) Les objets de l'utilisateur plus ceux accessibles via privilèges accordés ou PUBLIC
- C) Aucune information car ce préfixe n'existe pas dans Oracle
- D) Les erreurs et exceptions survenues dans toutes les sessions

---

### Question 28
Pour trouver la liste de toutes les vues du dictionnaire de données, on interroge :

- A) La vue USER_TABLES qui contient la liste de toutes les vues système
- B) La vue DICTIONARY (synonyme DICT) qui répertorie toutes les vues du dictionnaire
- C) La vue ALL_INDEXES qui contient les métadonnées de tous les objets
- D) La vue DBA_USERS qui liste les vues accessibles à chaque utilisateur

---

### Question 29
La démarche pour interroger correctement le dictionnaire des données est :

- A) Exécuter directement SELECT * FROM toutes les tables jusqu'à trouver l'information
- B) 1) Trouver le nom de la vue (DICTIONARY), 2) Décrire ses colonnes (DESC), 3) Interroger (SELECT)
- C) Créer une nouvelle table temporaire puis y copier les données du dictionnaire
- D) Supprimer l'ancienne vue et en créer une nouvelle avec les informations souhaitées

---

### Question 30
Pour trouver les vues du dictionnaire relatives aux séquences, on utilise la requête :

- A) SELECT * FROM USER_TABLES WHERE table_type = 'SEQUENCE';
- B) SELECT * FROM DICTIONARY WHERE table_name LIKE '%SEQUENCE%';
- C) CREATE VIEW sequences AS SELECT * FROM all_objects;
- D) DROP TABLE sequences; CREATE TABLE sequences AS ...;

---

### Question 31
La vue USER_TABLES (synonyme TABS) décrit :

- A) Les comptes utilisateurs ayant accès à la base de données
- B) Les tables relationnelles appartenant à l'utilisateur courant
- C) Les index créés par l'administrateur de la base
- D) Les procédures stockées et fonctions PL/SQL

---

### Question 32
La vue USER_TAB_COLUMNS (synonyme COLS) décrit :

- A) Les tables et leurs statistiques d'utilisation
- B) Les colonnes des tables et vues appartenant à l'utilisateur avec leur type et taille
- C) Les index créés sur les différentes tables de l'utilisateur
- D) Les triggers définis sur les tables pour automatiser les actions

---

### Question 33
La vue USER_INDEXES (synonyme IND) décrit :

- A) Les tables appartenant à l'utilisateur connecté
- B) Les index créés par l'utilisateur avec leurs caractéristiques (type, table, colonnes)
- C) Les vues définies par l'utilisateur et leur requête source
- D) Les séquences créées pour générer des valeurs uniques

---

### Question 34
La vue USER_CONSTRAINTS décrit :

- A) Les utilisateurs et leurs limitations de ressources
- B) Les contraintes d'intégrité définies sur les tables (PK, FK, CHECK, UNIQUE, NOT NULL)
- C) Les fichiers de journalisation et leur état de remplissage
- D) Les processus system et leur consommation CPU

---

### Question 35
La vue USER_VIEWS décrit :

- A) Les tables physiques stockant les données utilisateur
- B) Les vues appartenant à l'utilisateur avec leur définition SQL
- C) Les index B-arbre et Bitmap de l'utilisateur
- D) Les triggers BEFORE et AFTER définis par l'utilisateur

---

### Question 36
La vue USER_SYNONYMS décrit :

- A) Les antonymes des mots-clés SQL pour la documentation
- B) Les synonymes privés créés par l'utilisateur pour simplifier l'accès aux objets
- C) Les homonymes dans les noms de colonnes entre différentes tables
- D) Les paronymes identifiés dans les requêtes SQL pour éviter les confusions

---

### Question 37
Les vues DBA_SYNONYMS et ALL_SYNONYMS décrivent :

- A) Uniquement les synonymes publics accessibles à tous les utilisateurs
- B) Tous les synonymes de la base : privés (USER) et publics (PUBLIC)
- C) Aucun synonyme car Oracle ne supporte pas cette fonctionnalité
- D) Les erreurs de syntaxe dans les définitions de synonymes

---

### Question 38
La vue USER_TAB_COMMENTS contient :

- A) Les données brutes stockées dans les tables de l'utilisateur
- B) Les commentaires descriptifs ajoutés aux tables et vues par COMMENT ON
- C) Le code source des procédures stockées et fonctions
- D) Les requêtes SQL les plus fréquemment exécutées

---

### Question 39
La vue USER_USERS décrit :

- A) La liste de tous les utilisateurs ayant accès à la base de données
- B) Les caractéristiques du compte utilisateur actuellement connecté (default tablespace, etc.)
- C) Les groupes d'utilisateurs définis par l'administrateur
- D) Les rôles système attribués aux différents comptes

---

### Question 40
La vue USER_TAB_GRANTS liste :

- A) Les tables créées par l'utilisateur et leur date de création
- B) Les privilèges sur les tables/vues accordés à ou par l'utilisateur
- C) Les index automatiquement créés pour les clés primaires
- D) Les contraintes d'intégrité référentielle entre tables

---

### Question 41
La vue USER_COL_PRIVS_RECD fournit des informations sur :

- A) Les colonnes nouvellement créées dans les tables de l'utilisateur
- B) Les colonnes spécifiques pour lesquelles l'utilisateur a reçu des privilèges d'accès
- C) Les colonnes supprimées par des commandes ALTER TABLE DROP COLUMN
- D) Les colonnes modifiées par des opérations UPDATE récentes

---

### Question 42
La vue DBA_ROLES contient :

- A) Les tables système nécessaires au fonctionnement du SGBD
- B) La liste de tous les rôles définis dans la base de données
- C) Les index créés par l'administrateur pour optimiser les performances
- D) Les vues matérialisées et leur calendrier de rafraîchissement

---

### Question 43
La vue USER_ROLE_PRIVS décrit :

- A) Les tables appartenant à l'utilisateur et leurs privilèges associés
- B) Les rôles accordés à l'utilisateur courant (directement ou via PUBLIC)
- C) Les index que l'utilisateur a le droit de créer sur ses tables
- D) Les vues que l'utilisateur peut interroger sans restriction

---

### Question 44
La vue SESSION_ROLES indique :

- A) Les rôles créés depuis le début de l'existence de la base de données
- B) Les rôles actuellement actifs (non désactivés) pour la session courante
- C) Les rôles supprimés par l'administrateur depuis la dernière sauvegarde
- D) Les rôles désactivés de manière permanente par des contraintes de sécurité

---

### Question 45
Les vues dynamiques de performances Oracle sont identifiées avec le préfixe :

- A) USER_PERF$ pour les performances des objets utilisateur
- B) DBA_STATS$ pour les statistiques d'administration
- C) V_$ (avec le synonyme V$ couramment utilisé, exemple: V$SESSION)
- D) ALL_METRICS$ pour les métriques globales du système

---

### Question 46
Les vues dynamiques V$ sont accessibles uniquement pour :

- A) Tous les utilisateurs ayant créé au moins une table dans leur schéma
- B) L'utilisateur SYS et les utilisateurs ayant le privilège SYSDBA
- C) Les utilisateurs anonymes se connectant sans authentification
- D) Les applications tierces via des connecteurs JDBC ou ODBC

---

### Question 47
Pour trouver la liste des vues dynamiques V$, on interroge :

- A) La vue DICTIONARY qui contient toutes les vues du système
- B) La vue V$FIXED_TABLE qui liste les vues et tables dynamiques
- C) La vue USER_TABLES filtrée sur les tables commençant par V$
- D) La vue ALL_VIEWS avec une clause WHERE sur le préfixe

---

### Question 48
La vue V$PARAMETER fournit :

- A) Les tables utilisateur et leurs statistiques de performance
- B) Les paramètres d'initialisation de l'instance avec leurs valeurs actuelles
- C) Les index et leur efficacité mesurée en nombre d'accès
- D) Les contraintes et leur état de validation (enabled/disabled)

---

### Question 49
La vue V$SGA fournit :

- A) Les tables système et leur occupation mémoire
- B) Des informations récapitulatives sur la System Global Area (taille des buffers)
- C) Les utilisateurs connectés et leur consommation de ressources
- D) Les rôles système et leurs privilèges associés

---

### Question 50
La vue V$SESSION donne des informations sur :

- A) Les tables temporaires créées pendant les transactions
- B) Les sessions actives : utilisateur, programme, statut, temps de connexion
- C) Les index utilisés lors de la dernière requête exécutée
- D) Les fichiers de données et leur taux de remplissage

---

### Question 51
La vue V$INSTANCE donne :

- A) Les tables et leur distribution sur les différents tablespaces
- B) L'état de l'instance Oracle : nom, statut (OPEN/MOUNTED), version, uptime
- C) Les utilisateurs et leurs instances de connexion préférées
- D) Les contraintes et leur mode de validation (IMMEDIATE/DEFERRED)

---

### Question 52
La vue V$DATABASE contient :

- A) Les données utilisateur et leur historique de modifications
- B) Des informations globales sur la base : nom, date création, mode d'archivage
- C) Les requêtes en attente d'exécution dans la file d'attente
- D) Les triggers actifs et leurs conditions de déclenchement

---

### Question 53
La vue V$DATAFILE donne :

- A) Les tables et le nombre de lignes qu'elles contiennent
- B) Les fichiers de données : nom, taille, statut (ONLINE/OFFLINE), tablespace
- C) Les index et les colonnes sur lesquelles ils sont définis
- D) Les vues et leur requête SQL de définition

---

### Question 54
La vue V$CONTROLFILE fournit :

- A) Les tables système et leurs fichiers de stockage associés
- B) Les noms et emplacements des fichiers de contrôle de la base
- C) Les index de contrôle créés pour vérifier l'intégrité des données
- D) Les utilisateurs ayant des droits de contrôle sur la base

---

### Question 55
La vue V$LOGFILE contient :

- A) Les tables de journalisation créées par les applications utilisateur
- B) Les fichiers redo log en ligne : nom, groupe, statut (CURRENT/ACTIVE/INACTIVE)
- C) Les statistiques d'utilisation des tables les plus fréquemment accédées
- D) Les erreurs survenues lors de l'exécution des dernières requêtes

---

### Question 56
Pour vérifier s'il existe une contrainte de clé étrangère entre deux tables, on exploite :

- A) La vue USER_TABLES qui contient toutes les relations entre tables
- B) La vue USER_CONSTRAINTS qui contient les définitions des contraintes FK
- C) La vue USER_INDEXES qui liste les index créés automatiquement pour les FK
- D) La vue USER_VIEWS qui affiche les jointures entre tables

---

### Question 57
Le synonyme TABS correspond à la vue :

- A) USER_INDEXES qui liste les index de l'utilisateur
- B) USER_TABLES qui liste les tables de l'utilisateur
- C) USER_VIEWS qui liste les vues de l'utilisateur
- D) USER_CONSTRAINTS qui liste les contraintes de l'utilisateur

---

### Question 58
Le synonyme IND correspond à la vue :

- A) USER_TABLES qui décrit les tables de l'utilisateur
- B) USER_INDEXES qui décrit les index créés par l'utilisateur
- C) USER_VIEWS qui décrit les vues de l'utilisateur
- D) USER_CONSTRAINTS qui décrit les contraintes de l'utilisateur

---

### Question 59
La vue USER_ERRORS contient :

- A) Les données supprimées accidentellement par les utilisateurs
- B) Les erreurs de compilation des objets PL/SQL (procédures, fonctions, triggers)
- C) Les statistiques sur les erreurs de type de données dans les insertions
- D) Les fichiers de journalisation des erreurs système

---

### Question 60
La vue USER_SOURCE contient :

- A) Les données brutes des tables créées par l'utilisateur
- B) Le code source des objets PL/SQL stockés (procédures, fonctions, packages, triggers)
- C) Les index et leur code de définition binaire optimisé
- D) Les fichiers de configuration de l'instance Oracle
