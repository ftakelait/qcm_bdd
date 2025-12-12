# Solutions Détaillées du QCM - ASGBD

> **Module** : ASGBD  
> **Niveau** : 3ème année IA - USTHB  
> **Document** : Corrigé complet avec références aux chapitres du cours

---

# PARTIE I : Architecture Oracle
## 📖 Source : Chapitre 1 - Partie 1 : Architecture et Généralités

---

### Q1 - Réponse : **B**
**Quels sont les principaux composants de l'architecture Oracle ?**  
→ Les composants mémoires, les processus et les fichiers de données

**📚 Référence cours :**
> « L'architecture comprend: 1. Composants mémoires 2. Processus 3. Composants physiques (Fichiers de données). »

---

### Q2 - Réponse : **B**
**Quelle est la relation entre une instance Oracle et une base de données ?**  
→ L'instance = composants mémoire + processus, la base = fichiers physiques

**📚 Référence cours :**
> « Les composants mémoire et les processus d'arrière-plan forment l'instance Oracle. Une instance doit être démarrée avant d'accéder à la base de données. »

---

### Q3 - Réponse : **B**
**Que doit-on démarrer avant d'accéder à une base de données Oracle ?**  
→ L'instance Oracle

**📚 Référence cours :**
> « À chaque démarrage d'Oracle, une mémoire est allouée et les processus d'arrière-plan sont lancés. [...] Une instance doit être démarrée avant d'accéder à la base de données. »

---

### Q4 - Réponse : **B**
**Que contient la SGA (System Global Area) ?**  
→ Database Buffer Cache, Redo Log Buffer, Shared Pool, Large Pool, Java Pool

**📚 Référence cours :**
> « SGA (System Global Area) est la mémoire allouée pour stocker les données et les informations de contrôle. Les principaux composants de la SGA sont : Database buffer cache, Redo log Buffer, Shared pool, Large Pool, Java pool. »

---

### Q5 - Réponse : **B**
**Quel est le rôle du Database Buffer Cache ?**  
→ Stocker des copies des blocs de données pour réduire les accès disque

**📚 Référence cours :**
> « Database buffer cache: stocke des copies des blocs de données lus depuis les fichiers de données afin de réduire les accès au disque dur. »

---

### Q6 - Réponse : **B**
**Quel est le rôle du Redo Log Buffer ?**  
→ Enregistrer toutes les modifications pour protéger la base en cas de défaillance

**📚 Référence cours :**
> « Redo log Buffer: enregistre toutes les modifications effectuées sur la base de données afin de la protéger en cas de défaillance de l'instance. »

---

### Q7 - Réponse : **B**
**Que contient le Shared Pool ?**  
→ Les zones SQL partagées, plans d'exécution et unités PL/SQL

**📚 Référence cours :**
> « Shared pool: contient des structures de mémoire partagée, telles que les zones SQL partagées, les plans d'exécution et les unités de programme PL/SQL. »

---

### Q8 - Réponse : **B**
**À quoi sert le Large Pool ?**  
→ Allocations mémoire importantes (sauvegarde, restauration)

**📚 Référence cours :**
> « Large Pool: utilisé pour les allocations de mémoire importantes, comme les opérations de sauvegarde et de restauration. »

---

### Q9 - Réponse : **B**
**À quoi sert le Java Pool ?**  
→ Stocker les structures de données liées à Java

**📚 Référence cours :**
> « Java pool: stocke les structures de données liées à Java. Ce pool est utilisé lorsque la base Oracle est configurée pour exécuter des applications Java. »

---

### Q10 - Réponse : **B**
**Quel processus est responsable de l'exécution des requêtes SQL ?**  
→ Server process

**📚 Référence cours :**
> « Server process: exécute les tâches demandées par le client. Par exemple, ces processus analysent les requêtes SQL, les placent dans le shared pool, créent et exécutent un plan d'exécution pour chaque requête. »

---

### Q11 - Réponse : **B**
**Quel est le rôle du User Process ?**  
→ Aider l'utilisateur à se connecter après une requête de connexion

**📚 Référence cours :**
> « User process: aide l'utilisateur à se connecter à l'instance après l'envoi d'une requête de connexion. »

---

### Q12 - Réponse : **B**
**Quelles tâches effectue le Server Process ?**  
→ Analyser les requêtes SQL, créer les plans d'exécution, lire les blocs

**📚 Référence cours :**
> « Server process: exécute les tâches demandées par le client [...] analysent les requêtes SQL, les placent dans le shared pool, créent et exécutent un plan d'exécution pour chaque requête, et lisent les blocs de données. »

---

### Q13 - Réponse : **B**
**Quels sont les 4 principaux processus d'arrière-plan ?**  
→ DBWR, LGWR, SMON, PMON

**📚 Référence cours :**
> « Les 4 principaux processus d'arrière-plan: Database Writer (DBWR), Log Writer (LGWR), System Monitor (SMON), Process Monitor (PMON). »

---

### Q14 - Réponse : **A**
**Quel est le rôle du processus DBWR ?**  
→ Écrire les blocs du Buffer Cache vers les fichiers de données

**📚 Référence cours :**
> « Database Writer (DBWR): Ce processus a pour tâche d'écrire les blocs de données du Database Buffer Cache (présent dans la SGA) vers les fichiers de données physiques. »

---

### Q15 - Réponse : **B**
**Quel processus écrit les Redo blocks vers les fichiers Redo Log ?**  
→ LGWR (Log Writer)

**📚 Référence cours :**
> « Log Writer (LGWR): Ce processus écrit les blocs de journalisation (Redo blocks) depuis le Redo Log Buffer (présent dans la SGA) vers les fichiers journaux de reprise (Redo Log Files). »

---

### Q16 - Réponse : **B**
**Quel est le rôle du processus SMON ?**  
→ Récupération du système et maintenance après arrêt anormal

**📚 Référence cours :**
> « System Monitor (SMON): Ce processus est responsable de la récupération du système et des activités de maintenance au niveau global (par exemple, le nettoyage des espaces temporaires après un arrêt anormal). »

---

### Q17 - Réponse : **B**
**Quel est le rôle du processus PMON ?**  
→ Surveiller les processus, terminer les anormaux, libérer les ressources

