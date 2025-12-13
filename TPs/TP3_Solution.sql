-- =============================================================================
-- TP3: Privilèges d'accès à la base de données - SOLUTION COMPLETE
-- Module: ASGBD - 3ème année ING IA
-- USTHB - Faculté d'Informatique - 2025/2026
-- =============================================================================
-- Objectif: Gestion des utilisateurs, privilèges, profils et rôles
-- Prérequis: Connexion SYSTEM avec accès à la PDB AGRICOLPDB
-- =============================================================================
--
-- RÉFÉRENCES DU COURS:
--   Chapitre 3: Sécurité de la base de données
--     - Gestion des utilisateurs (slides 7-11)
--     - Profils (slides 12-15)
--     - Privilèges système et objet (slides 15-20)
--     - Rôles (slides 21-22)
--
-- =============================================================================


-- *****************************************************************************
-- CONCEPTS CLÉS (Chapitre 3)
-- *****************************************************************************
--
-- RÉFÉRENCE COURS (slide 5):
--   "Les 5 principes de la sécurité: Intégrité, Confidentialité, 
--    Disponibilité, Traçabilité, Conformité"
--
-- RÉFÉRENCE COURS (slide 8):
--   "Pour appliquer ces principes: Authentification + Autorisation"
--
-- HIÉRARCHIE DE SÉCURITÉ:
--   Utilisateurs → Tablespaces (stockage)
--                → Profils (ressources)
--                → Privilèges (droits)
--                → Rôles (groupes de privilèges)
--
-- *****************************************************************************


-- =============================================================================
-- QUESTION 1: Connexion à SYSTEM sur AGRICOLPDB
-- =============================================================================
--
-- RÉFÉRENCE COURS (slide 6):
--   "Le DBA (DataBase Administrator) a tous les droits. Installation, 
--    gestion des utilisateurs, optimisation, sécurité..."
--
-- APPROCHE DE RÉSOLUTION:
--   Se connecter avec SYSTEM qui a tous les privilèges DBA
--   AGRICOLPDB est la PDB créée dans TP2

-- Via SQLPlus:
-- sqlplus SYSTEM/mot_de_passe@localhost:1521/AGRICOLPDB

-- Ou si déjà connecté au CDB, changer de container:
ALTER SESSION SET CONTAINER = AGRICOLPDB;

-- VÉRIFICATION:
SHOW CON_NAME;
SELECT USER FROM DUAL;

-- RÉSULTAT ATTENDU:
-- CON_NAME
-- --------------
-- AGRICOLPDB
--
-- USER
-- ------
-- SYSTEM


-- =============================================================================
-- QUESTION 2: Créer tablespace agricolTBS et agricolTempTBS
-- =============================================================================
--
-- RÉFÉRENCE COURS (slide 8):
--   "À la création d'un nouvel utilisateur, on définit un espace de stockage 
--    des tables par défaut (default tablespace), un espace temporaire..."
--
-- APPROCHE DE RÉSOLUTION:
--   1. CREATE TABLESPACE pour l'espace permanent
--   2. CREATE TEMPORARY TABLESPACE pour l'espace temporaire

-- Tablespace permanent:
CREATE TABLESPACE agricolTBS
    DATAFILE SIZE 50M
    AUTOEXTEND ON
    NEXT 10M
    MAXSIZE 500M;

-- Tablespace temporaire:
CREATE TEMPORARY TABLESPACE agricolTempTBS
    TEMPFILE SIZE 20M
    AUTOEXTEND ON;

-- VÉRIFICATION:
SELECT tablespace_name, contents 
FROM dba_tablespaces 
WHERE tablespace_name LIKE 'AGRICOL%';

-- RÉSULTAT ATTENDU:
-- TABLESPACE_NAME    CONTENTS
-- ----------------   ----------
-- AGRICOLTBS         PERMANENT
-- AGRICOLTEMPTBS     TEMPORARY


