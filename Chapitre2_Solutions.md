# Solutions Détaillées - Chapitre 2 : La Méta-Base (Les Catalogues) Oracle

---

### Question 1
**Réponse : B) Une relation (table) contenant des informations sur tous les objets de la base de données**

**Explication :** Les catalogues sont des relations (tables) qui contiennent des informations sur tous les objets de la base de données (tables, index, vues, utilisateurs, etc.). Sans ces informations, le SGBD ne peut pas assurer ses objectifs.

---

### Question 2
**Réponse : B) La Méta Base**

**Explication :** Les informations descriptives sur les objets de la base de données sont stockées dans la Méta Base. C'est un ensemble de tables système qui décrivent la structure et le contenu de la base.

---

### Question 3
**Réponse : B) Ne peut pas assurer ses objectifs**

**Explication :** Le SGBD, pour fonctionner et assurer ses objectifs (analyse de requêtes, vérification de l'existence des objets, accès aux données), doit pouvoir retrouver les différentes informations sur les objets via les catalogues.

---

### Question 4
**Réponse : B) Chaque relation (table) dans la base de données**

**Explication :** La méta-relation « RELATION » décrit chacun de ses tuples comme un descripteur d'une relation dans la base de données. On y trouve les informations sur les tables système, de base et virtuelles.

---

### Question 5
**Réponse : B) Système, Base, Virtuelle**

**Explication :** Les trois types de relations sont :
- **Système** : pour la gestion de la méta base
- **Base** : résultats de la conception de la BD (ex: FOURNISSEUR)
- **Virtuelle** : vues où seule la description existe

---

### Question 6
**Réponse : B) Assurer la gestion de la méta base**

**Explication :** Une relation système est utilisée pour assurer la gestion de la méta base. Par exemple, la méta-relation des attributs est une relation système.

---

### Question 7
**Réponse : B) Une vue où seule la description existe**

**Explication :** Une relation virtuelle correspond à une vue. Seule la description (définition) existe dans le catalogue, pas les données physiques. Les données sont calculées à partir de la requête qui définit la vue.

---

### Question 8
**Réponse : B) Nom, Type, Taille, Cardinalité, Degré, Date de création, Version, Adresse**

**Explication :** La méta-relation « RELATION » contient typiquement :
- Nom de la relation (nom externe)
- Type (système, base, virtuelle)
- Taille du tuple en octets
- Cardinalité (nombre de tuples)
- Degré (nombre d'attributs)
- Date de création
- Version
- Adresse du premier attribut

---

### Question 9
**Réponse : B) Le nombre de tuples (lignes) de la relation**

**Explication :** La cardinalité d'une relation représente le nombre de tuples (lignes) de cette relation. C'est une information dynamique qui change avec les insertions et suppressions.

---

### Question 10
**Réponse : B) Le nombre d'attributs de la relation**

**Explication :** Le degré d'une relation représente le nombre d'attributs (colonnes) de cette relation. C'est le nombre de colonnes définies dans la table.

---

### Question 11
**Réponse : B) Les attributs (colonnes) de chaque relation**

**Explication :** La méta-relation « ATTRIBUT » contient un tuple pour chaque attribut d'une relation de la base. Elle décrit les caractéristiques de chaque colonne.

---

### Question 12
**Réponse : A) Nom attribut, Identificateur attribut, Type, Longueur, Position dans la relation**

**Explication :** La méta-relation « ATTRIBUT » inclut :
- Nom de l'attribut (externe)
- Identificateur attribut (interne)
- Identificateur de la relation à laquelle appartient l'attribut
- Type de l'attribut
- Longueur
- Position de l'attribut dans la relation

---

### Question 13
**Réponse : B) Les index créés sur les relations**

**Explication :** La méta-relation « INDEX » décrit les index créés sur les relations de base ou système. Chaque tuple représente un index.

---

### Question 14
**Réponse : A) Nom de l'index, Identificateur de la relation indexée, Type de l'index, Attributs indexés**