**📚 Référence cours :**
> « Process Monitor (PMON): Ce processus surveille les autres processus d'arrière-plan. En cas de problème, il termine ou redémarre les processus anormaux et libère les ressources associées aux sessions interrompues. »

---

### Q18 - Réponse : **B**
**Quel est le rôle du processus CKPT ?**  
→ Mettre à jour les fichiers de données et contrôle pour indiquer le dernier checkpoint

**📚 Référence cours :**
> « CKPT - Checkpoint Process: Met à jour tous les fichiers de données et les fichiers de contrôle de la base de données afin d'indiquer le point de contrôle le plus récent. »

---

### Q19 - Réponse : **B**
**Quel est le rôle du processus ARCn ?**  
→ Copier les fichiers Redo Log vers un stockage d'archives quand ils sont pleins

**📚 Référence cours :**
> « ARCn - Archiver Process: Copie les fichiers journaux de reprise (Redo Log Files) vers un stockage d'archives lorsqu'ils sont pleins. »

---

### Q20 - Réponse : **B**
**Quel est le rôle du processus RECO ?**  
→ Résoudre les transactions distribuées en attente après défaillance

**📚 Référence cours :**
> « RECO - Recoverer Process: Résout les transactions distribuées en attente à cause d'une défaillance réseau ou système dans une base de données distribuée. »

---

### Q21 - Réponse : **A**
**Quels sont les principaux fichiers d'une base Oracle ?**  
→ Data files, Redo log files, Control files, Parameter file

**📚 Référence cours :**
> « FILES: Data files [...] Redo log files [...] Control files [...] Parameter file [...] »

---

### Q22 - Réponse : **B**
**Que contiennent les Data files ?**  
→ Les données réelles de la base de données

**📚 Référence cours :**
> « Data files: contiennent les données réelles de la base de données. »

---

### Q23 - Réponse : **B**
**Quel est le rôle des Redo Log files ?**  
→ Enregistrer les modifications pour permettre la récupération après panne

**📚 Référence cours :**
> « Redo log files: enregistrent les modifications effectuées sur la base de données. Ces fichiers peuvent être utilisés lors d'un processus de récupération pour restaurer les informations d'origine après une panne. »

---

### Q24 - Réponse : **B**
**Que contiennent les Control files ?**  
→ Les informations d'état de la base (nom, emplacements des fichiers)

**📚 Référence cours :**
> « Control files: contiennent les informations relatives à l'état de la base, telles que le nom de la base, les noms des fichiers de données et des fichiers journaux, ainsi que leurs emplacements sur le disque. »

---

### Q25 - Réponse : **B**
**Que contient le Parameter file ?**  
→ Les paramètres de configuration définissant le démarrage de la base

**📚 Référence cours :**
> « Parameter file: contient les paramètres de configuration qui définissent la manière dont la base de données doit être démarrée. »

---

### Q26 - Réponse : **D**
**Quelle est la plus petite unité de stockage logique ?**  
→ Data block

**📚 Référence cours :**
> « Data blocks: un bloc de données correspond à un certain nombre d'octets sur le disque. Oracle stocke les données dans ces blocs. »

---

### Q27 - Réponse : **B**
**Qu'est-ce qu'un Extent ?**  
→ Un ensemble de blocs de données contigus

**📚 Référence cours :**
> « Extents: une extension est un ensemble de blocs de données contigus, utilisé pour stocker un type particulier d'information. »

---

### Q28 - Réponse : **B**
**Qu'est-ce qu'un Segment ?**  
→ Un ensemble d'extents allouées pour stocker des objets (table, index)

**📚 Référence cours :**
> « Segments: Un segment est un ensemble d'extensions allouées pour stocker des objets de la base de données, tels qu'une table ou un index. »

---

### Q29 - Réponse : **B**
**Qu'est-ce qu'un Tablespace ?**  
→ Un conteneur logique de segments composé d'au moins un fichier de données

**📚 Référence cours :**
> « Tablespaces: est un conteneur logique de segments. Chaque tablespace est constitué d'au moins un fichier de données. »

---

### Q30 - Réponse : **B**
**Quelle est la hiérarchie des structures logiques ?**  
→ Block → Extent → Segment → Tablespace

**📚 Référence cours :**
> L'ordre présenté dans le cours est : Data blocks → Extents → Segments → Tablespaces

---

### Q31 - Réponse : **B**
**Qu'est-ce que l'architecture multitenant ?**  
→ Une base conteneur (CDB) hébergeant plusieurs bases distinctes (PDBs)

**📚 Référence cours :**
> « L'architecture multitenant permet à une base de données Oracle de fonctionner comme une base de données conteneur (CDB) hébergeant plusieurs bases de données distinctes [...] pluggable databases (PDBs). »

---

### Q32 - Réponse : **C**
**À partir de quelle version l'architecture CDB a été introduite ?**  
→ Oracle 12c

**📚 Référence cours :**
> « Container DataBase (CDB) architecture a été introduite à partir d'Oracle Database 12c. »

---

### Q33 - Réponse : **B**
**Que signifie PDB ?**  
→ Pluggable Database

**📚 Référence cours :**
> « [...] plusieurs bases appelées pluggable databases (PDBs), chacune fonctionnant comme une base indépendante. »

---

### Q34 - Réponse : **B**
**Qu'est-ce que le Root dans une architecture CDB ?**  
→ Une base contenant le dictionnaire de données global avec infos sur les PDBs

**📚 Référence cours :**
> « Root: Une base de données qui contient le dictionnaire de données global contenant les informations sur les PDB. »

---

### Q35 - Réponse : **B**
**Que signifie le "c" dans Oracle 12c ?**  
→ Cloud

**📚 Référence cours :**
> « Oracle 12c (c: cloud) »

---

# PARTIE II : Contraintes d'Intégrité et Triggers
## 📖 Source : Chapitre 1 - Partie 2 : Contraintes d'Intégrité

---

### Q36 - Réponse : **B**
**Quels sont les deux types de contraintes d'intégrité ?**  
→ Statique et dynamique

**📚 Référence cours :**
> « Deux types de CI : statique / dynamique. CI dynamique : une règle de gestion active : les TRIGGERS »