-- =============================================================================
-- QUESTION 3: Créer utilisateur DBAGRICOL avec tous les privilèges
-- =============================================================================
--
-- RÉFÉRENCE COURS (slide 7-8):
--   "CREATE USER utilisateur IDENTIFIED BY motdePasse
--    [DEFAULT TABLESPACE nomTablespace]
--    [TEMPORARY TABLESPACE nomTablespace]
--    [QUOTA {entier [K|M] | UNLIMITED} ON nomTablespace]"
--
-- RÉFÉRENCE COURS (slide 11):
--   "Par défaut, les utilisateurs, une fois créés n'ont aucun droit sur la 
--    base de données sur laquelle ils sont connectés."
--
-- APPROCHE DE RÉSOLUTION:
--   1. CREATE USER avec les tablespaces
--   2. GRANT ALL PRIVILEGES pour donner tous les droits

-- Créer l'utilisateur:
CREATE USER DBAGRICOL
    IDENTIFIED BY "MotDePasse123"
    DEFAULT TABLESPACE agricolTBS
    TEMPORARY TABLESPACE agricolTempTBS
    QUOTA UNLIMITED ON agricolTBS;

-- Donner tous les privilèges:
GRANT ALL PRIVILEGES TO DBAGRICOL WITH ADMIN OPTION;

-- VÉRIFICATION:
SELECT username, default_tablespace, temporary_tablespace
FROM dba_users
WHERE username = 'DBAGRICOL';

-- RÉSULTAT ATTENDU:
-- USERNAME     DEFAULT_TABLESPACE  TEMPORARY_TABLESPACE
-- ----------   ------------------  --------------------
-- DBAGRICOL    AGRICOLTBS          AGRICOLTEMPTBS


-- =============================================================================
-- QUESTION 4a: Connecter DBAGRICOL et créer les tables du TP1
-- =============================================================================
--
-- APPROCHE DE RÉSOLUTION:
--   1. Se connecter en tant que DBAGRICOL
--   2. Exécuter le script TP1.SQL (ou les commandes CREATE TABLE)

-- Connexion:
CONNECT DBAGRICOL/"MotDePasse123"@AGRICOLPDB;

-- Créer les tables (même structure que TP1):
CREATE TABLE Agriculteur (
    agriculteur_id      NUMBER(10)      PRIMARY KEY,
    nom                 VARCHAR2(100)   NOT NULL,
    localisation        VARCHAR2(100),
    taille_exploitation NUMBER(10,2),
    culture_principale  VARCHAR2(100)
);

CREATE TABLE Produit_Alimentaire (
    produit_id          NUMBER(10)      PRIMARY KEY,
    nom                 VARCHAR2(100)   NOT NULL,
    categorie           VARCHAR2(50),
    valeur_nutritionnelle VARCHAR2(50)
);

CREATE TABLE Marche (
    marche_id       NUMBER(10)      PRIMARY KEY,
    nom             VARCHAR2(100)   NOT NULL,
    localisation    VARCHAR2(100),
    type_marche     VARCHAR2(20) CHECK (type_marche IN ('gros', 'détail'))
);

CREATE TABLE Production (
    production_id       NUMBER(10)      PRIMARY KEY,
    agriculteur_id      NUMBER(10)      NOT NULL,
    produit_id          NUMBER(10)      NOT NULL,
    quantite_produite   NUMBER(12,2),
    saison              VARCHAR2(50),
    FOREIGN KEY (agriculteur_id) REFERENCES Agriculteur(agriculteur_id),
    FOREIGN KEY (produit_id) REFERENCES Produit_Alimentaire(produit_id)
);

-- Insérer les données (voir TP1 pour toutes les insertions)
INSERT INTO Agriculteur VALUES (1, 'Benali Ahmed', 'Blida', 5, 'tomates');
INSERT INTO Agriculteur VALUES (2, 'Khelifi Samira', 'Sétif', 12, 'blé dur');
INSERT INTO Agriculteur VALUES (3, 'Touati Mourad', 'Mostaganem', 8, 'pommes de terre');

INSERT INTO Produit_Alimentaire VALUES (1, 'Blé dur', 'céréale', '340 kcal/100g');
INSERT INTO Produit_Alimentaire VALUES (2, 'Tomates', 'légume', '18 kcal/100g');

COMMIT;

-- RÉSULTAT ATTENDU: Tables et données créées avec succès


