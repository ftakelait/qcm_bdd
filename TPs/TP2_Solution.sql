-- =============================================================================
-- TP2: Architecture Oracle - SOLUTION COMPLETE
-- Module: ASGBD - 3ème année ING IA
-- USTHB - Faculté d'Informatique - 2025/2026
-- =============================================================================
-- Objectif: Analyser les différents composants du SGBD Oracle
-- Prérequis: Connexion avec privilèges DBA (SYSTEM ou SYS AS SYSDBA)
-- =============================================================================
--
-- RÉFÉRENCES DU COURS:
--   Chapitre 1 - Partie 1: Architecture générale Oracle (SGA, processus, fichiers)
--   Chapitre 2: Métabase Oracle (dictionnaire de données, vues V$ et DBA_)
--
-- =============================================================================


-- *****************************************************************************
-- MÉTHODOLOGIE GÉNÉRALE (Chapitre 2: Métabase Oracle)
-- *****************************************************************************
-- 
-- Le dictionnaire de données Oracle contient des métadonnées sur tous les 
-- objets de la base. Pour l'interroger, suivre cette démarche:
--
--   ÉTAPE 1: Identifier la vue appropriée
--            - Vues V$ : performances dynamiques (accessibles par SYS/SYSDBA)
--            - Vues DBA_* : tous les objets (require DBA privileges)
--            - Vues USER_* : objets de l'utilisateur courant
--
--   ÉTAPE 2: Examiner la structure de la vue avec DESC
--            SQL> DESC v$instance
--
--   ÉTAPE 3: Construire la requête SELECT avec les colonnes pertinentes
--
-- Référence cours: "La démarche à suivre afin d'interroger correctement le 
-- dictionnaire des données" (Chapitre 2, slide 14)
-- *****************************************************************************


-- *****************************************************************************
-- SECTION 1: CONFIGURATION GÉNÉRALE
-- *****************************************************************************

-- =============================================================================
-- QUESTION 1.a: Nom de l'instance, version et état
-- Vue: v$instance
-- =============================================================================
--
-- RÉFÉRENCE COURS (Chapitre 2, slide 17):
--   "V$INSTANCE: Donne l'état de l'instance courante"
--
-- RÉFÉRENCE COURS (Chapitre 1, slide 14):
--   "L'architecture comprend: 1) Composants mémoires, 2) Processus, 
--    3) Composants physiques. Les composants mémoire et les processus 
--    d'arrière-plan forment l'INSTANCE Oracle. Une instance doit être 
--    démarrée avant d'accéder à la base de données."
--
-- POURQUOI CETTE VUE?
--   L'instance = mémoire (SGA) + processus background
--   v$instance donne les informations sur cette instance en cours
--
-- APPROCHE DE RÉSOLUTION:
--   1. Utiliser DESC pour voir les colonnes disponibles
--   2. Sélectionner: instance_name, version, status

DESC v$instance;

SELECT 
    instance_name AS "Nom Instance",
    version AS "Version Oracle",
    status AS "État"
FROM v$instance;

-- RÉSULTAT ATTENDU:
-- +---------------+------------------+--------+
-- | Nom Instance  | Version Oracle   | État   |
-- +---------------+------------------+--------+
-- | ORCL          | 19.0.0.0.0       | OPEN   |
-- +---------------+------------------+--------+
--
-- INTERPRÉTATION DES ÉTATS (Chapitre 1):
--   STARTED = Instance démarrée, mémoire SGA allouée
--   MOUNTED = Fichiers de contrôle lus, base pas encore ouverte
--   OPEN    = Base accessible aux utilisateurs (état normal)