**Explication :** Les informations dans la méta-relation « INDEX » comprennent :
- Nom de l'index
- Identificateur de la relation indexée
- Type de l'index (primaire, secondaire)
- Attributs indexés (liste des arguments)

---

### Question 15
**Réponse : B) La description des vues avec l'identificateur, les relations de base et la requête qui définit la vue**

**Explication :** La méta-relation « VUE » contient pour chaque vue :
- Identificateur/Nom de la vue
- Identificateurs des relations de base utilisées
- Requête SQL qui définit la vue

---

### Question 16
**Réponse : B) Comme une chaîne de caractères**

**Explication :** La requête SQL qui définit la vue est stockée comme une chaîne de caractères dans la méta-relation « VUE ». Le SGBD l'interprète à chaque utilisation de la vue.

---

### Question 17
**Réponse : B) Dynamiquement et automatiquement au fur et à mesure que la base de données évolue**

**Explication :** Les catalogues sont mis à jour dynamiquement et automatiquement par le SGBD au fur et à mesure que la base de données évolue. Aucune intervention manuelle n'est nécessaire.

---

### Question 18
**Réponse : B) Les insertions, modifications de structure, ajouts d'index, créations de vues**

**Explication :** Les opérations qui provoquent une mise à jour des catalogues incluent :
- Nouvelles insertions de données
- Modifications dans la structure des relations
- Ajouts d'index secondaires
- Créations de vues

---

### Question 19
**Réponse : B) Ajout d'une ligne dans le catalogue ATTRIBUT et modification du tuple FOURNISSEUR (degré, taille, version)**

**Explication :** L'exécution de `ALTER TABLE Fournisseur ADD ADRESSEF` provoque :
- Ajout d'une ligne ADRESSEF dans le catalogue ATTRIBUT
- Modification de la cardinalité dans la méta-relation ATTRIBUT
- Modification du tuple Fournisseur (degré +1, taille tuple modifiée, version incrémentée)

---

### Question 20
**Réponse : C) SYS**

**Explication :** Le dictionnaire de données Oracle appartient à l'utilisateur SYS. SYS est le propriétaire des tables et vues du dictionnaire de données.

---

### Question 21
**Réponse : B) Structure logique et physique, définitions des objets, contraintes, utilisateurs, privilèges, audit**

**Explication :** La Méta Base Oracle stocke des informations sur :
- La structure logique et physique de la base
- Le nom et les définitions des différents objets
- Les contraintes sur les objets
- Les utilisateurs et leurs caractéristiques (privilèges)
- L'audit de la base de données

---

### Question 22
**Réponse : B) MAJUSCULES**

**Explication :** Toutes les informations contenues dans les tables système du dictionnaire des données et accessibles au travers de vues sont codées en MAJUSCULES. Par exemple : `WHERE table_name LIKE 'AGRICU%'`

---

### Question 23
**Réponse : B) Chaque instruction SQL du LMD (INSERT, UPDATE, DELETE) ou LDD (CREATE, ALTER, DROP)**

**Explication :** Le dictionnaire des données est mis automatiquement à jour après chaque instruction SQL du LMD (INSERT, UPDATE, DELETE, etc.) ou LDD (CREATE TABLE, ALTER TABLE, DROP USER, etc.).

---

### Question 24
**Réponse : B) Des informations sur les objets de toutes les PDB dans un CDB**

**Explication :** Les vues CDB_* fournissent des informations sur les objets de toutes les PDB (Pluggable Databases) dans un CDB (Container Database).

---

### Question 25
**Réponse : B) Des informations sur tous les objets dans la PDB**

**Explication :** Les vues DBA_* fournissent des informations sur tous les objets dans la PDB (Pluggable Database). Elles nécessitent des privilèges d'administration.

---

### Question 26
**Réponse : B) Des informations sur les objets appartenant au compte connecté**