-- =============================================================================
-- QUESTION 4b: Créer utilisateur Admin avec mêmes tablespaces
-- =============================================================================
--
-- APPROCHE DE RÉSOLUTION:
--   Créer Admin avec les mêmes tablespaces que DBAGRICOL

-- Toujours connecté en tant que DBAGRICOL:
CREATE USER Admin
    IDENTIFIED BY "AdminPass123"
    DEFAULT TABLESPACE agricolTBS
    TEMPORARY TABLESPACE agricolTempTBS
    QUOTA 10M ON agricolTBS;

-- RÉSULTAT ATTENDU: Utilisateur créé (mais sans privilèges!)


-- =============================================================================
-- QUESTION 4c: Vérifier avec le dictionnaire de données
-- =============================================================================
--
-- RÉFÉRENCE COURS (Chapitre 2):
--   "Interroger le dictionnaire de données pour voir les objets créés"
--
-- APPROCHE DE RÉSOLUTION:
--   Utiliser les vues DBA_ pour vérifier tablespaces, utilisateurs, tables

-- Vérifier les tablespaces:
SELECT tablespace_name, status, contents
FROM dba_tablespaces
WHERE tablespace_name LIKE 'AGRICOL%';

-- RÉSULTAT ATTENDU:
-- TABLESPACE_NAME    STATUS   CONTENTS
-- ----------------   ------   ---------
-- AGRICOLTBS         ONLINE   PERMANENT
-- AGRICOLTEMPTBS     ONLINE   TEMPORARY

-- Vérifier les utilisateurs:
SELECT username, default_tablespace, created
FROM dba_users
WHERE username IN ('DBAGRICOL', 'ADMIN');

-- RÉSULTAT ATTENDU:
-- USERNAME     DEFAULT_TABLESPACE  CREATED
-- ----------   ------------------  -----------
-- DBAGRICOL    AGRICOLTBS          13-DEC-24
-- ADMIN        AGRICOLTBS          13-DEC-24

-- Vérifier les tables de DBAGRICOL:
SELECT table_name, owner
FROM dba_tables
WHERE owner = 'DBAGRICOL';

-- RÉSULTAT ATTENDU:
-- TABLE_NAME            OWNER
-- -------------------   ---------
-- AGRICULTEUR           DBAGRICOL
-- PRODUIT_ALIMENTAIRE   DBAGRICOL
-- MARCHE                DBAGRICOL
-- PRODUCTION            DBAGRICOL


-- =============================================================================
-- QUESTION 5: Se connecter avec Admin - Que remarquez-vous?
-- =============================================================================
--
-- RÉFÉRENCE COURS (slide 11):
--   "Par défaut, les utilisateurs, une fois créés n'ont aucun droit 
--    sur la base de données sur laquelle ils sont connectés."
--
-- APPROCHE DE RÉSOLUTION:
--   Essayer de se connecter avec Admin

CONNECT Admin/"AdminPass123"@AGRICOLPDB;

-- RÉSULTAT ATTENDU:
-- ERROR: ORA-01045: user ADMIN lacks CREATE SESSION privilege; logon denied
--
-- EXPLICATION:
--   L'utilisateur Admin a été créé SANS le privilège CREATE SESSION
--   Il ne peut donc pas se connecter à la base


-- =============================================================================
-- QUESTION 6: Donner le privilège CREATE SESSION à Admin
-- =============================================================================
--
-- RÉFÉRENCE COURS (slide 16):
--   "GRANT privilègeSystème TO utilisateur"
--   "CREATE SESSION permet de se connecter à la base"
--
-- APPROCHE DE RÉSOLUTION:
--   1. Se reconnecter en tant que DBAGRICOL (qui a ALL PRIVILEGES)
--   2. GRANT CREATE SESSION TO Admin

-- Se reconnecter avec DBAGRICOL:
CONNECT DBAGRICOL/"MotDePasse123"@AGRICOLPDB;

-- Donner le privilège:
GRANT CREATE SESSION TO Admin;

-- Maintenant Admin peut se connecter:
CONNECT Admin/"AdminPass123"@AGRICOLPDB;

-- RÉSULTAT ATTENDU:
-- Connecté. (Connected)