---

### Q37 - Réponse : **B**
**Quelles sont les contraintes d'intégrité statiques ?**  
→ PRIMARY KEY, FOREIGN KEY, CHECK, NOT NULL, UNIQUE

**📚 Référence cours :**
> Les contraintes statiques sont les contraintes SQL standard vérifiées à tout moment.

---

### Q38 - Réponse : **B**
**Qu'est-ce qu'une contrainte dynamique ?**  
→ Une règle de gestion active vérifiée lors de transitions (triggers)

**📚 Référence cours :**
> « CI dynamique : une règle de gestion active : les TRIGGERS »

---

### Q39 - Réponse : **B**
**Qu'est-ce qu'un trigger ?**  
→ Un programme déclenché automatiquement lors d'événements sur une table

**📚 Référence cours :**
> Les triggers sont des programmes qui s'exécutent automatiquement en réponse à INSERT, UPDATE, DELETE.

---

### Q40 - Réponse : **B**
**Quels événements peuvent déclencher un trigger ?**  
→ INSERT, UPDATE, DELETE

**📚 Référence cours :**
> « Elle comprend le type d'instruction SQL qui déclenche le trigger : DELETE, INSERT, UPDATE. On peut avoir une, deux ou les trois. »

---

### Q41 - Réponse : **B**
**Le nom d'un trigger doit être unique dans :**  
→ Le même schéma

**📚 Référence cours :**
> « Le NOM du Trigger doit être unique dans un même schéma »

---

### Q42 - Réponse : **B**
**Pour les triggers UPDATE, que peut-on spécifier de plus ?**  
→ Une liste de colonnes

**📚 Référence cours :**
> « Pour UPDATE, on peut spécifier une liste de colonnes. Dans ce cas, le trigger ne se déclenchera que si l'instruction UPDATE porte sur l'une au moins des colonnes précisée dans la liste. »

---

### Q43 - Réponse : **B**
**Quelle est la différence entre BEFORE et AFTER ?**  
→ BEFORE s'exécute avant l'événement, AFTER après

**📚 Référence cours :**
> « BEFORE : le bloc action est levé avant l'exécution de l'événement. AFTER : le bloc action est levé après l'exécution de l'événement. »

---

### Q44 - Réponse : **B**
**Quand utiliser un trigger BEFORE ?**  
→ Pour modifier ou valider les données avant l'opération

**📚 Référence cours :**
> BEFORE permet de valider ou modifier les données avant qu'elles ne soient insérées/modifiées.

---

### Q45 - Réponse : **B**
**Quand utiliser un trigger AFTER ?**  
→ Pour des actions après l'opération (audit, mise à jour d'autres tables)

**📚 Référence cours :**
> AFTER est utilisé pour des actions de journalisation ou mise à jour de tables liées.

---

### Q46 - Réponse : **B**
**Qu'est-ce qu'un trigger ligne (FOR EACH ROW) ?**  
→ Un trigger qui se déclenche pour chaque ligne affectée

**📚 Référence cours :**
> « Les triggers lignes For Each Row qui se déclenchent individuellement pour chaque ligne de la table affectée par le trigger. »

---

### Q47 - Réponse : **B**
**Qu'est-ce qu'un trigger global (Statement) ?**  
→ Un trigger qui s'exécute une seule fois par instruction

**📚 Référence cours :**
> « Les triggers globaux (statement) qui sont déclenchées une seule fois. »

---

### Q48 - Réponse : **B**
**Comment savoir si un trigger est ligne ou global ?**  
→ Si FOR EACH ROW est spécifié, c'est ligne ; sinon c'est global

**📚 Référence cours :**
> « Si l'option FOR EACH ROW est spécifiée, c'est un trigger ligne, sinon c'est un trigger global. »

---

### Q49 - Réponse : **B**
**Comment accède-t-on à la nouvelle valeur d'une colonne ?**  
→ :new.colonne

**📚 Référence cours :**
> « La nouvelle valeur est appelée :new.colonne »

---

### Q50 - Réponse : **A**
**Comment accède-t-on à l'ancienne valeur d'une colonne ?**  
→ :old.colonne

**📚 Référence cours :**
> « L'ancienne valeur est appelée :old.colonne »

---

### Q51 - Réponse : **C**
**Pour quelle instruction :old n'a pas de sens ?**  
→ INSERT (il n'y a pas d'ancienne valeur)

**📚 Référence cours :**
> « Si l'instruction de déclenchement du trigger est INSERT, seule la nouvelle valeur a un sens. »

---

