# QCM - Chapitre 1 : Architecture et Administration des Bases de Données

## Partie 1 : Généralités sur les BD et Architecture de SGBD

---

### Question 1
Qu'est-ce qu'une base de données ?

- A) Un ensemble de fichiers texte non structurés stockés sur un serveur web permettant le partage de documents
- B) Une collection de données cohérentes et structurées (données persistantes) utilisées par des systèmes informatiques
- C) Un programme permettant d'exécuter des requêtes réseau entre plusieurs serveurs distribués
- D) Un langage de programmation spécialisé dans la manipulation des tableaux et matrices

---

### Question 2
Quel est le rôle principal d'un SGBD ?

- A) Compiler et exécuter du code source dans différents langages de programmation
- B) Manipuler les bases de données : consulter, modifier, construire, organiser, transformer, copier, sauvegarder ou restaurer
- C) Gérer les protocoles réseau et les communications entre machines distantes
- D) Créer des interfaces graphiques pour les applications métier de l'entreprise

---

### Question 3
Quelle phase historique correspond à l'émergence des BD relationnelles basées sur le modèle d'Edgar Frank Codd ?

- A) Phase 1 (1960-1970) : période des bases de données hiérarchiques et réseau avec le modèle Codasyl
- B) Phase 2 (1970-2003) : émergence du modèle relationnel basé sur la théorie des ensembles et le langage SQL
- C) Phase 3 (2000-aujourd'hui) : période NoSQL avec les bases de données distribuées et non relationnelles
- D) Phase 4 (NewSQL) : combinaison des avantages du relationnel et de la scalabilité du NoSQL

---

### Question 4
Quels sont les trois niveaux de description des données dans l'architecture ANSI/SPARC ?

- A) Niveau Physique (stockage disque), Niveau Logique (tables), Niveau Application (interfaces utilisateur)
- B) Niveau Conceptuel (modélisation), Niveau Interne (stockage physique), Niveau Externe (vues utilisateur)
- C) Niveau Client (requêtes), Niveau Serveur (traitement), Niveau Base (stockage des données)
- D) Niveau Local (données locales), Niveau Distribué (données réparties), Niveau Cloud (données externalisées)

---

### Question 5
Le schéma conceptuel décrit :

- A) L'organisation physique des données sur le disque dur, incluant les blocs et les pages
- B) L'univers à modéliser avec les contraintes d'intégrité définies sur les objets de la base
- C) Les programmes d'application qui accèdent aux données via des interfaces graphiques
- D) La configuration réseau nécessaire pour connecter les différents serveurs de base de données

---

### Question 6
Quel composant du SGBD est responsable de la génération de l'arbre algébrique et de l'optimisation des requêtes ?

- A) L'interface utilisateur qui interprète les commandes saisies par l'administrateur
- B) L'analyseur de requêtes qui génère le plan d'exécution optimal pour chaque requête SQL
- C) Le gestionnaire de transactions qui contrôle l'exécution concurrente des opérations
- D) Le gestionnaire de mémoire qui alloue et libère les espaces tampons nécessaires

---

### Question 7
Une transaction dans un SGBD a la forme suivante :

- A) Connexion utilisateur → Authentification → Exécution requête → Déconnexion automatique
- B) Début transaction → Demande de verrous → Lecture/Écriture → Fin transaction
- C) Création table → Insertion données → Validation schéma → Fermeture connexion
- D) Ouverture fichier → Lecture séquentielle → Modification buffer → Écriture disque

---

### Question 8
L'indépendance logique dans un SGBD permet que :

- A) Les données soient automatiquement sauvegardées sur plusieurs disques physiques
- B) Plusieurs visions d'utilisateurs puissent coexister sur la même base grâce aux vues
- C) Les requêtes SQL soient automatiquement optimisées sans intervention humaine
- D) Les transactions soient exécutées en parallèle sans risque de conflit

---

### Question 9
Quel objectif du SGBD permet à plusieurs utilisateurs d'accéder en même temps à la base de données ?

- A) La cohérence des données qui garantit le respect des contraintes d'intégrité
- B) L'évolution de la BD qui permet de modifier la structure des relations
- C) La partageabilité des données qui gère les conflits d'accès et d'écriture simultanés
- D) L'indépendance physique qui isole la structure logique du stockage physique