-- =============================================================================
-- QUESTION 7: Donner privilèges CREATE TABLE et CREATE USER à Admin
-- =============================================================================
--
-- RÉFÉRENCE COURS (slide 17):
--   "GRANT CREATE TABLE TO Ahmed WITH ADMIN OPTION - Ahmed peut créer 
--    des tables dans son schéma et peut transmettre ce privilège"
--
-- APPROCHE DE RÉSOLUTION:
--   Donner les privilèges système nécessaires

-- Se connecter avec DBAGRICOL (qui peut donner des privilèges):
CONNECT DBAGRICOL/"MotDePasse123"@AGRICOLPDB;

GRANT CREATE TABLE TO Admin;
GRANT CREATE USER TO Admin;

-- VÉRIFICATION - Admin peut maintenant créer des tables:
CONNECT Admin/"AdminPass123"@AGRICOLPDB;

CREATE TABLE test_table (id NUMBER PRIMARY KEY);

-- RÉSULTAT ATTENDU:
-- Table créée.

-- Nettoyer:
DROP TABLE test_table;


-- =============================================================================
-- QUESTION 8: Exécuter SELECT sur DBAGRICOL.AGRICULTEUR - Que remarquez-vous?
-- =============================================================================
--
-- RÉFÉRENCE COURS (slide 18):
--   "Privilège objet: Droit d'accéder à un certain objet d'un autre schéma"
--
-- APPROCHE DE RÉSOLUTION:
--   Se connecter avec Admin et essayer de lire une table de DBAGRICOL

CONNECT Admin/"AdminPass123"@AGRICOLPDB;

SELECT * FROM DBAGRICOL.AGRICULTEUR;

-- RÉSULTAT ATTENDU:
-- ERROR: ORA-00942: table or view does not exist
-- ou
-- ERROR: ORA-01031: insufficient privileges
--
-- EXPLICATION:
--   Admin n'a PAS le privilège SELECT sur les tables de DBAGRICOL
--   Les privilèges système (CREATE TABLE) sont différents des 
--   privilèges objet (SELECT, INSERT, UPDATE, DELETE)


-- =============================================================================
-- QUESTION 9: Donner le droit de lecture sur AGRICULTEUR à Admin
-- =============================================================================
--
-- RÉFÉRENCE COURS (slide 19):
--   "GRANT privilègeObjet ON objet TO utilisateur"
--   "Grant SELECT ON table TO Utilisateur"
--
-- APPROCHE DE RÉSOLUTION:
--   DBAGRICOL doit donner le privilège SELECT à Admin

-- Se connecter avec DBAGRICOL (propriétaire de la table):
CONNECT DBAGRICOL/"MotDePasse123"@AGRICOLPDB;

GRANT SELECT ON Agriculteur TO Admin;

-- Maintenant Admin peut lire:
CONNECT Admin/"AdminPass123"@AGRICOLPDB;

SELECT * FROM DBAGRICOL.AGRICULTEUR;

-- RÉSULTAT ATTENDU:
-- AGRICULTEUR_ID  NOM              LOCALISATION  ...
-- --------------  ---------------  -----------
-- 1               Benali Ahmed     Blida
-- 2               Khelifi Samira   Sétif
-- 3               Touati Mourad    Mostaganem


-- =============================================================================
-- QUESTION 10: Créer une vue AGRI_PROD - Que faut-il faire?
-- =============================================================================
--
-- RÉFÉRENCE COURS:
--   Pour créer une vue qui accède à des tables d'un autre schéma,
--   il faut avoir: 1) CREATE VIEW, 2) SELECT sur les tables sources
--
-- APPROCHE DE RÉSOLUTION:
--   1. Vérifier que Admin a CREATE VIEW (sinon le donner)
--   2. Donner SELECT sur Production et Produit_Alimentaire
--   3. Créer la vue

-- DBAGRICOL donne les privilèges nécessaires:
CONNECT DBAGRICOL/"MotDePasse123"@AGRICOLPDB;

GRANT CREATE VIEW TO Admin;
GRANT SELECT ON Production TO Admin;
GRANT SELECT ON Produit_Alimentaire TO Admin;

-- Admin crée la vue:
CONNECT Admin/"AdminPass123"@AGRICOLPDB;