-- =============================================================================
-- QUESTION 1.b: Nom de la base et mode d'ouverture
-- Vue: v$database
-- =============================================================================
--
-- RÉFÉRENCE COURS (Chapitre 2, slide 17):
--   "V$DATABASE: Contient des informations sur la base de données tel que 
--    le nom ou la date de création."
--
-- DIFFÉRENCE INSTANCE vs BASE DE DONNÉES (Chapitre 1, slide 14):
--   - Instance = mémoire + processus (peut exister sans base)
--   - Base de données = fichiers physiques sur disque
--
-- APPROCHE DE RÉSOLUTION:
--   1. v$database contient les infos sur la base elle-même
--   2. Colonnes: name (nom), open_mode (mode d'ouverture)

DESC v$database;

SELECT 
    name AS "Nom Base",
    open_mode AS "Mode Ouverture"
FROM v$database;

-- RÉSULTAT ATTENDU:
-- +----------+----------------+
-- | Nom Base | Mode Ouverture |
-- +----------+----------------+
-- | ORCL     | READ WRITE     |
-- +----------+----------------+
--
-- MODES POSSIBLES:
--   READ WRITE = Lecture + écriture (mode normal de production)
--   READ ONLY  = Lecture seule (ex: base de reporting)
--   MOUNTED    = Fichiers attachés mais pas encore ouverts


-- =============================================================================
-- QUESTION 1.c: Fichier de paramètres d'initialisation (init.ora)
-- Vue: v$parameter ou commande SHOW PARAMETER
-- =============================================================================
--
-- RÉFÉRENCE COURS (Chapitre 1, slide 17):
--   "Parameter file: contient les paramètres de configuration qui définissent 
--    la manière dont la base de données doit être démarrée."
--
-- RÉFÉRENCE COURS (Chapitre 2, slide 17):
--   "V$PARAMETER: Liste les informations sur les paramètres d'initialisation 
--    avec leur nom, leur nombre, leur valeur et leur type."
--
-- TYPES DE FICHIERS DE PARAMÈTRES:
--   - PFILE (init<SID>.ora): fichier texte éditable manuellement
--   - SPFILE: fichier binaire, modifiable avec ALTER SYSTEM
--
-- APPROCHE DE RÉSOLUTION:
--   1. Interroger v$parameter pour trouver l'emplacement
--   2. Ou utiliser SHOW PARAMETER dans SQL*Plus

-- Option 1: Trouver l'emplacement du SPFILE/PFILE
SELECT 
    name AS "Paramètre",
    value AS "Valeur"
FROM v$parameter
WHERE name IN ('spfile', 'pfile');

-- RÉSULTAT ATTENDU:
-- +-----------+----------------------------------------+
-- | Paramètre | Valeur                                 |
-- +-----------+----------------------------------------+
-- | spfile    | /u01/app/oracle/dbs/spfileORCL.ora     |
-- +-----------+----------------------------------------+

-- Option 2: Afficher tous les paramètres (commande SQLPlus)
SHOW PARAMETER;

-- Option 3: Voir les paramètres importants
SELECT name, value 
FROM v$parameter 
WHERE name IN ('db_name', 'db_block_size', 'sga_target', 'control_files')
ORDER BY name;

-- EMPLACEMENTS TYPIQUES DU FICHIER init.ora:
--   Linux/Unix: $ORACLE_HOME/dbs/init<SID>.ora
--   Windows:    %ORACLE_HOME%\database\init<SID>.ora


-- *****************************************************************************
-- SECTION 2: MÉMOIRE (SGA - System Global Area)
-- *****************************************************************************
--
-- RÉFÉRENCE COURS (Chapitre 1, slide 15):
--   "SGA (System Global Area) est la mémoire allouée pour stocker les données 
--    et les informations de contrôle de la base de données utilisées par les 
--    processus."
--
-- COMPOSANTS DE LA SGA (Chapitre 1, slide 15):
--   - Database Buffer Cache: stocke copies des blocs de données lus
--   - Redo Log Buffer: enregistre modifications pour la récupération
--   - Shared Pool: plans d'exécution SQL, dictionnaire de données
--   - Large Pool: opérations importantes (backup, restauration)
--   - Java Pool: structures Java
--
-- *****************************************************************************

-- =============================================================================
-- QUESTION 2.a.i: Taille globale de la SGA
-- Vue: v$sga
-- =============================================================================
--
-- RÉFÉRENCE COURS (Chapitre 2, slide 17):
--   "V$SGA: Donne des informations récapitulatives sur la SGA."
--
-- APPROCHE DE RÉSOLUTION:
--   1. v$sga donne un résumé des 4 composants principaux
--   2. Sommer les valeurs pour obtenir la taille totale
--   3. Diviser par 1024/1024 pour convertir bytes → MB

DESC v$sga;

-- Afficher les composants:
SELECT 
    name AS "Composant SGA",
    value/1024/1024 AS "Taille (MB)"
FROM v$sga;

-- Taille totale:
SELECT SUM(value)/1024/1024 AS "Total SGA (MB)" FROM v$sga;

-- RÉSULTAT ATTENDU:
-- +-------------------+-------------+
-- | Composant SGA     | Taille (MB) |
-- +-------------------+-------------+
-- | Fixed Size        | 2.5         |  ← Structures fixes internes
-- | Variable Size     | 400         |  ← Shared Pool + autres pools
-- | Database Buffers  | 128         |  ← Buffer Cache (Q2.b)
-- | Redo Buffers      | 5.5         |  ← Redo Log Buffer
-- +-------------------+-------------+
-- | TOTAL             | 536         |
-- +-------------------+-------------+


-- =============================================================================
-- QUESTION 2.a.ii: Taille détaillée de la SGA
-- Vues: v$sgainfo, v$sgastat
-- =============================================================================
--
-- APPROCHE DE RÉSOLUTION:
--   - v$sgainfo: résumé avec info sur redimensionnabilité (Yes/No)
--   - v$sgastat: détail granulaire de chaque allocation mémoire

-- Vue v$sgainfo (résumé avec redimensionnabilité):
DESC v$sgainfo;

SELECT 
    name AS "Composant",
    bytes/1024/1024 AS "Taille (MB)",
    resizeable AS "Redimensionnable"
FROM v$sgainfo
ORDER BY bytes DESC;

-- RÉSULTAT ATTENDU:
-- +-------------------+-------------+------------------+
-- | Composant         | Taille (MB) | Redimensionnable |
-- +-------------------+-------------+------------------+
-- | Buffer Cache Size | 128         | Yes              |
-- | Shared Pool Size  | 200         | Yes              |
-- | Large Pool Size   | 16          | Yes              |
-- | Java Pool Size    | 16          | Yes              |
-- | Redo Buffers      | 5.5         | No               |
-- +-------------------+-------------+------------------+
-- Note: "Redimensionnable = Yes" signifie qu'Oracle peut ajuster 
-- dynamiquement la taille de ce composant

-- Vue v$sgastat (détail granulaire):
SELECT 
    pool AS "Pool",
    name AS "Composant",
    bytes/1024/1024 AS "Taille (MB)"
FROM v$sgastat
WHERE bytes > 1000000
ORDER BY bytes DESC;


-- =============================================================================
-- QUESTION 2.b: Taille du cache de données (Database Buffer Cache)
-- Vue: v$sga ou v$sgainfo
-- =============================================================================
--
-- RÉFÉRENCE COURS (Chapitre 1, slide 15):
--   "Database buffer cache: stocke des copies des blocs de données lus 
--    depuis les fichiers de données afin de réduire les accès au disque dur."
--
-- POURQUOI C'EST IMPORTANT:
--   Le buffer cache évite les I/O disque (lents) en gardant les blocs 
--   fréquemment utilisés en mémoire (rapide)
--
-- APPROCHE DE RÉSOLUTION:
--   Dans v$sga, le buffer cache s'appelle "Database Buffers"

-- Option 1: Depuis v$sga
SELECT value/1024/1024 AS "Buffer Cache (MB)"
FROM v$sga
WHERE name = 'Database Buffers';

-- RÉSULTAT ATTENDU:
-- +-------------------+
-- | Buffer Cache (MB) |
-- +-------------------+
-- | 128               |
-- +-------------------+

-- Option 2: Depuis v$sgainfo
SELECT bytes/1024/1024 AS "Buffer Cache (MB)"
FROM v$sgainfo
WHERE name = 'Buffer Cache Size';


-- *****************************************************************************
-- SECTION 3: PROCESSUS
-- *****************************************************************************
--
-- RÉFÉRENCE COURS (Chapitre 1, slide 15-16):
--   "User process: aide l'utilisateur à se connecter à l'instance
--    Server process: exécute les tâches demandées par le client
--    Background processes: responsables de la gestion de la mémoire, 
--    des opérations I/O, et des activités de maintenance"
--
-- *****************************************************************************

-- =============================================================================
-- QUESTION 3.a: Processus utilisateur en cours d'exécution
-- Vue: v$session (WHERE type = 'USER')
-- =============================================================================
--
-- RÉFÉRENCE COURS (Chapitre 2, slide 17):
--   "V$SESSION: Donne les informations sur la session courante."
--
-- APPROCHE DE RÉSOLUTION:
--   1. v$session contient une ligne par session connectée
--   2. Filtrer sur type = 'USER' pour les connexions utilisateur
--   3. Exclure les sessions système (username IS NOT NULL)

DESC v$session;

SELECT 
    sid AS "SID",
    serial# AS "Serial#",
    username AS "Utilisateur",
    status AS "État",
    program AS "Programme",
    machine AS "Machine"
FROM v$session
WHERE type = 'USER'
  AND username IS NOT NULL
ORDER BY sid;

-- RÉSULTAT ATTENDU:
-- +-----+---------+-------------+----------+-----------------+----------+
-- | SID | Serial# | Utilisateur | État     | Programme       | Machine  |
-- +-----+---------+-------------+----------+-----------------+----------+
-- | 25  | 12345   | SYSTEM      | ACTIVE   | sqlplus.exe     | PC-USER  |
-- | 30  | 12346   | HR          | INACTIVE | SQL Developer   | LAPTOP   |
-- +-----+---------+-------------+----------+-----------------+----------+
--
-- INTERPRÉTATION:
--   SID = Session ID (identifiant unique)
--   Serial# = Numéro série (combiné avec SID pour identifier une session)
--   ACTIVE = Session en cours d'exécution
--   INACTIVE = Session connectée mais en attente


-- =============================================================================
-- QUESTION 3.b: Processus système (Background) en cours d'exécution
-- Vue: v$session (WHERE type = 'BACKGROUND')
-- =============================================================================
--
-- RÉFÉRENCE COURS (Chapitre 1, slide 16):
--   "Les 4 principaux processus d'arrière-plan:
--    - Database Writer (DBWR): écrit les blocs du Buffer Cache vers les fichiers
--    - Log Writer (LGWR): écrit le Redo Buffer vers les fichiers redo log
--    - System Monitor (SMON): récupération système et maintenance
--    - Process Monitor (PMON): surveille les autres processus"
--
-- APPROCHE DE RÉSOLUTION:
--   Filtrer v$session sur type = 'BACKGROUND'

SELECT 
    sid AS "SID",
    program AS "Processus Background",
    status AS "État"
FROM v$session
WHERE type = 'BACKGROUND'
ORDER BY program;

-- RÉSULTAT ATTENDU:
-- +-----+----------------------+--------+
-- | SID | Processus Background | État   |
-- +-----+----------------------+--------+
-- | 1   | ORACLE.EXE (DBW0)    | ACTIVE |
-- | 2   | ORACLE.EXE (LGWR)    | ACTIVE |
-- | 3   | ORACLE.EXE (SMON)    | ACTIVE |
-- | 4   | ORACLE.EXE (PMON)    | ACTIVE |
-- | 5   | ORACLE.EXE (CKPT)    | ACTIVE |
-- +-----+----------------------+--------+
--
-- =============================================================================
-- RÔLES DES PROCESSUS BACKGROUND (À CONNAÎTRE POUR L'EXAMEN!)
-- =============================================================================
-- Référence: Chapitre 1, slides 16-17
--
-- +---------+------------------------------------------------------------+
-- | Process | Rôle                                                       |
-- +---------+------------------------------------------------------------+
-- | DBW0    | Database Writer: Écrit les blocs modifiés (dirty blocks)   |
-- |         | du Database Buffer Cache vers les fichiers de données      |
-- +---------+------------------------------------------------------------+
-- | LGWR    | Log Writer: Écrit les entrées du Redo Log Buffer vers      |
-- |         | les fichiers redo log sur disque                           |
-- +---------+------------------------------------------------------------+
-- | SMON    | System Monitor: Récupération après crash, nettoyage des    |
-- |         | segments temporaires, fusion des extents libres            |
-- +---------+------------------------------------------------------------+
-- | PMON    | Process Monitor: Nettoie les processus utilisateur échoués,|
-- |         | libère les verrous et ressources des sessions interrompues |
-- +---------+------------------------------------------------------------+
-- | CKPT    | Checkpoint: Signale un checkpoint aux DBW, met à jour      |
-- |         | les headers des fichiers de données et de contrôle         |
-- +---------+------------------------------------------------------------+
-- | ARC0    | Archiver: Copie les fichiers redo log pleins vers le       |
-- |         | stockage d'archives (si mode ARCHIVELOG activé)             |
-- +---------+------------------------------------------------------------+


-- *****************************************************************************
-- SECTION 4: FICHIERS
-- *****************************************************************************
--
-- RÉFÉRENCE COURS (Chapitre 1, slide 17):
--   "Data files: contiennent les données réelles de la base
--    Redo log files: enregistrent les modifications pour la récupération
--    Control files: contiennent les informations sur l'état de la base"
--
-- *****************************************************************************

-- =============================================================================
-- QUESTION 4.a: Fichiers de contrôle
-- Vue: v$controlfile
-- =============================================================================
--
-- RÉFÉRENCE COURS (Chapitre 2, slide 17):
--   "V$CONTROLFILE: Fournit les noms des fichiers de contrôle."
--
-- RÉFÉRENCE COURS (Chapitre 1, slide 17):
--   "Control files: contiennent les informations relatives à l'état de la base, 
--    telles que le nom de la base, les noms des fichiers de données et des 
--    fichiers journaux, ainsi que leurs emplacements sur le disque."
--
-- BONNE PRATIQUE:
--   Oracle recommande au moins 2 copies (multiplexage) sur des disques 
--   différents pour la protection contre les pannes

DESC v$controlfile;

SELECT 
    name AS "Chemin Fichier Contrôle",
    status AS "État"
FROM v$controlfile;

-- RÉSULTAT ATTENDU:
-- +-----------------------------------------------------+
-- | Chemin Fichier Contrôle                             |
-- +-----------------------------------------------------+
-- | /u01/app/oracle/oradata/ORCL/control01.ctl          |
-- | /u01/app/oracle/fast_recovery_area/ORCL/control02.ctl|
-- +-----------------------------------------------------+


-- =============================================================================
-- QUESTION 4.b: Fichiers journaux (Redo Log Files)
-- Vue: v$logfile
-- =============================================================================
--
-- RÉFÉRENCE COURS (Chapitre 2, slide 17):
--   "V$LOGFILE: Contient des informations sur les fichiers de redo log en ligne."
--
-- RÉFÉRENCE COURS (Chapitre 1, slide 17):
--   "Redo log files: enregistrent les modifications effectuées sur la base. 
--    Ces fichiers peuvent être utilisés lors d'un processus de récupération 
--    pour restaurer les informations d'origine après une panne."
--
-- ORGANISATION:
--   Les redo logs sont organisés en GROUPES pour la rotation circulaire

DESC v$logfile;

SELECT 
    group# AS "Groupe",
    member AS "Chemin Fichier Log",
    type AS "Type",
    status AS "État"
FROM v$logfile
ORDER BY group#;

-- RÉSULTAT ATTENDU:
-- +--------+----------------------------------------+--------+
-- | Groupe | Chemin Fichier Log                     | Type   |
-- +--------+----------------------------------------+--------+
-- | 1      | /u01/app/oracle/oradata/ORCL/redo01.log| ONLINE |
-- | 2      | /u01/app/oracle/oradata/ORCL/redo02.log| ONLINE |
-- | 3      | /u01/app/oracle/oradata/ORCL/redo03.log| ONLINE |
-- +--------+----------------------------------------+--------+

-- Informations complémentaires sur les groupes (taille, membres):
SELECT 
    group# AS "Groupe",
    bytes/1024/1024 AS "Taille (MB)",
    members AS "Nb Membres",
    status AS "État"
FROM v$log
ORDER BY group#;


-- =============================================================================
-- QUESTION 4.c: Fichiers de données et taille des blocs
-- Vue: v$datafile
-- =============================================================================
--
-- RÉFÉRENCE COURS (Chapitre 2, slide 17):
--   "V$DATAFILE: Donne les informations sur les fichiers de données tel que 
--    leur nom, leur statut et d'autres détails."
--
-- RÉFÉRENCE COURS (Chapitre 1, slides 17-18):
--   "Data files: contiennent les données réelles de la base
--    Data blocks: un bloc de données correspond à un certain nombre d'octets 
--    sur le disque. Oracle stocke les données dans ces blocs."
--
-- NOTE SUR db_block_size:
--   Généralement 8192 bytes (8KB), défini à la création de la base

DESC v$datafile;

SELECT 
    file# AS "N° Fichier",
    name AS "Chemin Fichier Données",
    bytes/1024/1024 AS "Taille (MB)",
    block_size AS "Taille Bloc (bytes)"
FROM v$datafile
ORDER BY file#;

-- RÉSULTAT ATTENDU:
-- +----+-----------------------------------+-------------+-------------------+
-- | N° | Chemin Fichier Données            | Taille (MB) | Taille Bloc       |
-- +----+-----------------------------------+-------------+-------------------+
-- | 1  | /u01/.../system01.dbf             | 800         | 8192              |
-- | 2  | /u01/.../sysaux01.dbf             | 550         | 8192              |
-- | 3  | /u01/.../undotbs01.dbf            | 100         | 8192              |
-- | 4  | /u01/.../users01.dbf              | 50          | 8192              |
-- +----+-----------------------------------+-------------+-------------------+

-- Paramètre block_size:
SELECT value AS "DB_BLOCK_SIZE" FROM v$parameter WHERE name = 'db_block_size';


-- *****************************************************************************
-- SECTION 5: PLUGGABLE DATABASE (PDB)
-- *****************************************************************************
--
-- RÉFÉRENCE COURS (Chapitre 1, slides 19-20):
--   "L'architecture multitenant permet à une base Oracle de fonctionner 
--    comme une Container Database (CDB) hébergeant plusieurs bases distinctes.
--    Une seule instance peut contenir plusieurs Pluggable Databases (PDBs),
--    chacune fonctionnant comme une base indépendante."
--
-- ARCHITECTURE:
--   CDB (Container) = CDB$ROOT + PDB$SEED + PDBs utilisateur
--   - CDB$ROOT: dictionnaire global
--   - PDB$SEED: template pour créer de nouvelles PDB
--   - PDBs: bases enfichables créées par l'utilisateur
--
-- *****************************************************************************

-- =============================================================================
-- QUESTION 5.a: Créer une PDB nommée AGRICOL_PDB
-- Commande: CREATE PLUGGABLE DATABASE
-- =============================================================================
--
-- APPROCHE DE RÉSOLUTION:
--   1. Être connecté au CDB$ROOT
--   2. Utiliser CREATE PLUGGABLE DATABASE avec un ADMIN USER
--   3. Spécifier FILE_NAME_CONVERT si pas d'Oracle Managed Files

-- Prérequis:
ALTER SESSION SET CONTAINER = CDB$ROOT;

-- Créer la PDB:
CREATE PLUGGABLE DATABASE AGRICOL_PDB
    ADMIN USER pdb_admin IDENTIFIED BY "MotDePasse123"
    FILE_NAME_CONVERT = (
        '/u01/app/oracle/oradata/ORCL/pdbseed/',
        '/u01/app/oracle/oradata/ORCL/agricol_pdb/'
    );

-- Alternative avec Oracle Managed Files (OMF) - plus simple:
-- CREATE PLUGGABLE DATABASE AGRICOL_PDB
--     ADMIN USER pdb_admin IDENTIFIED BY "MotDePasse123";

-- Vérifier:
SELECT pdb_name, status FROM dba_pdbs;

-- RÉSULTAT ATTENDU:
-- +-------------+--------+
-- | PDB_NAME    | STATUS |
-- +-------------+--------+
-- | PDB$SEED    | NORMAL |
-- | AGRICOL_PDB | NEW    |  ← Nouvellement créée
-- +-------------+--------+


-- =============================================================================
-- QUESTION 5.b: Ouvrir la PDB
-- Commande: ALTER PLUGGABLE DATABASE ... OPEN
-- =============================================================================
--
-- POURQUOI OUVRIR?
--   Une PDB nouvellement créée est en mode MOUNTED (fermée)
--   Il faut l'ouvrir explicitement pour y accéder

ALTER PLUGGABLE DATABASE AGRICOL_PDB OPEN;

-- Vérifier:
SELECT name, open_mode FROM v$pdbs;

-- RÉSULTAT ATTENDU:
-- +-------------+------------+
-- | NAME        | OPEN_MODE  |
-- +-------------+------------+
-- | PDB$SEED    | READ ONLY  |  ← Template, toujours en lecture seule
-- | AGRICOL_PDB | READ WRITE |  ← Maintenant ouverte
-- +-------------+------------+

-- Pour ouvrir automatiquement au démarrage de la CDB:
ALTER PLUGGABLE DATABASE AGRICOL_PDB SAVE STATE;


-- =============================================================================
-- QUESTION 5.c: Se connecter à AGRICOL_PDB en tant que SYSTEM
-- Commande: ALTER SESSION SET CONTAINER
-- =============================================================================
--
-- APPROCHE DE RÉSOLUTION:
--   Plusieurs méthodes possibles:
--   1. Changer de container dans la session actuelle
--   2. Connexion directe via SQLPlus avec le service name

-- Option 1: Changer de container dans la session actuelle
ALTER SESSION SET CONTAINER = AGRICOL_PDB;

-- Vérifier le container courant:
SHOW CON_NAME;
-- ou
SELECT SYS_CONTEXT('USERENV', 'CON_NAME') AS "Container Actuel" FROM DUAL;

-- RÉSULTAT ATTENDU:
-- CON_NAME
-- ------------------------------
-- AGRICOL_PDB

-- Option 2: Connexion directe via SQLPlus (ligne de commande)
-- sqlplus SYSTEM/password@localhost:1521/AGRICOL_PDB


-- *****************************************************************************
-- SECTION 6: STRUCTURE LOGIQUE
-- *****************************************************************************
--
-- RÉFÉRENCE COURS (Chapitre 1, slides 17-18):
--   "Oracle Database utilise une structure logique de stockage pour contrôler 
--    l'utilisation de l'espace disque:
--    - Data blocks: bloc = X octets sur disque (généralement 8KB)
--    - Extents: ensemble de blocs contigus
--    - Segments: ensemble d'extents pour un objet (table, index)
--    - Tablespaces: conteneur logique de segments"
--
-- HIÉRARCHIE:
--   Tablespace > Segment > Extent > Block
--
-- *****************************************************************************

-- =============================================================================
-- QUESTION 6.a: Noms des tablespaces
-- Vue: dba_tablespaces
-- =============================================================================
--
-- RÉFÉRENCE COURS (Chapitre 1, slide 18):
--   "Tablespace: est un conteneur logique de segments. Chaque tablespace 
--    est constitué d'au moins un fichier de données."

DESC dba_tablespaces;

SELECT 
    tablespace_name AS "Tablespace",
    status AS "État",
    contents AS "Type",
    extent_management AS "Gestion Extents"
FROM dba_tablespaces
ORDER BY tablespace_name;

-- RÉSULTAT ATTENDU:
-- +------------+--------+-----------+-----------------+
-- | Tablespace | État   | Type      | Gestion Extents |
-- +------------+--------+-----------+-----------------+
-- | SYSTEM     | ONLINE | PERMANENT | LOCAL           | ← Dictionnaire données
-- | SYSAUX     | ONLINE | PERMANENT | LOCAL           | ← Composants auxiliaires
-- | TEMP       | ONLINE | TEMPORARY | LOCAL           | ← Opérations de tri
-- | UNDOTBS1   | ONLINE | UNDO      | LOCAL           | ← Données de rollback
-- | USERS      | ONLINE | PERMANENT | LOCAL           | ← Données utilisateur
-- +------------+--------+-----------+-----------------+


-- =============================================================================
-- QUESTION 6.b: Tablespace de chaque fichier de données
-- Vue: dba_data_files
-- =============================================================================
--
-- APPROCHE DE RÉSOLUTION:
--   dba_data_files lie les fichiers PHYSIQUES aux tablespaces LOGIQUES

DESC dba_data_files;

SELECT 
    tablespace_name AS "Tablespace",
    file_name AS "Fichier",
    bytes/1024/1024 AS "Taille (MB)",
    autoextensible AS "Auto-Extension"
FROM dba_data_files
ORDER BY tablespace_name;

-- RÉSULTAT ATTENDU:
-- +------------+--------------------------+-------------+----------------+
-- | Tablespace | Fichier                  | Taille (MB) | Auto-Extension |
-- +------------+--------------------------+-------------+----------------+
-- | SYSTEM     | /u01/.../system01.dbf    | 800         | YES            |
-- | SYSAUX     | /u01/.../sysaux01.dbf    | 550         | YES            |
-- | UNDOTBS1   | /u01/.../undotbs01.dbf   | 100         | YES            |
-- | USERS      | /u01/.../users01.dbf     | 50          | YES            |
-- +------------+--------------------------+-------------+----------------+


-- =============================================================================
-- QUESTION 6.c: Créer un tablespace de 2M auto-extensible
-- Commande: CREATE TABLESPACE
-- =============================================================================
--
-- SYNTAXE:
--   CREATE TABLESPACE nom DATAFILE 'chemin' SIZE taille AUTOEXTEND ON

CREATE TABLESPACE ts_agricol
    DATAFILE '/u01/app/oracle/oradata/ORCL/ts_agricol01.dbf'
    SIZE 2M
    AUTOEXTEND ON
    NEXT 1M              -- Extension par incréments de 1M
    MAXSIZE UNLIMITED;   -- Pas de limite de taille

-- Alternative avec Oracle Managed Files (pas besoin de spécifier le chemin):
-- CREATE TABLESPACE ts_agricol DATAFILE SIZE 2M AUTOEXTEND ON;

-- Vérification:
SELECT 
    tablespace_name,
    file_name,
    bytes/1024/1024 AS "Taille (MB)",
    autoextensible
FROM dba_data_files
WHERE tablespace_name = 'TS_AGRICOL';

-- RÉSULTAT ATTENDU:
-- +-----------------+----------------------------+-------------+----------------+
-- | TABLESPACE_NAME | FILE_NAME                  | Taille (MB) | AUTOEXTENSIBLE |
-- +-----------------+----------------------------+-------------+----------------+
-- | TS_AGRICOL      | /u01/.../ts_agricol01.dbf  | 2           | YES            |
-- +-----------------+----------------------------+-------------+----------------+


-- =============================================================================
-- QUESTION 6.d: Créer un tablespace temporaire de 2M
-- Commande: CREATE TEMPORARY TABLESPACE
-- =============================================================================
--
-- UTILITÉ:
--   Les tablespaces temporaires stockent les données temporaires pendant
--   les opérations de tri, de hachage, et autres traitements

CREATE TEMPORARY TABLESPACE ts_agricol_temp
    TEMPFILE '/u01/app/oracle/oradata/ORCL/ts_agricol_temp01.dbf'
    SIZE 2M;

-- Alternative avec OMF:
-- CREATE TEMPORARY TABLESPACE ts_agricol_temp TEMPFILE SIZE 2M;

-- Vérification (utiliser dba_TEMP_files, pas dba_data_files!):
SELECT 
    tablespace_name,
    file_name,
    bytes/1024/1024 AS "Taille (MB)"
FROM dba_temp_files
WHERE tablespace_name = 'TS_AGRICOL_TEMP';

-- RÉSULTAT ATTENDU:
-- +------------------+--------------------------------+-------------+
-- | TABLESPACE_NAME  | FILE_NAME                      | Taille (MB) |
-- +------------------+--------------------------------+-------------+
-- | TS_AGRICOL_TEMP  | /u01/.../ts_agricol_temp01.dbf | 2           |
-- +------------------+--------------------------------+-------------+


-- =============================================================================
-- QUESTION 6.e: Créer un utilisateur avec les deux tablespaces
-- Commande: CREATE USER
-- =============================================================================
--
-- SYNTAXE:
--   CREATE USER nom IDENTIFIED BY mdp
--   DEFAULT TABLESPACE ts_permanent
--   TEMPORARY TABLESPACE ts_temp
--   QUOTA taille ON tablespace

CREATE USER agricol_user
    IDENTIFIED BY "MotDePasse123"
    DEFAULT TABLESPACE ts_agricol          -- Où stocker ses objets
    TEMPORARY TABLESPACE ts_agricol_temp   -- Pour les opérations temporaires
    QUOTA UNLIMITED ON ts_agricol;         -- Droit d'écrire sans limite

-- Donner les privilèges de base pour pouvoir se connecter et créer des tables:
GRANT CREATE SESSION TO agricol_user;
GRANT CREATE TABLE TO agricol_user;

-- Vérification:
SELECT 
    username,
    default_tablespace,
    temporary_tablespace
FROM dba_users
WHERE username = 'AGRICOL_USER';

-- RÉSULTAT ATTENDU:
-- +--------------+--------------------+----------------------+
-- | USERNAME     | DEFAULT_TABLESPACE | TEMPORARY_TABLESPACE |
-- +--------------+--------------------+----------------------+
-- | AGRICOL_USER | TS_AGRICOL         | TS_AGRICOL_TEMP      |
-- +--------------+--------------------+----------------------+


-- =============================================================================
-- QUESTION 6.f: Supprimer les tablespaces créés
-- Commandes: DROP USER, DROP TABLESPACE
-- =============================================================================
--
-- ORDRE IMPORTANT:
--   1. D'abord l'utilisateur (sinon erreur: objets existent encore)
--   2. Ensuite les tablespaces
--
-- INCLUDING CONTENTS AND DATAFILES:
--   Supprime le contenu ET les fichiers physiques sur disque

-- Étape 1: Supprimer l'utilisateur (CASCADE supprime ses objets)
DROP USER agricol_user CASCADE;

-- Étape 2: Supprimer le tablespace permanent
DROP TABLESPACE ts_agricol 
    INCLUDING CONTENTS AND DATAFILES;

-- Étape 3: Supprimer le tablespace temporaire
DROP TABLESPACE ts_agricol_temp 
    INCLUDING CONTENTS AND DATAFILES;

-- Vérification (doit retourner 0 lignes):
SELECT tablespace_name FROM dba_tablespaces 
WHERE tablespace_name LIKE 'TS_AGRICOL%';

-- RÉSULTAT ATTENDU:
-- aucune ligne sélectionnée


-- =============================================================================
-- RÉSUMÉ DES VUES DU DICTIONNAIRE (POUR L'EXAMEN)
-- =============================================================================
-- Référence: Chapitre 2, slides 13-17
-- 
-- PRÉFIXES DES VUES (Chapitre 2, slide 13):
--   CDB_*  : objets de toutes les PDBs dans un CDB
--   DBA_*  : tous les objets dans la PDB (requiert privilèges DBA)
--   USER_* : objets appartenant à l'utilisateur courant
--   ALL_*  : objets accessibles à l'utilisateur (USER_* + objets avec privilèges)
--   V$     : vues dynamiques de performances (accessibles par SYS/SYSDBA)
--
-- VUES DYNAMIQUES V$ UTILISÉES DANS CE TP:
-- +------------------+--------------------------------------------------+
-- | Vue              | Contenu                                          |
-- +------------------+--------------------------------------------------+
-- | v$instance       | Nom instance, version, état                      |
-- | v$database       | Nom base, mode ouverture                         |
-- | v$parameter      | Paramètres de configuration                      |
-- | v$sga            | Composants mémoire SGA (taille globale)          |
-- | v$sgainfo        | Détails SGA avec redimensionnabilité             |
-- | v$sgastat        | Statistiques granulaires SGA                     |
-- | v$session        | Sessions utilisateur et background               |
-- | v$controlfile    | Fichiers de contrôle                             |
-- | v$logfile        | Fichiers redo log                                |
-- | v$log            | Groupes de redo log                              |
-- | v$datafile       | Fichiers de données                              |
-- | v$pdbs           | État des Pluggable Databases                     |
-- +------------------+--------------------------------------------------+
--
-- VUES ADMINISTRATIVES DBA_ UTILISÉES DANS CE TP:
-- +------------------+--------------------------------------------------+
-- | Vue              | Contenu                                          |
-- +------------------+--------------------------------------------------+
-- | dba_pdbs         | Informations sur les PDBs                        |
-- | dba_tablespaces  | Liste des tablespaces                            |
-- | dba_data_files   | Fichiers de données par tablespace               |
-- | dba_temp_files   | Fichiers temporaires                             |
-- | dba_users        | Utilisateurs de la base                          |
-- +------------------+--------------------------------------------------+
--
-- =============================================================================
-- FIN DU TP2 - SOLUTION COMPLETE
-- =============================================================================