---

### Question 10
Dans l'architecture client-serveur d'un SGBD :

- A) Le client et le serveur s'exécutent obligatoirement sur la même machine physique
- B) Le programme d'application (client) gère l'interface utilisateur, le SGBD (serveur) gère les données
- C) Le client stocke toutes les données localement et se synchronise périodiquement avec le serveur
- D) Il n'y a aucune distinction entre le client et le serveur, les rôles sont interchangeables

---

### Question 11
Qu'est-ce que le DBaaS (Database-as-a-Service) ?

- A) Un protocole de communication standardisé pour l'échange de données entre SGBD hétérogènes
- B) Un service cloud qui fournit et gère automatiquement les bases de données sans intervention technique
- C) Un langage de programmation conçu spécialement pour le développement d'applications de bases de données
- D) Une architecture de base de données distribuée permettant la réplication géographique des données

---

### Question 12
Le DDL Compiler dans l'architecture interne d'un SGBD :

- A) Exécute les requêtes SELECT en parcourant les index et en chargeant les données en mémoire
- B) Traite les instructions DDL (CREATE, ALTER, DROP) et les convertit en métadonnées stockées
- C) Gère la mémoire tampon en optimisant les transferts entre le disque et la RAM
- D) Optimise les performances en créant automatiquement des index sur les colonnes fréquemment utilisées

---

### Question 13
Quel composant du SGBD vérifie les contraintes d'intégrité lorsque la base de données est modifiée ?

- A) Le Query Optimizer qui génère le plan d'exécution le plus efficace pour chaque requête
- B) L'Authorization Manager qui vérifie les privilèges des utilisateurs sur les objets
- C) L'Integrity Manager qui s'assure que les modifications respectent les règles définies
- D) Le Buffer Manager qui gère les transferts de données entre mémoire et disque

---

### Question 14
Le Transaction Manager :

- A) Compile les procédures stockées et les fonctions définies par les utilisateurs
- B) Contrôle l'accès concurrent en ordonnançant les opérations selon les transactions reçues
- C) Gère uniquement les opérations de sauvegarde et de restauration de la base
- D) Crée automatiquement les index primaires et secondaires pour optimiser les accès

---

### Question 15
Le Recovery Manager est responsable de :

- A) L'optimisation des requêtes SQL complexes impliquant plusieurs jointures
- B) La gestion des problèmes liés aux pannes du système et la restauration de la base
- C) La création et la gestion des comptes utilisateurs et de leurs privilèges
- D) Le chiffrement des données sensibles avant leur stockage sur le disque

---

## Partie 1 (Suite) : Le SGBD Oracle

---

### Question 16
Quelle est la signification du "c" dans Oracle 12c ?

- A) "Code" indiquant une version majeure du code source d'Oracle
- B) "Cloud" indiquant le support natif des environnements cloud computing
- C) "Client" indiquant une version optimisée pour les applications client-serveur
- D) "Core" indiquant les fonctionnalités fondamentales du moteur de base de données

---

### Question 17
L'instance Oracle est composée de :

- A) Uniquement des fichiers de données stockés sur le disque dur du serveur
- B) Des composants mémoire (SGA) et des processus d'arrière-plan exécutés au démarrage
- C) Uniquement du serveur web Apache permettant l'accès distant à la base
- D) Des applications utilisateur connectées simultanément à la base de données

---

### Question 18
La SGA (System Global Area) contient :

- A) Uniquement les fichiers de journalisation des transactions (redo logs)
- B) Les données et les informations de contrôle partagées entre les processus Oracle
- C) Le code source des applications développées par les utilisateurs de la base
- D) Les mots de passe cryptés des utilisateurs ayant accès à la base de données

---

### Question 19
Le Database Buffer Cache dans la SGA sert à :

- A) Stocker les mots de passe des utilisateurs de manière cryptée et sécurisée
- B) Stocker des copies des blocs de données lus depuis les fichiers pour réduire les accès disque
- C) Compiler les requêtes SQL et générer le code machine optimisé pour leur exécution
- D) Gérer les connexions réseau entre les clients distants et le serveur Oracle