CREATE VIEW AGRI_PROD AS
SELECT a.nom AS agriculteur, pa.nom AS produit, p.quantite_produite
FROM DBAGRICOL.Agriculteur a
JOIN DBAGRICOL.Production p ON a.agriculteur_id = p.agriculteur_id
JOIN DBAGRICOL.Produit_Alimentaire pa ON p.produit_id = pa.produit_id;

-- VÉRIFICATION:
SELECT * FROM AGRI_PROD;

-- RÉSULTAT ATTENDU:
-- AGRICULTEUR       PRODUIT    QUANTITE_PRODUITE
-- ----------------  ---------  -----------------
-- Khelifi Samira    Blé dur    30000
-- Benali Ahmed      Tomates    15000


-- =============================================================================
-- QUESTION 11: Créer un index NAMEPROD_IX - Que remarquez-vous?
-- =============================================================================
--
-- APPROCHE DE RÉSOLUTION:
--   Essayer de créer un index sur une table qui n'appartient pas à Admin

CONNECT Admin/"AdminPass123"@AGRICOLPDB;

CREATE INDEX NAMEPROD_IX ON DBAGRICOL.PRODUIT_ALIMENTAIRE(nom);

-- RÉSULTAT ATTENDU:
-- ERROR: ORA-01031: insufficient privileges
--
-- EXPLICATION:
--   Pour créer un INDEX sur une table d'un autre schéma,
--   il faut le privilège INDEX sur cette table


-- =============================================================================
-- QUESTION 12: Donner le droit CREATE INDEX à Admin, puis réessayer
-- =============================================================================
--
-- RÉFÉRENCE COURS (slide 18):
--   "INDEX - permet de créer un index sur la table"
--
-- APPROCHE DE RÉSOLUTION:
--   DBAGRICOL donne le privilège INDEX sur la table

CONNECT DBAGRICOL/"MotDePasse123"@AGRICOLPDB;

GRANT INDEX ON Produit_Alimentaire TO Admin;

-- Admin réessaye:
CONNECT Admin/"AdminPass123"@AGRICOLPDB;

CREATE INDEX NAMEPROD_IX ON DBAGRICOL.PRODUIT_ALIMENTAIRE(nom);

-- RÉSULTAT ATTENDU:
-- Index créé.

-- VÉRIFICATION:
SELECT index_name, table_owner, table_name
FROM user_indexes
WHERE index_name = 'NAMEPROD_IX';

-- Note: L'index appartient à Admin mais est sur une table de DBAGRICOL


-- =============================================================================
-- QUESTION 13: Afficher tous les privilèges attribués à Admin
-- =============================================================================
--
-- RÉFÉRENCE COURS (Chapitre 2):
--   Utiliser les vues du dictionnaire de données pour voir les privilèges
--
-- APPROCHE DE RÉSOLUTION:
--   1. Privilèges SYSTÈME: dba_sys_privs
--   2. Privilèges OBJET: dba_tab_privs

CONNECT DBAGRICOL/"MotDePasse123"@AGRICOLPDB;

-- Privilèges système de Admin:
SELECT privilege, admin_option
FROM dba_sys_privs
WHERE grantee = 'ADMIN';

-- RÉSULTAT ATTENDU:
-- PRIVILEGE             ADMIN_OPTION
-- -------------------   ------------
-- CREATE SESSION        NO
-- CREATE TABLE          NO
-- CREATE USER           NO
-- CREATE VIEW           NO

-- Privilèges objet de Admin:
SELECT owner, table_name, privilege
FROM dba_tab_privs
WHERE grantee = 'ADMIN';

-- RÉSULTAT ATTENDU:
-- OWNER       TABLE_NAME            PRIVILEGE
-- ---------   -------------------   ---------
-- DBAGRICOL   AGRICULTEUR           SELECT
-- DBAGRICOL   PRODUCTION            SELECT
-- DBAGRICOL   PRODUIT_ALIMENTAIRE   SELECT
-- DBAGRICOL   PRODUIT_ALIMENTAIRE   INDEX