**Explication :** Les vues USER_* fournissent des informations sur les objets appartenant au compte connecté (l'utilisateur courant).

---

### Question 27
**Réponse : B) Les informations des vues USER_* plus les objets pour lesquels des privilèges ont été octroyés**

**Explication :** Les vues ALL_* contiennent les informations des vues USER_* plus les informations sur les objets pour lesquels des privilèges ont été octroyés au groupe PUBLIC ou à l'utilisateur courant.

---

### Question 28
**Réponse : B) DICTIONARY ou DICT**

**Explication :** La vue DICTIONARY (synonyme DICT) contient la liste de toutes les vues du dictionnaire de données avec leur description.

---

### Question 29
**Réponse : B) 1) Trouver le nom de la vue (DICTIONARY), 2) Choisir les colonnes (DESC), 3) Interroger la vue (SELECT)**

**Explication :** La démarche correcte est :
1. Trouver le nom de la vue en consultant DICTIONARY
2. Choisir les colonnes avec DESC
3. Interroger la vue avec SELECT

---

### Question 30
**Réponse : B) SELECT * FROM DICTIONARY WHERE table_name LIKE '%SEQUENCE%';**

**Explication :** Pour trouver les vues relatives aux séquences :
```sql
SELECT * FROM DICTIONARY WHERE table_name LIKE '%SEQUENCE%';
```
Ceci retourne ALL_SEQUENCES, DBA_SEQUENCES, USER_SEQUENCES, CDB_SEQUENCES.

---

### Question 31
**Réponse : B) Les tables relationnelles de l'utilisateur**

**Explication :** USER_TABLES (synonyme TABS) décrit les tables relationnelles de l'utilisateur courant.

---

### Question 32
**Réponse : B) Les colonnes des tables et vues**

**Explication :** USER_TAB_COLUMNS (synonyme COLS) décrit les colonnes des tables et vues appartenant à l'utilisateur.

---

### Question 33
**Réponse : B) Les index de l'utilisateur**

**Explication :** USER_INDEXES (synonyme IND) décrit les index créés par l'utilisateur courant.

---

### Question 34
**Réponse : B) Les définitions des contraintes de tables**

**Explication :** USER_CONSTRAINTS contient les définitions des contraintes de tables (PRIMARY KEY, FOREIGN KEY, CHECK, UNIQUE, NOT NULL).

---

### Question 35
**Réponse : B) Les vues de l'utilisateur**

**Explication :** USER_VIEWS décrit les vues appartenant à l'utilisateur courant.

---

### Question 36
**Réponse : B) Les synonymes privés de l'utilisateur**

**Explication :** USER_SYNONYMS décrit les synonymes privés créés par l'utilisateur courant.

---

### Question 37
**Réponse : B) Tous les synonymes (privés et publics)**

**Explication :** DBA_SYNONYMS et ALL_SYNONYMS décrivent tous les synonymes, aussi bien privés que publics.

---

### Question 38
**Réponse : B) Les commentaires à propos des tables ou vues**

**Explication :** USER_TAB_COMMENTS contient les commentaires ajoutés aux tables ou vues par l'utilisateur.

---

### Question 39
**Réponse : B) Les caractéristiques de l'utilisateur courant**

**Explication :** USER_USERS décrit les caractéristiques de l'utilisateur courant (celui qui est connecté).

---

### Question 40
**Réponse : B) Les autorisations sur les tables et les vues**

**Explication :** USER_TAB_GRANTS liste les autorisations sur les tables et les vues pour lesquelles l'utilisateur est le propriétaire, ou ayant donné ou reçu l'autorisation.

---

### Question 41
**Réponse : B) Les colonnes pour lesquelles l'utilisateur a reçu une autorisation**

**Explication :** USER_COL_PRIVS_RECD fournit des informations sur les colonnes pour lesquelles l'utilisateur a reçu une autorisation d'accès.

---

### Question 42
**Réponse : B) Tous les rôles existants**