---

### Question 20
Le Redo Log Buffer enregistre :

- A) Les noms et adresses des utilisateurs connectés à l'instance Oracle
- B) Toutes les modifications effectuées sur la base pour permettre la récupération après défaillance
- C) Les statistiques de performance et les métriques d'utilisation des ressources
- D) Uniquement les requêtes SELECT exécutées pour des analyses de performance

---

### Question 21
Quel processus Oracle analyse les requêtes SQL et crée un plan d'exécution ?

- A) Le User process qui établit la connexion entre l'application et l'instance Oracle
- B) Le Server process qui parse les requêtes, crée et exécute le plan d'exécution
- C) Le DBWR (Database Writer) qui écrit les blocs de données sur le disque
- D) Le LGWR (Log Writer) qui enregistre les modifications dans les fichiers log

---

### Question 22
Le processus DBWR (Database Writer) :

- A) Écrit les requêtes SQL exécutées dans un fichier journal pour audit
- B) Écrit les blocs de données modifiés du Buffer Cache vers les fichiers de données physiques
- C) Gère les connexions utilisateur et l'authentification des sessions
- D) Archive les anciens fichiers de journalisation vers un stockage externe

---

### Question 23
Le processus LGWR (Log Writer) :

- A) Crée les comptes utilisateurs et gère leurs privilèges d'accès
- B) Écrit les blocs de journalisation depuis le Redo Log Buffer vers les Redo Log Files
- C) Optimise les requêtes SQL en analysant les statistiques des tables
- D) Gère l'allocation et la libération de la mémoire partagée entre processus

---

### Question 24
Le processus SMON (System Monitor) est responsable de :

- A) La surveillance des activités des utilisateurs pour détecter les comportements suspects
- B) La récupération du système après une panne et les activités de maintenance globale
- C) L'écriture des données modifiées depuis le buffer cache vers les fichiers de données
- D) La compilation des procédures stockées et la gestion du cache PL/SQL

---

### Question 25
Les Control Files dans Oracle contiennent :

- A) Les données utilisateur organisées en tables, index et autres objets de schéma
- B) Les informations sur l'état de la base : nom, emplacement des fichiers de données et logs
- C) Le code source des applications et procédures stockées développées par les utilisateurs
- D) Les fichiers multimédias (images, vidéos) stockés en tant que LOB dans la base

---

### Question 26
Dans la structure logique de stockage Oracle, l'ordre du plus petit au plus grand élément est :

- A) Tablespace → Segment → Extent → Data Block (du conteneur vers l'unité)
- B) Data Block → Extent → Segment → Tablespace (de l'unité vers le conteneur)
- C) Segment → Data Block → Tablespace → Extent (ordre alphabétique)
- D) Extent → Tablespace → Segment → Data Block (selon la fréquence d'utilisation)

---

### Question 27
Un Extent dans Oracle est :

- A) Un fichier de données physique stockant les objets d'un tablespace particulier
- B) Un ensemble de blocs de données contigus alloués pour stocker un type d'information
- C) Un compte utilisateur ayant des droits d'administration étendus sur la base
- D) Une requête SQL complexe nécessitant une optimisation particulière

---

### Question 28
Dans l'architecture Multitenant d'Oracle, une CDB (Container Database) est :

- A) Une base de données compressée pour réduire l'espace disque utilisé
- B) Une base de données conteneur pouvant héberger plusieurs bases distinctes (PDBs)
- C) Une base de données cliente connectée à un serveur central de réplication
- D) Un type de sauvegarde incrémentale utilisé pour la restauration point-in-time

---

### Question 29
Une PDB (Pluggable Database) :

- A) Ne peut jamais être déplacée vers une autre Container Database une fois créée
- B) Est un ensemble portable de schémas et objets apparaissant comme une base distincte
- C) Contient uniquement les fichiers temporaires nécessaires aux opérations de tri
- D) Est une ancienne technologie Oracle remplacée par les tablespaces depuis la version 12c

---

### Question 30
Le processus CKPT (Checkpoint) :