### Q52 - Réponse : **B**
**Pour quelle instruction :new n'a pas de sens ?**  
→ DELETE (il n'y a pas de nouvelle valeur)

**📚 Référence cours :**
> « Si l'instruction de déclenchement du trigger est DELETE, seule l'ancienne valeur a un sens. »

---

### Q53 - Réponse : **B**
**Quelles instructions SQL sont autorisées dans un trigger ?**  
→ Les instructions LMD (INSERT, UPDATE, DELETE, SELECT)

**📚 Référence cours :**
> « Les instructions du LMD sont autorisées »

---

### Q54 - Réponse : **B**
**Quelles instructions SQL sont INTERDITES dans un trigger ?**  
→ Les instructions LDD et contrôle de transaction (COMMIT, ROLLBACK)

**📚 Référence cours :**
> « Les instructions du LDD ne sont pas autorisées. Les instructions de contrôle de transaction (ROLLBACK, COMMIT) ne sont pas autorisées. »

---

### Q55 - Réponse : **C**
**Quel est le nombre maximum de triggers en cascade ?**  
→ 32

**📚 Référence cours :**
> « Triggers en cascade: Un trigger peut provoquer le déclenchement d'un autre trigger. ORACLE autorise jusqu'à 32 triggers en cascade à un moment donné. »

---

### Q56 - Réponse : **B**
**Quel privilège faut-il pour créer un trigger ?**  
→ CREATE TRIGGER

**📚 Référence cours :**
> « Il faut avoir le privilège CREATE TRIGGER »

---

### Q57 - Réponse : **B**
**Pour créer un trigger sur une table dont on n'est pas propriétaire ?**  
→ Posséder le privilège ALTER sur la table ou ALTER ANY TABLE

**📚 Référence cours :**
> « [...] soit posséder le privilège ALTER sur la table sur laquelle on veut définir le trigger, soit posséder le privilège ALTER ANY TABLE »

---

### Q58 - Réponse : **B**
**Comment modifier un trigger existant ?**  
→ CREATE OR REPLACE TRIGGER ou DROP puis CREATE

**📚 Référence cours :**
> « Pour modifier un trigger, on refait une instruction CREATE TRIGGER suivie de OR REPLACE ou bien on supprime le trigger (DROP TRIGGER nomtrigger) et on le crée à nouveau. »

---

### Q59 - Réponse : **B**
**Comment désactiver un trigger ?**  
→ ALTER TRIGGER nomtrigger DISABLE

**📚 Référence cours :**
> « Pour désactiver un trigger, on utilise l'instruction ALTER TRIGGER avec l'option DISABLE : ALTER TRIGGER nomtrigger DISABLE; »

---

### Q60 - Réponse : **B**
**Comment désactiver tous les triggers d'une table ?**  
→ ALTER TABLE nomtable DISABLE ALL TRIGGERS

**📚 Référence cours :**
> « On peut désactiver tous les triggers associés à une table avec la commande : ALTER TABLE nomtable DISABLE ALL TRIGGERS; »

---

### Q61 - Réponse : **B**
**Par défaut, un trigger est-il activé ou désactivé à sa création ?**  
→ Activé

**📚 Référence cours :**
> « Par défaut, un trigger est activé dès sa création. »

---

### Q62 - Réponse : **B**
**Dans quelle vue consulte-t-on les définitions des triggers ?**  
→ USER_TRIGGERS

**📚 Référence cours :**
> « Les définitions des triggers sont stockées dans les tables de la métabase, notamment dans les tables USER_TRIGGERS, ALL_TRIGGERS, DBA_TRIGGERS »

---

### Q63 - Réponse : **B**
**Quelle procédure génère une erreur dans un trigger ?**  
→ raise_application_error()

**📚 Référence cours :**
> « THEN raise_application_error(-20300,'Salaire incorrect pour ce grade'); »

---

### Q64 - Réponse : **B**
**Quelle est la plage des numéros d'erreur pour raise_application_error ?**  
→ 20000 à 20999

**📚 Référence cours :**
> Les exemples du cours utilisent des numéros comme -20003, -20004, -20005, -20300, -20301.

---

# PARTIE III : Index et Mémoire Relationnelle
## 📖 Source : Chapitre 1 - Partie 3 : Mémoire Relationnelle

---

### Q65 - Réponse : **B**
**Qu'est-ce qu'un B-Arbre ?**  
→ Une structure d'index arborescente équilibrée

**📚 Référence cours :**
> « L'index en B-Arbre permet d'optimiser les accès pour les BD. Il facilite l'évolution d'une BD par des insertions successives. »

---

### Q66 - Réponse : **B**
**Dans un B-Arbre, où sont stockées les données ?**  
→ Dans les pages feuilles uniquement

**📚 Référence cours :**
> Le cours montre que les pages feuilles contiennent les tuples de données.

---

### Q67 - Réponse : **B**
**Combien d'enregistrements minimum par page feuille ?**  
→ ⌈d/2⌉ enregistrements (sauf la racine)

**📚 Référence cours :**
> « Si Pi a un nombre d'enregistrement >= [d/2] après suppression alors réaliser la suppression. »

---

### Q68 - Réponse : **B**
**Combien d'enregistrements maximum par page feuille ?**  
→ d enregistrements

**📚 Référence cours :**
> Dans les exemples, D = 3 est l'ordre maximum par page.

---

### Q69 - Réponse : **B**
**Que se passe-t-il lors d'une insertion si la page est saturée ?**  
→ Éclatement : nouvelle page allouée, clés réparties

**📚 Référence cours :**
> « On parle alors d'insertion avec éclatement de nœuds et propagation de l'éclatement jusqu'à la racine. »

---

### Q70 - Réponse : **B**
**Lors d'un éclatement, que fait-on avec la clé médiane ?**  
→ On la propage vers le nœud parent

**📚 Référence cours :**
> « Insertion dans P3 de la clé 115 et un pointeur sur la nouvelle page P12 »

---

### Q71 - Réponse : **B**
**L'éclatement peut-il se propager jusqu'à la racine ?**  
→ Oui, ce qui peut augmenter la profondeur de l'arbre

**📚 Référence cours :**
> « modifier la racine qui deviendra un nœud intermédiaire, et qui sera remplacée par une nouvelle racine avec 2 fils. La profondeur de l'arbre sera alors modifiée. »

---

### Q72 - Réponse : **B**
**Lors d'une suppression, si une page a moins de ⌈d/2⌉ enregistrements ?**  
→ On examine les pages voisines pour équilibrage ou fusion

**📚 Référence cours :**
> « On examine la page Pj immédiatement à gauche ou à droite de Pi et ayant le même père. »

---

### Q73 - Réponse : **B**
**Qu'est-ce que la suppression avec équilibrage ?**  
→ Redistribuer les enregistrements avec une page voisine ayant plus de ⌈d/2⌉

**📚 Référence cours :**
> « Si Pj a plus de [d/2] enregistrements, on redistribue les enregistrements de Pi et Pj de manière équilibrée tout en conservant l'ordre (suppression avec équilibrage). »

---

### Q74 - Réponse : **B**
**Qu'est-ce que la suppression avec fusion ?**  
→ Regrouper deux pages en une seule quand équilibrage impossible

**📚 Référence cours :**
> « Sinon on réalise une suppression avec fusion. On regroupe Pi et Pj en un seul bloc et on modifie les ancêtres de Pi. Cette fusion peut être récursive. »

---

### Q75 - Réponse : **B**
**La suppression avec équilibrage modifie-t-elle la structure du B-Arbre ?**  
→ Non, elle ne modifie pas la structure

**📚 Référence cours :**
> « Remarque : la suppression avec équilibrage ne modifie pas la structure du B-Arbre »

---

### Q76 - Réponse : **B**
**Qu'est-ce qu'un index Bitmap ?**  
→ Un index stockant un tableau de bits pour chaque valeur possible

**📚 Référence cours :**
> « Un index bitmap considère toutes les valeurs possibles pour un attribut. Pour chaque valeur, on stocke un tableau de bits (dit bitmap) avec autant de bits qu'il y a de lignes dans la table. »

---

### Q77 - Réponse : **B**
**Pour quel type de colonnes l'index Bitmap est-il adapté ?**  
→ Les colonnes avec peu de valeurs distinctes

**📚 Référence cours :**
> « Très utile pour les colonnes qui ne possèdent que quelques valeurs distinctes. »

---

### Q78 - Réponse : **B**
**Comment fonctionne la recherche avec un index Bitmap ?**  
→ Sélection des RowId où le bit = 1 pour la valeur recherchée

**📚 Référence cours :**
> « Rechercher les films de type "drame" : 1- Sélectionner dans la table les numéros de ligne (RowId) ayant Drame="1" »

---

### Q79 - Réponse : **B**
**Quels types d'index sont disponibles dans Oracle ?**  
→ B-Arbre, Bitmap, Hashage

**📚 Référence cours :**
> « Plusieurs types d'index dans Oracle : Arbres équilibrés (B- arbre)(par défaut), Bitmap, Hasahage »

---

### Q80 - Réponse : **C**
**Quel type d'index est créé par défaut ?**  
→ B-Arbre

**📚 Référence cours :**
> « Arbres équilibrés (B- arbre)(par défaut) »

---

### Q81 - Réponse : **B**
**Quelle est la syntaxe pour créer un index ?**  
→ CREATE INDEX nom_index ON table(col)

**📚 Référence cours :**
> « Création d'un index: CREATE INDEX nom_index ON nom_table(colonne[,colonne2 …]); »

---

### Q82 - Réponse : **B**
**Comment créer un index unique ?**  
→ CREATE UNIQUE INDEX nom ON table(col)

**📚 Référence cours :**
> « Création index unique: CREATE UNIQUE INDEX nom_index ON nom_table(colonne[,colonne2 …]); »

---

### Q83 - Réponse : **B**
**Comment créer un index Bitmap ?**  
→ CREATE BITMAP INDEX nom ON table(col)

**📚 Référence cours :**
> « CREATE [UNIQUE | BITMAP] INDEX [...] »

---

### Q84 - Réponse : **B**
**Comment supprimer un index ?**  
→ DROP INDEX nom

**📚 Référence cours :**
> « Suppression: DROP INDEX nom_index ; »

---

# PARTIE IV : Métabase Oracle
## 📖 Source : Chapitre 2 : Métabase Oracle

---

### Q85 - Réponse : **B**
**Qu'est-ce que le dictionnaire de données ?**  
→ Un ensemble de tables et vues contenant les métadonnées de la base

**📚 Référence cours :**
> « C'est un certain nombre de tables et vues qui contient un ensemble d'information liée à l'activité et au fonctionnement de la base de donnée »

---

### Q86 - Réponse : **B**
**À qui appartient le dictionnaire de données ?**  
→ À l'utilisateur SYS

**📚 Référence cours :**
> « Appartient à l'utilisateur SYS »

---

### Q87 - Réponse : **B**
**Comment les informations sont-elles codées ?**  
→ En MAJUSCULES

**📚 Référence cours :**
> « Toutes les informations contenues dans les tables système du dictionnaire des données et accessibles au travers de vues sont codées en MAJUSCULES. »

---

### Q88 - Réponse : **B**
**Quand le dictionnaire de données est-il mis à jour ?**  
→ Automatiquement après chaque instruction LMD ou LDD

**📚 Référence cours :**
> « Le dictionnaire des données est mis automatiquement à jour après chaque instruction SQL du LMD (INSERT, UPDATE, DELETE, …) ou LDD (create table, alter table, drop user,...) »

---

### Q89 - Réponse : **B**
**Quels sont les préfixes des vues du dictionnaire ?**  
→ USER_, ALL_, DBA_, CDB_

**📚 Référence cours :**
> « Les vues du dictionnaire de données sont : CDB_*, DBA_*, USER_*, ALL_* »

---

### Q90 - Réponse : **B**
**Que contiennent les vues USER_* ?**  
→ Les objets appartenant à l'utilisateur courant

**📚 Référence cours :**
> « USER_* : informations sur les objets appartenant au compte connecté »

---

### Q91 - Réponse : **B**
**Que contiennent les vues ALL_* ?**  
→ Les objets propres + ceux auxquels l'utilisateur a accès

**📚 Référence cours :**
> « ALL_* : informations des vues USER_* et des informations sur les objets pour lesquels des privilèges ont été octroyés au groupe PUBLIC ou à l'utilisateur courant »

---

### Q92 - Réponse : **B**
**Que contiennent les vues DBA_* ?**  
→ Tous les objets de la base (nécessite privilèges DBA)

**📚 Référence cours :**
> « DBA_* : informations sur tous les objets dans la PDB. »

---

### Q93 - Réponse : **C**
**Quelle vue liste toutes les vues du dictionnaire ?**  
→ DICTIONARY (ou DICT)

**📚 Référence cours :**
> « Liste des vues du dictionnaire : DICTIONARY ou DICT »

---

### Q94 - Réponse : **B**
**Quelle vue contient les informations sur les tables ?**  
→ USER_TABLES

**📚 Référence cours :**
> « USER_TABLES : description des tables relationnelles de l'utilisateur (synonyme TABS). »

---

### Q95 - Réponse : **B**
**Quelle vue contient les contraintes des tables ?**  
→ USER_CONSTRAINTS

**📚 Référence cours :**
> « USER_CONSTRAINTS : définition des contraintes de tables. »

---

### Q96 - Réponse : **B**
**Qu'est-ce qu'une vue dynamique (V$) ?**  
→ Une vue enregistrant l'activité courante de la base

**📚 Référence cours :**
> « Oracle maintient un jeu de tables virtuelles qui enregistre l'activité courante de la base de données. Ces tables sont appelées les tables de performances dynamiques. »

---

### Q97 - Réponse : **B**
**Qui peut accéder aux vues V$ ?**  
→ L'utilisateur SYS et ceux ayant le privilège SYSDBA

**📚 Référence cours :**
> « Accessible uniquement pour l'utilisateur SYS et pour les utilisateurs ayant le privilège SYSDBA. »

---

### Q98 - Réponse : **B**
**Quelle vue dynamique donne l'état de l'instance ?**  
→ V$INSTANCE

**📚 Référence cours :**
> « V$INSTANCE : Donne l'état de l'instance courante. »

---

### Q99 - Réponse : **A**
**Quelle vue dynamique donne les informations sur la base ?**  
→ V$DATABASE

**📚 Référence cours :**
> « V$DATABASE : Contient des informations sur la base de données tel que le nom ou la date de création. »

---

### Q100 - Réponse : **C**
**Quelle vue dynamique donne les informations sur les sessions ?**  
→ V$SESSION

**📚 Référence cours :**
> « V$SESSION : Donne les informations sur la session courante. »

---

# PARTIE V : PL/SQL
## 📖 Source : Chapitre 3 - Partie 1 : PL/SQL

---

### Q101 - Réponse : **B**
**Quelle est la structure générale d'un bloc PL/SQL ?**  
→ DECLARE ... BEGIN ... EXCEPTION ... END

**📚 Référence cours :**
> « DECLARE /* Déclaration des variables */ BEGIN /* Instructions PLSQL */ EXCEPTION /* Traitement des erreurs */ END; »

---

### Q102 - Réponse : **B**
**Quelle section est obligatoire dans un bloc PL/SQL ?**  
→ BEGIN ... END

**📚 Référence cours :**
> DECLARE et EXCEPTION sont optionnels, seul BEGIN...END est obligatoire.

---

### Q103 - Réponse : **B**
**Où déclare-t-on les variables en PL/SQL ?**  
→ Dans la section DECLARE

**📚 Référence cours :**
> « DECLARE /* Déclaration des variables, des types, des curseurs, fonctions et procédures */ »

---

### Q104 - Réponse : **B**
**Comment déclarer une variable du même type qu'une colonne ?**  
→ variable table.colonne%TYPE

**📚 Référence cours :**
> « vsalaire employe.salaire%TYPE; vnom etudiant.nom%TYPE; »

---

### Q105 - Réponse : **B**
**Comment déclarer une variable du même type qu'une ligne entière ?**  
→ variable table%ROWTYPE

**📚 Référence cours :**
> « vemploye employe%ROWTYPE; vetudiant etudiant%ROWTYPE; »

---

### Q106 - Réponse : **B**
**Quel est l'opérateur d'affectation en PL/SQL ?**  
→ :=

**📚 Référence cours :**
> « Affectation (:=) A := B; »

---

### Q107 - Réponse : **B**
**Quelle est la syntaxe de la structure conditionnelle ?**  
→ IF condition THEN instructions END IF

**📚 Référence cours :**
> « IF condition THEN instructions; ELSE instructions; END IF; »

---

### Q108 - Réponse : **B**
**Quelle est la syntaxe de la boucle FOR ?**  
→ FOR i IN borne1..borne2 LOOP instructions END LOOP

**📚 Référence cours :**
> « FOR (indice IN [REVERSE] borne1..borne2) LOOP instructions; END LOOP; »

---

### Q109 - Réponse : **B**
**Quelle est la syntaxe de la boucle WHILE ?**  
→ WHILE (condition) LOOP instructions END LOOP

**📚 Référence cours :**
> « WHILE (condition) LOOP instructions; END LOOP; »

---

### Q110 - Réponse : **B**
**Comment sortir d'une boucle LOOP ?**  
→ EXIT WHEN (condition)

**📚 Référence cours :**
> « LOOP instructions; EXIT WHEN (condition); END LOOP; »

---

### Q111 - Réponse : **B**
**Quel package permet d'afficher des messages ?**  
→ DBMS_OUTPUT

**📚 Référence cours :**
> « Package DBMS_OUTPUT »

---

### Q112 - Réponse : **B**
**Quelle commande rend les affichages visibles dans SQL*Plus ?**  
→ SET SERVEROUTPUT ON

**📚 Référence cours :**
> « Pour rendre les affichages visibles dans SQLPLUS, il faut utiliser la commande suivante : SET SERVEROUTPUT ON »

---

### Q113 - Réponse : **B**
**Quelle procédure affiche un message avec saut de ligne ?**  
→ DBMS_OUTPUT.PUT_LINE

**📚 Référence cours :**
> « Écriture dans le buffer avec saut de ligne : DBMS_OUTPUT.PUT_LINE(<chaîne caractères>); »

---

### Q114 - Réponse : **A**
**Quelle procédure affiche un message sans saut de ligne ?**  
→ DBMS_OUTPUT.PUT

**📚 Référence cours :**
> « Écriture dans le buffer sans saut de ligne : DBMS_OUTPUT.PUT(<chaîne caractères>); »

---

### Q115 - Réponse : **B**
**Qu'est-ce qu'un curseur en PL/SQL ?**  
→ Une zone mémoire pour stocker les résultats d'une requête multi-lignes

**📚 Référence cours :**
> « Zone mémoire (SGA : Share Global Area) partagée pour stocker les résultats. Le curseur contient en permanence l'@ de la ligne courante »

---

### Q116 - Réponse : **B**
**Quand doit-on utiliser un curseur explicite ?**  
→ Pour sélectionner plusieurs lignes

**📚 Référence cours :**
> « Sélection multi-ligne : les CURSEURS. Obligatoire pour sélectionner plusieurs lignes »

---

### Q117 - Réponse : **B**
**Quelles sont les étapes de traitement d'un curseur explicite ?**  
→ DECLARE, OPEN, FETCH, CLOSE

**📚 Référence cours :**
> « Déclaration du curseur : DECLARE. Ouverture du curseur : OPEN. Sélection d'une ligne : FETCH. Fermeture du curseur : CLOSE »

---

### Q118 - Réponse : **B**
**Que fait l'instruction OPEN ?**  
→ Exécute la requête et charge les résultats en SGA

**📚 Référence cours :**
> « Ouverture du curseur : OPEN - SQL 'monte' les lignes sélectionnées en SGA »

---

### Q119 - Réponse : **B**
**Que fait l'instruction FETCH ?**  
→ Récupère une ligne du curseur dans des variables

**📚 Référence cours :**
> « Sélection d'une ligne : FETCH - Chaque FETCH ramène une ligne dans le programme client »

---

### Q120 - Réponse : **B**
**Quelle variable système indique si le curseur contient encore des lignes ?**  
→ Curseur%FOUND

**📚 Référence cours :**
> « Curseur%FOUND - Variable booléenne - Curseur toujours 'ouvert' (encore des lignes) »

---

### Q121 - Réponse : **B**
**Que signifie Curseur%NOTFOUND ?**  
→ Plus de lignes à récupérer

**📚 Référence cours :**
> « Curseur%NOTFOUND - Opposé au précédent - Curseur 'fermé' (plus de lignes) »

---

### Q122 - Réponse : **B**
**Que retourne Curseur%ROWCOUNT ?**  
→ Le nombre de lignes déjà récupérées

**📚 Référence cours :**
> « Curseur%COUNT - Variable number - Nombre de lignes déjà retournées »

---

### Q123 - Réponse : **B**
**Où gère-t-on les exceptions en PL/SQL ?**  
→ Dans la section EXCEPTION

**📚 Référence cours :**
> « Toute erreur (SQL ou applicative) entraîne automatiquement un débranchement vers le paragraphe EXCEPTION »

---

### Q124 - Réponse : **B**
**Quelle exception est levée si un SELECT INTO ne retourne aucune ligne ?**  
→ NO_DATA_FOUND

**📚 Référence cours :**
> « Exceptions SQL déjà définies : DUP_VAL_ON_INDEX, NO_DATA_FOUND, OTHERS »

---

### Q125 - Réponse : **B**
**Quelle exception est levée pour une violation UNIQUE ?**  
→ DUP_VAL_ON_INDEX

**📚 Référence cours :**
> « DUP_VAL_ON_INDEX » dans la liste des exceptions prédéfinies.

---

### Q126 - Réponse : **B**
**Comment capturer toutes les exceptions non gérées ?**  
→ WHEN OTHERS THEN

**📚 Référence cours :**
> « WHEN OTHERS THEN [...] » dans l'exemple de gestion d'exceptions.

---

### Q127 - Réponse : **B**
**Quelle est la différence entre une procédure et une fonction ?**  
→ Une fonction retourne obligatoirement une valeur avec RETURN

**📚 Référence cours :**
> « Les Fonctions stockées : Comme une procédure mais qui ne retourne qu'un seul résultat. Utilisation du mot clé RETURN pour retourner le résultat. »

---

### Q128 - Réponse : **B**
**Comment appeler une procédure depuis SQL*Plus ?**  
→ EXECUTE procedure

**📚 Référence cours :**
> « A partir de sqlplus : EXECUTE inscription('&ide','&vnom','&an_ins', &spec'); »

---

### Q129 - Réponse : **B**
**Comment voir les erreurs après création d'une procédure ?**  
→ SHOW ERRORS

**📚 Référence cours :**
> « pour voir les erreurs syntaxiques commises lors de la déclaration une procédure, il faut utiliser l'instruction : show errors »

---

### Q130 - Réponse : **B**
**Où peut-on appeler une fonction stockée ?**  
→ Dans une requête SQL, un bloc PL/SQL, une procédure ou fonction

**📚 Référence cours :**
> « Appel possible à partir de : Une requête SQL normale, Un programme PL/SQL, Une procédure stockée ou une autre fonction stockée »

---

# PARTIE VI : Contrôle d'Accès
## 📖 Source : Chapitre 3 - Partie 2 : Contrôle d'Accès

---

### Q131 - Réponse : **B**
**Quels sont les deux types de privilèges ?**  
→ Privilèges système et privilèges objets

**📚 Référence cours :**
> « Il y a deux type de privilèges : Privilège système : Est un droit d'exécuter une certaine instruction SQL. Privilège objet: Droit d'accéder à un certain objet d'un autre schéma »

---

### Q132 - Réponse : **B**
**Qu'est-ce qu'un privilège système ?**  
→ Un droit d'exécuter une instruction SQL (CREATE, ALTER, DROP)

**📚 Référence cours :**
> « Privilège système : Est un droit d'exécuter une certaine instruction SQL Create, Alter, DROP, Etc … »

---

### Q133 - Réponse : **B**
**Qu'est-ce qu'un privilège objet ?**  
→ Un droit d'accéder à un objet d'un autre schéma (SELECT, INSERT, etc.)

**📚 Référence cours :**
> « Privilège objet: Droit d'accéder à un certain objet d'un autre schéma SELECT, DELETE, INSERT etc… »

---

### Q134 - Réponse : **B**
**Quelle commande attribue des privilèges ?**  
→ GRANT

**📚 Référence cours :**
> « La commande GRANT permet d'attribuer un ou plusieurs privilèges à un ou plusieurs bénéficiaires. »

---

### Q135 - Réponse : **B**
**Quelle commande retire des privilèges ?**  
→ REVOKE

**📚 Référence cours :**
> « La révocation d'un ou de plusieurs privilèges est réalisée par l'instruction REVOKE. »

---

### Q136 - Réponse : **B**
**Quel privilège système permet de se connecter ?**  
→ CREATE SESSION

**📚 Référence cours :**
> « GRANT CREATE SESSION, CREATE SEQUENCE TO Ahmed; Ahmed peut se connecter à la base sous SQL*Plus »

---

### Q137 - Réponse : **B**
**Quelle option permet de transmettre un privilège système ?**  
→ WITH ADMIN OPTION

**📚 Référence cours :**
> « WITH ADMIN OPTION : permet d'attribuer aux bénéficiaires le droit de retransmettre le(s) privilège(s) reçu(s) à une tierce personne »

---

### Q138 - Réponse : **B**
**Quelle option permet de transmettre un privilège objet ?**  
→ WITH GRANT OPTION

**📚 Référence cours :**
> « WITH GRANT OPTION : permet de donner aux bénéficiaires le droit de retransmettre les privilèges reçus à une tierce personne »

---

### Q139 - Réponse : **B**
**Comment donner un privilège à tous les utilisateurs ?**  
→ GRANT ... TO PUBLIC

**📚 Référence cours :**
> « PUBLIC : pour attribuer le(s) privilège(s) à tous les utilisateurs. »

---

### Q140 - Réponse : **B**
**Qu'est-ce qu'un rôle ?**  
→ Un groupe nommé de privilèges qu'on peut attribuer

**📚 Référence cours :**
> « Les rôles sont des groupes nommés de privilèges, qu'on accorde, en groupe, à des utilisateurs ou à d'autres rôles. »

---

### Q141 - Réponse : **B**
**Comment créer un rôle ?**  
→ CREATE ROLE nom

**📚 Référence cours :**
> « CREATE ROLE manager; »

---

### Q142 - Réponse : **B**
**Quels sont les rôles prédéfinis dans Oracle ?**  
→ CONNECT, RESOURCE, DBA

**📚 Référence cours :**
> « Oracle a des rôles prédéfinis : CONNECT [...] RESOURCE [...] DBA [...] EXP_FULL_DATABASE [...] IMP_FULL_DATABASE »

---

### Q143 - Réponse : **B**
**Que permet le rôle CONNECT ?**  
→ INSERT, UPDATE, DELETE, SELECT sur les relations autorisées, créer des vues

**📚 Référence cours :**
> « CONNECT : INSERT, UPDATE, DELETE, SELECT sur les relations dont on a les privilèges. Permet de créer des vues. »

---

### Q144 - Réponse : **B**
**Que permet le rôle RESOURCE ?**  
→ Créer tables, vues, triggers, procédures

**📚 Référence cours :**
> « RESOURCE : crée les tables, les vues, les triggers, les procédures. »

---

### Q145 - Réponse : **B**
**Que permet le rôle DBA ?**  
→ Tous les privilèges système avec ADMIN OPTION

**📚 Référence cours :**
> « DBA : tous les privilèges système avec ADMIN OPTION »

---

### Q146 - Réponse : **B**
**Comment créer un utilisateur ?**  
→ CREATE USER nom IDENTIFIED BY password

**📚 Référence cours :**
> La syntaxe standard Oracle pour créer un utilisateur.

---

### Q147 - Réponse : **B**
**Comment créer un profil ?**  
→ CREATE PROFILE nom LIMIT ...

**📚 Référence cours :**
> Le cours montre la syntaxe des profils avec leurs limites.

---

### Q148 - Réponse : **B**
**Que peut limiter un profil ?**  
→ Sessions simultanées, temps CPU, tentatives de connexion, durée du mot de passe

**📚 Référence cours :**
> Les paramètres de profil incluent SESSIONS_PER_USER, IDLE_TIME, FAILED_LOGIN_ATTEMPTS, PASSWORD_LIFE_TIME, etc.

---

### Q149 - Réponse : **B**
**Quelle vue liste les privilèges sur les tables ?**  
→ USER_TAB_GRANTS

**📚 Référence cours :**
> « USER_TAB_GRANTS : liste des autorisations sur les tables et les vues pour lesquelles l'utilisateur est le propriétaire, ou ayant donné ou reçu l'autorisation. »

---

### Q150 - Réponse : **B**
**Quelle vue liste les rôles de l'utilisateur courant ?**  
→ USER_ROLE_PRIVS

**📚 Référence cours :**
> « USER_ROLE_PRIVS : rôles donnés à l'utilisateur. »

---

# Tableau Récapitulatif des Réponses

| Q | Rép | Q | Rép | Q | Rép | Q | Rép | Q | Rép |
|---|-----|---|-----|---|-----|---|-----|---|-----|
| 1 | B | 31 | B | 61 | B | 91 | B | 121 | B |
| 2 | B | 32 | C | 62 | B | 92 | B | 122 | B |
| 3 | B | 33 | B | 63 | B | 93 | C | 123 | B |
| 4 | B | 34 | B | 64 | B | 94 | B | 124 | B |
| 5 | B | 35 | B | 65 | B | 95 | B | 125 | B |
| 6 | B | 36 | B | 66 | B | 96 | B | 126 | B |
| 7 | B | 37 | B | 67 | B | 97 | B | 127 | B |
| 8 | B | 38 | B | 68 | B | 98 | B | 128 | B |
| 9 | B | 39 | B | 69 | B | 99 | A | 129 | B |
| 10 | B | 40 | B | 70 | B | 100 | C | 130 | B |
| 11 | B | 41 | B | 71 | B | 101 | B | 131 | B |
| 12 | B | 42 | B | 72 | B | 102 | B | 132 | B |
| 13 | B | 43 | B | 73 | B | 103 | B | 133 | B |
| 14 | A | 44 | B | 74 | B | 104 | B | 134 | B |
| 15 | B | 45 | B | 75 | B | 105 | B | 135 | B |
| 16 | B | 46 | B | 76 | B | 106 | B | 136 | B |
| 17 | B | 47 | B | 77 | B | 107 | B | 137 | B |
| 18 | B | 48 | B | 78 | B | 108 | B | 138 | B |
| 19 | B | 49 | B | 79 | B | 109 | B | 139 | B |
| 20 | B | 50 | A | 80 | C | 110 | B | 140 | B |
| 21 | A | 51 | C | 81 | B | 111 | B | 141 | B |
| 22 | B | 52 | B | 82 | B | 112 | B | 142 | B |
| 23 | B | 53 | B | 83 | B | 113 | B | 143 | B |
| 24 | B | 54 | B | 84 | B | 114 | A | 144 | B |
| 25 | B | 55 | C | 85 | B | 115 | B | 145 | B |
| 26 | D | 56 | B | 86 | B | 116 | B | 146 | B |
| 27 | B | 57 | B | 87 | B | 117 | B | 147 | B |
| 28 | B | 58 | B | 88 | B | 118 | B | 148 | B |
| 29 | B | 59 | B | 89 | B | 119 | B | 149 | B |
| 30 | B | 60 | B | 90 | B | 120 | B | 150 | B |

---

**Bon courage pour votre examen !**