-- =============================================================================
-- QUESTION 14: Enlever les privilèges accordés à Admin
-- =============================================================================
--
-- RÉFÉRENCE COURS (slide 17-18):
--   "REVOKE privilègeSystème FROM utilisateur"
--   "REVOKE privilègeObjet ON objet FROM utilisateur"
--
-- APPROCHE DE RÉSOLUTION:
--   Utiliser REVOKE pour chaque privilège accordé

CONNECT DBAGRICOL/"MotDePasse123"@AGRICOLPDB;

-- Révoquer les privilèges système:
REVOKE CREATE SESSION FROM Admin;
REVOKE CREATE TABLE FROM Admin;
REVOKE CREATE USER FROM Admin;
REVOKE CREATE VIEW FROM Admin;

-- Révoquer les privilèges objet:
REVOKE SELECT ON Agriculteur FROM Admin;
REVOKE SELECT ON Production FROM Admin;
REVOKE SELECT ON Produit_Alimentaire FROM Admin;
REVOKE INDEX ON Produit_Alimentaire FROM Admin;

-- RÉSULTAT ATTENDU:
-- Révocation réussie. (pour chaque commande)


-- =============================================================================
-- QUESTION 15: Vérifier que les privilèges ont été supprimés
-- =============================================================================
--
-- APPROCHE DE RÉSOLUTION:
--   Interroger à nouveau les vues de privilèges

-- Privilèges système:
SELECT privilege FROM dba_sys_privs WHERE grantee = 'ADMIN';

-- RÉSULTAT ATTENDU:
-- aucune ligne sélectionnée (no rows selected)

-- Privilèges objet:
SELECT table_name, privilege FROM dba_tab_privs WHERE grantee = 'ADMIN';

-- RÉSULTAT ATTENDU:
-- aucune ligne sélectionnée

-- Admin ne peut plus se connecter:
CONNECT Admin/"AdminPass123"@AGRICOLPDB;

-- RÉSULTAT ATTENDU:
-- ERROR: ORA-01045: user ADMIN lacks CREATE SESSION privilege


-- =============================================================================
-- QUESTION 16: Créer le profil AGRICOL_Profil
-- =============================================================================
--
-- RÉFÉRENCE COURS (slides 12-14):
--   "CREATE PROFILE nomProfil LIMIT {ParamètreRessource | ParamètreMotdePasse}"
--
--   Paramètres:
--   - SESSIONS_PER_USER: sessions concurrentes (valeur: 3)
--   - CPU_PER_CALL: temps CPU en centièmes de sec (35s = 3500)
--   - CONNECT_TIME: durée session en minutes (90 min)
--   - LOGICAL_READS_PER_CALL: blocs lus (1200)
--   - PRIVATE_SGA: mémoire SGA (25K)
--   - IDLE_TIME: inactivité en minutes (30 min)
--   - FAILED_LOGIN_ATTEMPTS: tentatives avant blocage (5)
--   - PASSWORD_LIFE_TIME: validité en jours (50)
--   - PASSWORD_REUSE_TIME: réutilisation en jours (40)
--   - PASSWORD_LOCK_TIME: blocage en jours (1)
--   - PASSWORD_GRACE_TIME: période de grâce en jours (5)
--
-- APPROCHE DE RÉSOLUTION:
--   Convertir les valeurs données dans les bons paramètres

CONNECT SYSTEM/"mot_de_passe"@AGRICOLPDB;

CREATE PROFILE AGRICOL_Profil LIMIT
    SESSIONS_PER_USER           3
    CPU_PER_CALL                3500        -- 35 secondes = 3500 centièmes
    CONNECT_TIME                90          -- 90 minutes
    LOGICAL_READS_PER_CALL      1200        -- 1200 blocs
    PRIVATE_SGA                 25K         -- 25 Ko
    IDLE_TIME                   30          -- 30 minutes d'inactivité
    FAILED_LOGIN_ATTEMPTS       5           -- 5 tentatives
    PASSWORD_LIFE_TIME          50          -- 50 jours de validité
    PASSWORD_REUSE_TIME         40          -- 40 jours avant réutilisation
    PASSWORD_REUSE_MAX          UNLIMITED   -- Obligatoire si REUSE_TIME est défini
    PASSWORD_LOCK_TIME          1           -- 1 jour de blocage
    PASSWORD_GRACE_TIME         5;          -- 5 jours de grâce