- A) Vérifie la complexité des mots de passe avant d'autoriser la connexion des utilisateurs
- B) Met à jour les fichiers de données et de contrôle pour indiquer le point de contrôle le plus récent
- C) Compile les triggers et vérifie leur syntaxe avant de les stocker dans le dictionnaire
- D) Gère l'attribution des rôles et privilèges aux différents utilisateurs de la base

---

## Partie 2 : Gestion de l'Intégrité - Contraintes d'Intégrité

---

### Question 31
Une contrainte d'intégrité est :

- A) Un type particulier d'utilisateur ayant des droits limités sur certaines tables
- B) Une règle définissant des conditions que les données doivent respecter pour maintenir la cohérence
- C) Un fichier de sauvegarde créé automatiquement avant chaque modification de données
- D) Un processus d'arrière-plan vérifiant périodiquement l'état de santé de la base

---

### Question 32
Quand peut-on déclarer une contrainte d'intégrité ?

- A) Uniquement lors de la création initiale de la base de données, jamais après
- B) À la création de la table (CREATE TABLE) ou ultérieurement (ALTER TABLE)
- C) Uniquement après avoir supprimé toutes les données existantes de la table
- D) Les contraintes sont créées automatiquement par Oracle, l'utilisateur ne peut pas les définir

---

### Question 33
La contrainte NOT NULL :

- A) Autorise les valeurs nulles mais les convertit automatiquement en valeur par défaut
- B) Interdit la présence de valeurs nulles dans la colonne concernée
- C) Supprime automatiquement les lignes contenant des valeurs nulles lors de l'insertion
- D) Convertit les valeurs nulles en zéro pour les colonnes numériques

---

### Question 34
Une contrainte PRIMARY KEY :

- A) Permet les doublons mais crée un index pour accélérer les recherches
- B) Garantit l'unicité des valeurs, interdit les nulls et crée automatiquement un index
- C) Est strictement équivalente à une contrainte NOT NULL sans autre effet
- D) Peut être modifiée à tout moment sans impact sur les données existantes

---

### Question 35
La contrainte FOREIGN KEY :

- A) Définit une relation entre une colonne et une clé primaire d'une autre table (intégrité référentielle)
- B) Crée automatiquement une nouvelle table de liaison pour les relations many-to-many
- C) Supprime en cascade tous les enregistrements liés lors d'une suppression
- D) Est une contrainte temporaire valable uniquement pendant la session courante

---

### Question 36
Une contrainte d'intégrité statique concerne :

- A) Le passage d'un état de la base à un autre lors des modifications de données
- B) Un seul état de la base de données, vérifiant une condition à un instant donné
- C) Uniquement les vues matérialisées et leur rafraîchissement périodique
- D) Les processus système assurant la cohérence des fichiers de journalisation

---

### Question 37
Une contrainte d'intégrité dynamique :

- A) Est figée une fois définie et ne peut jamais être modifiée ou supprimée
- B) Contrôle le passage d'un état à un autre, comparant les anciennes et nouvelles valeurs
- C) Est définie exclusivement sur les colonnes indexées pour des raisons de performance
- D) Ne peut pas être implémentée via des triggers dans Oracle

---

### Question 38
La syntaxe pour ajouter une contrainte à une table existante est :

- A) INSERT INTO CONSTRAINTS VALUES (nom_contrainte, type, table)
- B) ALTER TABLE nom_table ADD CONSTRAINT nom_contrainte définition_contrainte
- C) CREATE CONSTRAINT nom_contrainte ON nom_table TYPE définition
- D) UPDATE TABLE nom_table SET CONSTRAINT nom_contrainte = définition

---

### Question 39
Pour supprimer une contrainte existante, on utilise :

- A) DELETE FROM CONSTRAINTS WHERE name = 'nom_contrainte'
- B) ALTER TABLE nom_table DROP CONSTRAINT nom_contrainte
- C) REMOVE CONSTRAINT nom_contrainte FROM nom_table
- D) CLEAR CONSTRAINT nom_contrainte CASCADE

---

### Question 40
Une contrainte intra-relation multi-attribut horizontale :