**Explication :** DBA_ROLES contient la liste de tous les rôles existants dans la base de données.

---

### Question 43
**Réponse : B) Les rôles donnés à l'utilisateur**

**Explication :** USER_ROLE_PRIVS décrit les rôles accordés à l'utilisateur courant.

---

### Question 44
**Réponse : B) Les rôles actifs à un instant t pour la session courante**

**Explication :** SESSION_ROLES indique les rôles qui sont actuellement actifs pour la session courante de l'utilisateur.

---

### Question 45
**Réponse : C) V_$ (synonym V$)**

**Explication :** Les vues dynamiques de performances Oracle sont identifiées avec le préfixe V_$. Le synonyme couramment utilisé est V$ (exemple : V$SESSION).

---

### Question 46
**Réponse : B) L'utilisateur SYS et les utilisateurs ayant le privilège SYSDBA**

**Explication :** Les vues dynamiques sont accessibles uniquement pour l'utilisateur SYS et pour les utilisateurs ayant le privilège SYSDBA.

---

### Question 47
**Réponse : B) V$FIXED_TABLE**

**Explication :** Pour trouver la liste des vues dynamiques, on interroge V$FIXED_TABLE.

---

### Question 48
**Réponse : B) Les informations sur les paramètres d'initialisation**

**Explication :** V$PARAMETER liste les informations sur les paramètres d'initialisation avec leur nom, leur nombre, leur valeur et leur type.

---

### Question 49
**Réponse : B) Des informations récapitulatives sur la SGA (System Global Area)**

**Explication :** V$SGA donne des informations récapitulatives sur la SGA (System Global Area), la zone mémoire partagée d'Oracle.

---

### Question 50
**Réponse : B) La session courante**

**Explication :** V$SESSION donne les informations sur la session courante de l'utilisateur connecté.

---

### Question 51
**Réponse : B) L'état de l'instance courante**

**Explication :** V$INSTANCE donne l'état de l'instance Oracle courante (démarrée, arrêtée, etc.).

---

### Question 52
**Réponse : B) Des informations sur la base de données (nom, date de création)**

**Explication :** V$DATABASE contient des informations sur la base de données telles que le nom ou la date de création.

---

### Question 53
**Réponse : B) Les informations sur les fichiers de données (nom, statut)**

**Explication :** V$DATAFILE donne les informations sur les fichiers de données telles que leur nom, leur statut et d'autres détails.

---

### Question 54
**Réponse : B) Les noms des fichiers de contrôle**

**Explication :** V$CONTROLFILE fournit les noms des fichiers de contrôle de la base de données Oracle.

---

### Question 55
**Réponse : B) Des informations sur les fichiers de redo log en ligne**

**Explication :** V$LOGFILE contient des informations sur les fichiers de redo log en ligne.

---

### Question 56
**Réponse : B) USER_CONSTRAINTS**

**Explication :** Pour vérifier s'il y a une référence de clé étrangère entre deux tables, on exploite la vue USER_CONSTRAINTS qui contient les définitions des contraintes, y compris FOREIGN KEY.

---

### Question 57
**Réponse : B) USER_TABLES**

**Explication :** TABS est le synonyme de la vue USER_TABLES qui décrit les tables de l'utilisateur.

---

### Question 58
**Réponse : B) USER_INDEXES**

**Explication :** IND est le synonyme de la vue USER_INDEXES qui décrit les index de l'utilisateur.

---

### Question 59
**Réponse : B) Les erreurs après compilation des objets PL/SQL stockés**

**Explication :** USER_ERRORS contient les erreurs détectées après compilation des objets PL/SQL stockés (procédures, fonctions, packages, déclencheurs).

---

### Question 60
**Réponse : B) Le code source des objets PL/SQL stockés (procédures, fonctions, packages, triggers)**

**Explication :** USER_SOURCE contient le code source des objets PL/SQL stockés : procédures, fonctions, packages et triggers.