-- VÉRIFICATION:
SELECT profile, resource_name, limit
FROM dba_profiles
WHERE profile = 'AGRICOL_PROFIL'
ORDER BY resource_name;

-- RÉSULTAT ATTENDU:
-- PROFILE          RESOURCE_NAME            LIMIT
-- ---------------  ----------------------   -------
-- AGRICOL_PROFIL   CONNECT_TIME             90
-- AGRICOL_PROFIL   CPU_PER_CALL             3500
-- AGRICOL_PROFIL   FAILED_LOGIN_ATTEMPTS    5
-- AGRICOL_PROFIL   IDLE_TIME                30
-- ...etc


-- =============================================================================
-- QUESTION 17: Affecter le profil à l'utilisateur Admin
-- =============================================================================
--
-- RÉFÉRENCE COURS (slide 14):
--   "L'affectation de ce profil à l'utilisateur Ahmed est réalisée via 
--    ALTER USER Ahmed PROFILE profil_Etudiants;"
--
-- APPROCHE DE RÉSOLUTION:
--   ALTER USER Admin PROFILE AGRICOL_Profil

-- D'abord redonner CREATE SESSION à Admin:
GRANT CREATE SESSION TO Admin;

ALTER USER Admin PROFILE AGRICOL_Profil;

-- VÉRIFICATION:
SELECT username, profile
FROM dba_users
WHERE username = 'ADMIN';

-- RÉSULTAT ATTENDU:
-- USERNAME   PROFILE
-- --------   ---------------
-- ADMIN      AGRICOL_PROFIL


-- =============================================================================
-- QUESTION 18: Créer le rôle MARCHE_MANAGER
-- =============================================================================
--
-- RÉFÉRENCE COURS (slides 21-22):
--   "Les rôles sont des groupes nommés de privilèges, qu'on accorde, 
--    en groupe, à des utilisateurs ou à d'autres rôles."
--
--   CREATE ROLE nomRole;
--   GRANT privilèges TO nomRole;
--
-- SPÉCIFICATIONS:
--   - Peut VOIR (SELECT) les tables AGRICULTEUR et PRODUCTION
--   - Peut MODIFIER (UPDATE) la table MARCHE
--
-- APPROCHE DE RÉSOLUTION:
--   1. CREATE ROLE
--   2. GRANT SELECT sur AGRICULTEUR et PRODUCTION
--   3. GRANT UPDATE sur MARCHE

CONNECT DBAGRICOL/"MotDePasse123"@AGRICOLPDB;

-- Créer le rôle:
CREATE ROLE MARCHE_MANAGER;

-- Donner les privilèges au rôle:
GRANT SELECT ON Agriculteur TO MARCHE_MANAGER;
GRANT SELECT ON Production TO MARCHE_MANAGER;
GRANT UPDATE ON Marche TO MARCHE_MANAGER;

-- Optionnel: permettre de voir Marché aussi:
GRANT SELECT ON Marche TO MARCHE_MANAGER;

-- VÉRIFICATION - Privilèges du rôle:
SELECT privilege, table_name
FROM role_tab_privs
WHERE role = 'MARCHE_MANAGER';

-- RÉSULTAT ATTENDU:
-- PRIVILEGE   TABLE_NAME
-- ---------   -----------
-- SELECT      AGRICULTEUR
-- SELECT      PRODUCTION
-- SELECT      MARCHE
-- UPDATE      MARCHE


-- =============================================================================
-- QUESTION 19: Assigner le rôle MARCHE_MANAGER à Admin et vérifier
-- =============================================================================
--
-- RÉFÉRENCE COURS (slide 22):
--   "GRANT manager TO user1, user2, user3;"
--
-- APPROCHE DE RÉSOLUTION:
--   1. GRANT le rôle à Admin
--   2. Vérifier que Admin hérite des privilèges du rôle

CONNECT DBAGRICOL/"MotDePasse123"@AGRICOLPDB;

-- Assigner le rôle:
GRANT MARCHE_MANAGER TO Admin;

-- VÉRIFICATION - Rôles de Admin:
SELECT granted_role
FROM dba_role_privs
WHERE grantee = 'ADMIN';