- A) Concerne une seule colonne et vérifie une condition sur ses valeurs
- B) Contrôle la valeur d'un attribut en fonction des autres attributs du même tuple (même ligne)
- C) Compare les valeurs d'une colonne entre différentes tables de la base de données
- D) Est impossible à définir dans le standard SQL et nécessite des extensions propriétaires

---

## Partie 2 (Suite) : Les Triggers

---

### Question 41
Un trigger (déclencheur) est :

- A) Un type particulier d'index accélérant les requêtes de sélection sur les grandes tables
- B) Une règle ECA (Événement-Condition-Action) exécutée automatiquement lors d'événements
- C) Un utilisateur ayant des droits spéciaux pour déclencher des procédures administratives
- D) Un fichier de configuration définissant les paramètres de démarrage de l'instance

---

### Question 42
La syntaxe de base d'un trigger Oracle est :

- A) CREATE FUNCTION nom_fonction TRIGGER événement ON table AS ...
- B) CREATE TRIGGER nom {BEFORE/AFTER} {INSERT/UPDATE/DELETE} ON table ... BEGIN ... END
- C) CREATE PROCEDURE nom_procedure WITH TRIGGER événement FOR table ...
- D) CREATE INDEX nom_index TRIGGER ON table WHEN condition ...

---

### Question 43
L'option BEFORE dans un trigger signifie que :

- A) Le trigger ne sera jamais exécuté car BEFORE n'est pas un mot-clé valide
- B) Le bloc d'instructions est exécuté avant l'opération DML déclencheuse
- C) Le trigger est exécuté en dernier après tous les autres triggers de la table
- D) Le trigger supprime automatiquement les données avant leur insertion

---

### Question 44
L'option FOR EACH ROW définit :

- A) Un trigger global (statement) qui s'exécute une seule fois par opération DML
- B) Un trigger ligne qui s'exécute pour chaque ligne affectée par l'opération
- C) Un trigger qui s'exécute uniquement si une seule ligne est concernée
- D) Un trigger désactivé par défaut qui doit être activé manuellement

---

### Question 45
Les noms de corrélation :NEW et :OLD dans un trigger permettent de :

- A) Créer dynamiquement de nouvelles tables basées sur les données modifiées
- B) Accéder aux valeurs avant (:OLD) et après (:NEW) modification dans un trigger ligne
- C) Supprimer les anciens enregistrements et les remplacer par les nouveaux automatiquement
- D) Créer des index temporaires pendant l'exécution du trigger

---

### Question 46
Pour un trigger déclenché par INSERT, quelle valeur de corrélation a un sens ?

- A) Seul :OLD a un sens car il représente l'état de la table avant l'insertion
- B) Seul :NEW a un sens car il contient les valeurs insérées (pas d'ancienne valeur)
- C) Les deux :OLD et :NEW ont un sens et contiennent les mêmes valeurs
- D) Aucune valeur de corrélation n'est disponible pour les triggers INSERT

---

### Question 47
Quelles instructions sont autorisées dans les triggers Oracle ?

- A) Toutes les instructions DDL (CREATE TABLE, DROP INDEX, ALTER VIEW)
- B) Les instructions DML (SELECT, INSERT, UPDATE, DELETE) mais pas DDL ni COMMIT/ROLLBACK
- C) Les instructions COMMIT et ROLLBACK pour valider les modifications partielles
- D) Toutes les instructions SQL et PL/SQL sans aucune restriction

---

### Question 48
Oracle autorise jusqu'à combien de triggers en cascade ?

- A) 8 triggers en cascade maximum pour éviter les boucles infinies
- B) 16 triggers en cascade avec une limite configurable par le DBA
- C) 32 triggers en cascade à un moment donné avant de lever une erreur
- D) 64 triggers en cascade pour les applications complexes de haute disponibilité

---

### Question 49
Pour désactiver temporairement un trigger sans le supprimer, on utilise :

- A) DROP TRIGGER nom_trigger WITH BACKUP pour pouvoir le recréer
- B) ALTER TRIGGER nom_trigger DISABLE pour le désactiver
- C) DELETE FROM USER_TRIGGERS WHERE trigger_name = 'nom_trigger'
- D) TRUNCATE TRIGGER nom_trigger KEEP DEFINITION

---

### Question 50
Les définitions des triggers sont stockées dans :