-- RÉSULTAT ATTENDU:
-- GRANTED_ROLE
-- ---------------
-- MARCHE_MANAGER

-- VÉRIFICATION - Admin peut maintenant accéder aux tables:
CONNECT Admin/"AdminPass123"@AGRICOLPDB;

-- Peut lire AGRICULTEUR (via le rôle):
SELECT * FROM DBAGRICOL.AGRICULTEUR;

-- RÉSULTAT ATTENDU: Données affichées (le SELECT fonctionne)

-- Peut modifier MARCHE (via le rôle):
UPDATE DBAGRICOL.MARCHE SET localisation = 'Test' WHERE marche_id = 1;
ROLLBACK;  -- Annuler le test

-- RÉSULTAT ATTENDU: 1 ligne mise à jour (l'UPDATE fonctionne)


-- =============================================================================
-- RÉSUMÉ DES COMMANDES DE SÉCURITÉ (POUR L'EXAMEN)
-- =============================================================================
--
-- GESTION DES UTILISATEURS:
-- +------------------------+--------------------------------------------------+
-- | Action                 | Commande                                         |
-- +------------------------+--------------------------------------------------+
-- | Créer utilisateur      | CREATE USER nom IDENTIFIED BY mdp                |
-- | Avec tablespace        | ... DEFAULT TABLESPACE ts TEMPORARY TABLESPACE t |
-- | Modifier utilisateur   | ALTER USER nom IDENTIFIED BY nouveau_mdp         |
-- | Supprimer utilisateur  | DROP USER nom CASCADE                            |
-- +------------------------+--------------------------------------------------+
--
-- GESTION DES PRIVILÈGES:
-- +------------------------+--------------------------------------------------+
-- | Action                 | Commande                                         |
-- +------------------------+--------------------------------------------------+
-- | Privilège système      | GRANT CREATE SESSION TO utilisateur              |
-- | Privilège objet        | GRANT SELECT ON table TO utilisateur             |
-- | Tous les privilèges    | GRANT ALL PRIVILEGES TO utilisateur              |
-- | Avec transmission      | GRANT ... WITH ADMIN OPTION / WITH GRANT OPTION  |
-- | Révoquer système       | REVOKE CREATE SESSION FROM utilisateur           |
-- | Révoquer objet         | REVOKE SELECT ON table FROM utilisateur          |
-- +------------------------+--------------------------------------------------+
--
-- GESTION DES PROFILS:
-- +------------------------+--------------------------------------------------+
-- | Action                 | Commande                                         |
-- +------------------------+--------------------------------------------------+
-- | Créer profil           | CREATE PROFILE nom LIMIT param1 val1 param2 val2 |
-- | Affecter profil        | ALTER USER utilisateur PROFILE nom_profil        |
-- | Supprimer profil       | DROP PROFILE nom CASCADE                         |
-- +------------------------+--------------------------------------------------+
--
-- GESTION DES RÔLES:
-- +------------------------+--------------------------------------------------+
-- | Action                 | Commande                                         |
-- +------------------------+--------------------------------------------------+
-- | Créer rôle             | CREATE ROLE nom_role                             |
-- | Donner privilège au rôle| GRANT SELECT ON table TO nom_role               |
-- | Assigner rôle          | GRANT nom_role TO utilisateur                    |
-- | Révoquer rôle          | REVOKE nom_role FROM utilisateur                 |
-- +------------------------+--------------------------------------------------+
--
-- VUES DU DICTIONNAIRE:
-- +----------------------+--------------------------------------------------+
-- | Vue                  | Contenu                                          |
-- +----------------------+--------------------------------------------------+
-- | dba_users            | Liste des utilisateurs                           |
-- | dba_sys_privs        | Privilèges système                               |
-- | dba_tab_privs        | Privilèges objet                                 |
-- | dba_role_privs       | Rôles assignés aux utilisateurs                  |
-- | role_tab_privs       | Privilèges des rôles                             |
-- | dba_profiles         | Paramètres des profils                           |
-- | dba_tablespaces      | Tablespaces                                      |
-- +----------------------+--------------------------------------------------+
--
-- =============================================================================
-- FIN DU TP3 - SOLUTION COMPLETE
-- =============================================================================