- A) Les fichiers de données aux côtés des tables qu'ils surveillent
- B) Les vues du dictionnaire de données : USER_TRIGGERS, ALL_TRIGGERS, DBA_TRIGGERS
- C) Les fichiers de journalisation (redo logs) avec les autres informations de reprise
- D) Uniquement en RAM et doivent être recréés après chaque redémarrage de l'instance

---

### Question 51
La procédure RAISE_APPLICATION_ERROR permet de :

- A) Créer un nouvel utilisateur avec des privilèges d'administration
- B) Lever une erreur personnalisée avec un code (-20000 à -20999) et un message
- C) Optimiser les requêtes en signalant les index manquants
- D) Créer un index automatiquement quand une requête est trop lente

---

## Partie 3 : La Mémoire Relationnelle

---

### Question 52
Les quatre fonctions principales de la couche SGBD qui accède à la BD sont :

- A) Créer les tables, Lire les données, Modifier les enregistrements, Supprimer les objets
- B) Vision relationnelle des fichiers, Gestion MC, Gestion des relations, Méthodes d'accès
- C) Connecter les utilisateurs, Déconnecter les sessions, Authentifier, Autoriser l'accès
- D) Indexer les colonnes, Hacher les clés, Trier les résultats, Filtrer les données

---

### Question 53
La page dans le contexte du stockage des données est :

- A) Un écran de l'interface utilisateur affichant les résultats d'une requête
- B) L'unité de transfert entre la mémoire secondaire (disque) et la mémoire centrale (RAM)
- C) Une requête SQL complexe nécessitant plusieurs étapes d'exécution
- D) Un trigger déclenché lors du chargement d'une table en mémoire

---

### Question 54
Dans l'organisation séquentielle (Tas de données / Heap) :

- A) Les données sont automatiquement triées par valeur de clé primaire
- B) Les enregistrements sont placés l'un après l'autre sans ordre particulier
- C) Un index B-arbre est automatiquement créé pour accélérer les recherches
- D) La technique du hachage est utilisée pour calculer l'emplacement de chaque enregistrement

---

### Question 55
La technique du hachage utilise :

- A) Un arbre binaire équilibré pour organiser les clés par ordre croissant
- B) Une fonction h(c) qui calcule un numéro de bloc à partir de la valeur de la clé
- C) Uniquement des listes chaînées sans aucune fonction mathématique
- D) Un tri alphabétique des valeurs avant leur stockage dans les pages

---

### Question 56
Dans le hachage, la gestion des débordements (collisions) :

- A) N'existe pas car la fonction de hachage garantit une répartition parfaite
- B) Peut dégrader les performances et nécessite des zones de débordement
- C) Améliore toujours les performances en augmentant la localité des données
- D) Est automatiquement optimisée par le SGBD sans impact sur les performances

---

### Question 57
Un index dense :

- A) Ne contient aucune clé et pointe directement vers les blocs de données
- B) Contient une entrée pour chaque enregistrement du fichier (densité = 1)
- C) Contient uniquement la première et la dernière clé de chaque bloc
- D) Est toujours vide et sert uniquement de réserve pour les futures insertions

---

### Question 58
Un index non dense (sparse index) :

- A) Est associé obligatoirement à un fichier non trié permettant des insertions rapides
- B) Crée une entrée pour certains enregistrements seulement, le fichier étant trié par blocs
- C) Contient toutes les clés du fichier pour permettre un accès direct à chaque enregistrement
- D) N'utilise pas d'adresses et stocke les données directement dans l'index

---

### Question 59
Un B-arbre d'ordre d signifie que :

- A) Chaque nœud a exactement d fils, ni plus ni moins
- B) Chaque nœud a au plus d fils (pointeurs) et donc au plus d-1 clés
- C) L'arbre a exactement d niveaux de profondeur
- D) Il y a exactement d enregistrements stockés dans l'arbre

---

### Question 60
Dans un B-arbre, chaque nœud (excepté la racine et les feuilles) a au moins :

- A) Exactement 1 fils, pouvant aller jusqu'à d fils selon le remplissage
- B) ⌈d/2⌉ fils, soit l'arrondi supérieur de d/2 (moitié minimale de remplissage)
- C) d fils obligatoirement pour maintenir l'équilibre parfait de l'arbre
- D) 2d fils pour optimiser les performances des opérations de recherche

---

### Question 61
Dans un B-arbre, la racine a au moins :

- A) 0 fils car elle peut être une feuille si l'arbre est très petit
- B) 1 fils minimum même si l'arbre est presque vide
- C) 2 fils minimum (sauf si l'arbre ne contient qu'un seul nœud)
- D) d fils obligatoirement comme tous les autres nœuds internes

---

### Question 62
Toutes les feuilles d'un B-arbre apparaissent :

- A) À des niveaux différents selon leur ordre d'insertion dans l'arbre
- B) Au même niveau (profondeur p), garantissant un temps d'accès uniforme
- C) Uniquement au niveau de la racine pour optimiser les parcours
- D) De manière aléatoire pour répartir la charge sur les différents niveaux

---

### Question 63
L'insertion dans un B-arbre avec éclatement se produit quand :

- A) Le nœud cible est complètement vide et doit être initialisé
- B) Le nœud cible est saturé (d-1 clés) et doit être divisé en deux nœuds
- C) L'arbre est vide et le premier enregistrement doit créer la structure initiale
- D) La clé à insérer existe déjà et provoque une erreur de doublon

---

### Question 64
La suppression avec fusion dans un B-arbre se produit quand :

- A) Le nœud contient trop d'éléments et doit être divisé en deux
- B) Après suppression, le nœud a moins de ⌈d/2⌉ clés et son frère ne peut pas compenser
- C) L'arbre est complètement plein et ne peut plus accepter de modifications
- D) La clé à supprimer n'existe pas dans l'arbre et l'opération échoue

---

### Question 65
La suppression avec redistribution (équilibrage) dans un B-arbre :

- A) Modifie profondément la structure du B-arbre en réorganisant tous les niveaux
- B) Transfère des clés du frère adjacent sans modifier la structure globale de l'arbre
- C) Supprime l'arbre entier et le reconstruit à partir des données restantes
- D) Crée un nouvel arbre et y transfère toutes les données sauf la clé supprimée

---

### Question 66
Un index Bitmap est particulièrement utile pour :

- A) Les colonnes avec une haute cardinalité (beaucoup de valeurs distinctes comme les identifiants)
- B) Les colonnes avec une faible cardinalité (peu de valeurs distinctes comme le genre ou le statut)
- C) Uniquement les colonnes définies comme clés primaires des tables
- D) Les tables temporaires utilisées pour les calculs intermédiaires

---

### Question 67
Dans un index Bitmap, pour chaque valeur distincte de l'attribut indexé, on stocke :

- A) La valeur complète de chaque enregistrement contenant cette valeur
- B) Un tableau de bits avec un bit par ligne de la table (1 si la ligne a cette valeur)
- C) Un pointeur unique vers le premier enregistrement ayant cette valeur
- D) Une copie complète de la table filtrée sur cette valeur

---

### Question 68
La syntaxe pour créer un index B-arbre (type par défaut) dans Oracle est :

- A) CREATE BTREE INDEX nom_index WITH COLUMNS (colonne) ON table
- B) CREATE INDEX nom_index ON nom_table(colonne [, colonne2 ...])
- C) CREATE TREE INDEX nom_index FOR nom_table COLUMN colonne
- D) CREATE DEFAULT INDEX nom_index TYPE BTREE ON table(colonne)

---

### Question 69
Pour créer un index Bitmap dans Oracle, on utilise :

- A) CREATE INDEX nom_index ON table(colonne) TYPE BITMAP
- B) CREATE BITMAP INDEX nom_index ON nom_table(colonne)
- C) CREATE INDEX nom_index WITH BITMAP ON table(colonne)
- D) CREATE BIT INDEX nom_index FOR table(colonne)

---

### Question 70
Pour supprimer un index dans Oracle, on utilise :

- A) DELETE INDEX nom_index FROM database
- B) DROP INDEX nom_index
- C) REMOVE INDEX nom_index FROM TABLE
- D) ALTER TABLE nom_table DELETE INDEX nom_index
