# CHAPITRE 3 - RÉSUMÉ COMPLET POUR L'EXAMEN

---

# PARTIE 1 : SÉCURITÉ ET CONTRÔLE D'ACCÈS

---

## 1. INTRODUCTION À LA SÉCURITÉ

### Définition d'une base de données sécurisée
C'est un ensemble d'informations et données centralisées qui sont **intègres, confidentielles, disponibles, tracées** et dont l'exploitation est **conforme aux règles**.

### Les 5 principes de la sécurité de l'information

| Principe | Définition |
|----------|------------|
| **Intégrité** | Prévenir la modification des données par des personnes non autorisées |
| **Confidentialité** | Empêcher la consultation de données sensibles par des personnes non autorisées |
| **Disponibilité** | Les utilisateurs autorisés doivent pouvoir accéder aux données |
| **Traçabilité** | Garder la trace des actions pour prévention et audit des incidents |
| **Conformité** | Respect des règles et réglementations |

### Statistiques importantes
- **25%** des incidents sont le fait de **personnels internes**
- **50%** sont consécutifs à des **pertes ou vols de matériels**

> **📌 À RETENIR** : Les 5 principes = **I**ntégrité, **C**onfidentialité, **D**isponibilité, **T**raçabilité, **C**onformité. Le danger vient souvent de l'intérieur (25%).

---

## 2. AUTHENTIFICATION ET AUTORISATION

| Mécanisme | Question | Rôle |
|-----------|----------|------|
| **Authentification** | Qui êtes-vous ? | Vérifier l'identité |
| **Autorisation** | Qu'avez-vous le droit de faire ? | Vérifier les droits d'accès |

### Authentification Oracle
- Cryptage du mot de passe
- Verrouillage des comptes après échecs
- Expiration du mot de passe
- Vérification de la complexité du mot de passe

### Autorisation Oracle
- Tous les objets SQL ont un **propriétaire**
- Le propriétaire possède **tous les droits** sur ses objets
- On peut donner des droits à d'autres utilisateurs
- Les droits sont accordés à différents niveaux (objets, schémas, tables, tuples, CPU)

> **📌 À RETENIR** : Authentification = vérifier l'identité, Autorisation = vérifier les droits. Le propriétaire d'un objet a tous les droits dessus.

---

## 3. CLASSIFICATION DES UTILISATEURS

| Type | Rôle principal |
|------|----------------|
| **DBA** | Installation, gestion tablespaces/utilisateurs, optimisation, sauvegardes, contact support Oracle |
| **Administrateur réseau** | Configuration Oracle Net (middleware) |
| **Développeurs** | Conception/modification de la base, gestion de leurs objets |
| **Administrateurs d'applications** | Gestion des données de l'application |
| **Utilisateurs finaux** | Connexion et interaction via les applications |

> **📌 À RETENIR** : Le DBA est l'administrateur principal. Il gère les tablespaces, utilisateurs, sauvegardes et performances.

---

## 4. GESTION DES UTILISATEURS

### 4.1 CREATE USER - Création

**Syntaxe :**
```sql
CREATE USER utilisateur IDENTIFIED BY motdePasse
  [DEFAULT TABLESPACE nomTablespace]
  [QUOTA {entier [K|M] | UNLIMITED} ON nomTablespace]
  [TEMPORARY TABLESPACE nomTablespace]
  [PROFILE nomProfil]
  [PASSWORD EXPIRE]
  [ACCOUNT {LOCK | UNLOCK}];
```

**Options :**

| Option | Signification |
|--------|---------------|
| `IDENTIFIED BY mdp` | Mot de passe local |
| `IDENTIFIED EXTERNALLY` | Authentification par le système d'exploitation (comptes OPS$ Unix) |
| `IDENTIFIED GLOBALLY` | Authentification par un système d'annuaire |
| `DEFAULT TABLESPACE` | Espace disque de travail pour les objets |
| `TEMPORARY TABLESPACE` | Espace pour opérations temporaires |
| `QUOTA` | Limite ou illimité (UNLIMITED) l'espace utilisable |
| `PROFILE` | Profil de ressources |
| `PASSWORD EXPIRE` | Oblige à changer le mot de passe à la 1ère connexion |
| `ACCOUNT LOCK/UNLOCK` | Verrouille/Déverrouille le compte |

**Valeurs par défaut :**
- Sans tablespace → `SYSTEM` (éviter ! utiliser `USERS`)
- Sans profil → `DEFAULT`

> **📌 À RETENIR** : Par défaut tablespace = SYSTEM, profil = DEFAULT. Un utilisateur créé n'a **AUCUN DROIT** !

---

### 4.2 ALTER USER - Modification

```sql
ALTER USER Ahmed IDENTIFIED BY nouveau_mdp;
ALTER USER Ahmed QUOTA UNLIMITED ON USERS;
ALTER USER Ahmed ACCOUNT UNLOCK;
ALTER USER Ahmed DEFAULT ROLE role1, role2;
```

> **📌 À RETENIR** : ALTER USER pour changer mot de passe, quota, profil, rôles par défaut, verrouillage.

---

### 4.3 DROP USER - Suppression

```sql
DROP USER utilisateur [CASCADE];
```

- **Sans CASCADE** : Échec si l'utilisateur possède des objets
- **Avec CASCADE** : Supprime l'utilisateur ET tous ses objets

**Conséquences CASCADE :**
- Contraintes référentielles d'autres schémas → supprimées
- Vues/procédures d'autres schémas basées sur ces objets → invalidées (pas supprimées)
- Rôles créés par l'utilisateur → NON supprimés

> **📌 À RETENIR** : CASCADE supprime tout le schéma. Sans CASCADE, échec si objets existent.

---

## 5. LES PROFILS

### 5.1 Définition
Un **profil** regroupe des limites de ressources et règles de mot de passe affectables à plusieurs utilisateurs.

### 5.2 CREATE PROFILE

**Prérequis** : Privilège `CREATE PROFILE`

### 5.3 Paramètres de ressources

| Paramètre | Unité | Signification |
|-----------|-------|---------------|
| `SESSIONS_PER_USER` | nombre | Sessions simultanées autorisées |
| `CPU_PER_SESSION` | centièmes sec | Temps CPU max par session |
| `CPU_PER_CALL` | centièmes sec | Temps CPU max par appel |
| `CONNECT_TIME` | minutes | Durée max d'une session |
| `IDLE_TIME` | minutes | Temps d'inactivité avant déconnexion |
| `LOGICAL_READS_PER_SESSION` | blocs | Lectures max par session |
| `PRIVATE_SGA` | octets (K, M) | Espace mémoire en SGA |

### 5.4 Paramètres de mot de passe

| Paramètre | Unité | Signification |
|-----------|-------|---------------|
| `FAILED_LOGIN_ATTEMPTS` | nombre | Tentatives avant blocage |
| `PASSWORD_LIFE_TIME` | jours | Durée de validité |
| `PASSWORD_LOCK_TIME` | jours | Durée de verrouillage après échecs |
| `PASSWORD_GRACE_TIME` | jours | Période de grâce après expiration |
| `PASSWORD_REUSE_TIME` | jours | Délai avant réutilisation |
| `PASSWORD_REUSE_MAX` | nombre | Changements avant réutilisation |

### 5.5 Commandes

```sql
-- Création
CREATE PROFILE profil_Etudiants LIMIT
  SESSIONS_PER_USER 3
  CONNECT_TIME 45
  FAILED_LOGIN_ATTEMPTS 5;

-- Affectation
ALTER USER Ahmed PROFILE profil_Etudiants;

-- Modification (privilège ALTER PROFILE requis)
ALTER PROFILE profil_Etudiants LIMIT IDLE_TIME 30;

-- Suppression
DROP PROFILE profil_Etudiants [CASCADE];
```

> **📌 À RETENIR** : Le profil **DEFAULT ne peut PAS être supprimé**. CASCADE affecte DEFAULT aux utilisateurs concernés.

---

## 6. LES PRIVILÈGES

### 6.1 Deux types

| Type | Définition | Exemples |
|------|------------|----------|
| **Privilège système** | Droit d'exécuter une instruction SQL | CREATE TABLE, CREATE SESSION, DROP USER |
| **Privilège objet** | Droit d'accéder à un objet d'un autre schéma | SELECT, INSERT, UPDATE, DELETE |

> **📌 À RETENIR** : Système = action SQL générale, Objet = accès à un objet spécifique.

---

### 6.2 Privilèges Système

**GRANT :**
```sql
GRANT privilège TO utilisateur [WITH ADMIN OPTION];
GRANT ALL PRIVILEGES TO utilisateur;
GRANT privilège TO PUBLIC;
```

| Option | Signification |
|--------|---------------|
| `ALL PRIVILEGES` | Tous les privilèges système |
| `PUBLIC` | Tous les utilisateurs |
| `WITH ADMIN OPTION` | Peut retransmettre le privilège |

**REVOKE :**
```sql
REVOKE privilège FROM utilisateur;
```

> **📌 À RETENIR** : `WITH ADMIN OPTION` → privilèges SYSTÈME. Pour révoquer, il faut avoir le privilège avec cette option.

---

### 6.3 Privilèges Objet

**GRANT :**
```sql
GRANT privilège ON objet TO utilisateur [WITH GRANT OPTION];
GRANT UPDATE(colonne) ON table TO utilisateur;  -- Colonne spécifique
```

| Option | Signification |
|--------|---------------|
| `WITH GRANT OPTION` | Peut retransmettre le privilège |
| `(colonne)` | Limite à certaines colonnes (INSERT, UPDATE) |

**REVOKE :**
```sql
REVOKE privilège ON objet FROM utilisateur [CASCADE CONSTRAINTS];
```

- `CASCADE CONSTRAINTS` : Supprime les contraintes référentielles liées

> **📌 À RETENIR** : `WITH GRANT OPTION` → privilèges OBJET. On peut limiter UPDATE à une colonne.

---

### 6.4 Différence cruciale

| Option | Type de privilège | Permet de |
|--------|-------------------|-----------|
| `WITH ADMIN OPTION` | **SYSTÈME** | Retransmettre |
| `WITH GRANT OPTION` | **OBJET** | Retransmettre |

> **📌 À RETENIR** : ADMIN = système, GRANT = objet.

---

## 7. LES RÔLES

### 7.1 Définition
Un **rôle** est un groupe nommé de privilèges accordable en bloc.

### 7.2 Avantages
- Simplifie la gestion
- Un changement affecte tous les utilisateurs du rôle

### 7.3 Commandes

```sql
CREATE ROLE manager;
GRANT CREATE VIEW, SELECT ON emp TO manager;
GRANT manager TO user1, user2;
REVOKE manager FROM user1;
DROP ROLE manager;
```

### 7.4 Rôles prédéfinis Oracle

| Rôle | Description |
|------|-------------|
| **CONNECT** | SELECT, INSERT, UPDATE, DELETE sur objets autorisés + créer vues |
| **RESOURCE** | Créer tables, vues, triggers, procédures |
| **DBA** | Tous les privilèges système avec ADMIN OPTION |
| **EXP_FULL_DATABASE** | Exporter toute la base |
| **IMP_FULL_DATABASE** | Importer dans la base |

> **📌 À RETENIR** : CONNECT = lecture/écriture + vues, RESOURCE = création objets, DBA = tout.

---

# PARTIE 2 : LE LANGAGE PL/SQL

---

## 1. INTRODUCTION

### 1.1 Définition
**PL/SQL** = **P**rocedural **L**anguage extension to **SQL**

Surcouche procédurale à SQL : boucles, contrôles, affectations, exceptions.

### 1.2 SQL vs PL/SQL

| SQL | PL/SQL |
|-----|--------|
| Langage ensembliste (4ème génération) | Langage procédural (3ème génération) |
| On décrit le résultat | On décrit les étapes |
| Chaque requête = 1 aller-retour réseau | Bloc complet = 1 seul aller-retour |

> **📌 À RETENIR** : PL/SQL réduit le trafic réseau car tout le bloc est exécuté côté serveur.

---

## 2. STRUCTURE D'UN BLOC

```sql
DECLARE
  -- Déclarations (optionnel)
BEGIN
  -- Instructions (obligatoire)
EXCEPTION
  -- Gestion erreurs (optionnel)
END;
/
```

> **📌 À RETENIR** : Seule la section BEGIN est obligatoire. Le `/` exécute le bloc dans SQL*Plus.

---

## 3. VARIABLES

### 3.1 Types simples

```sql
nbr       NUMBER(2);                  -- Nombre 2 chiffres
nom       VARCHAR(30);                -- Chaîne 30 caractères
minimum   CONSTANT INTEGER := 5;      -- Constante
debut     NUMBER NOT NULL := 0;       -- Pas de NULL
fin       BOOLEAN;                    -- TRUE, FALSE, NULL
reponse   BOOLEAN DEFAULT TRUE;       -- Valeur par défaut
```

### 3.2 Référence au dictionnaire

| Type | Signification | Exemple |
|------|---------------|---------|
| `%TYPE` | Même type qu'une colonne | `vsalaire employe.salaire%TYPE;` |
| `%ROWTYPE` | Structure d'une ligne | `vemploye employe%ROWTYPE;` |

Accès aux champs : `vemploye.nom`, `vemploye.adresse`

> **📌 À RETENIR** : `%TYPE` = type d'une colonne, `%ROWTYPE` = toutes les colonnes (struct).

---

## 4. OPÉRATEUR D'AFFECTATION

```sql
A := B;
```

> **📌 À RETENIR** : `:=` (deux-points égal), pas `=` qui est pour les comparaisons.

---

## 5. STRUCTURES DE CONTRÔLE

### 5.1 IF - THEN - ELSE

```sql
IF condition THEN
  instructions;
ELSIF condition THEN
  instructions;
ELSE
  instructions;
END IF;
```

> **📌 À RETENIR** : `ELSIF` (pas ELSEIF), `END IF;` (avec espace).

### 5.2 CASE

```sql
CASE variable
  WHEN valeur1 THEN action1;
  WHEN valeur2 THEN action2;
  ELSE action;
END CASE;
```

---

## 6. BOUCLES

### 6.1 LOOP

```sql
LOOP
  instructions;
  EXIT WHEN (condition);
END LOOP;
```

### 6.2 FOR

```sql
FOR indice IN borne1..borne2 LOOP
  instructions;
END LOOP;

FOR indice IN REVERSE borne1..borne2 LOOP  -- Décroissant
  instructions;
END LOOP;
```

### 6.3 WHILE

```sql
WHILE (condition) LOOP
  instructions;
END LOOP;
```

> **📌 À RETENIR** : `EXIT WHEN` pour sortir de LOOP, `FOR i IN 1..10` (deux points), `REVERSE` pour décroissant.

---

## 7. AFFICHAGE : DBMS_OUTPUT

**Activation obligatoire :**
```sql
SET SERVEROUT ON;
```

| Procédure | Action |
|-----------|--------|
| `PUT_LINE(texte)` | Affiche avec saut de ligne |
| `PUT(texte)` | Affiche sans saut de ligne |
| `NEW_LINE` | Saut de ligne seul |

> **📌 À RETENIR** : `SET SERVEROUT ON` obligatoire sinon rien ne s'affiche !

---

## 8. SELECT INTO

Récupère **exactement UNE ligne** dans des variables.

```sql
SELECT nom, adresse INTO vnom, vadresse FROM etudiant WHERE id = 1;
SELECT * INTO vretud FROM etudiant WHERE id = 1;  -- Avec %ROWTYPE
```

> **📌 À RETENIR** : Si 0 ligne → `NO_DATA_FOUND`, si >1 ligne → `TOO_MANY_ROWS`.

---

## 9. LES CURSEURS

### 9.1 Définition
Zone mémoire en **SGA** (Shared Global Area) qui stocke les résultats d'une requête multi-lignes avec un pointeur sur la ligne courante.

### 9.2 Types
- **Implicite** : Géré par SQL automatiquement
- **Explicite** : Déclaré par le programmeur

### 9.3 Les 4 étapes

| Étape | Instruction | Action |
|-------|-------------|--------|
| 1 | `DECLARE CURSOR` | Définit la requête (sans exécution) |
| 2 | `OPEN` | Exécute la requête, charge en SGA |
| 3 | `FETCH` | Ramène une ligne dans les variables |
| 4 | `CLOSE` | Libère la mémoire SGA |

### 9.4 Attributs

| Attribut | Type | Signification |
|----------|------|---------------|
| `%FOUND` | BOOLEAN | TRUE si FETCH a ramené une ligne |
| `%NOTFOUND` | BOOLEAN | TRUE si FETCH n'a rien ramené |
| `%COUNT` | NUMBER | Nombre de lignes déjà retournées |
| `%ISOPEN` | BOOLEAN | TRUE si curseur ouvert |

> **📌 À RETENIR** : 4 étapes = DECLARE → OPEN → FETCH → CLOSE. Utiliser `%FOUND` ou `%NOTFOUND` pour la boucle.

---

## 10. EXCEPTIONS

### 10.1 Principe
Erreur → débranchement automatique vers section EXCEPTION.

```sql
BEGIN
  instructions;
EXCEPTION
  WHEN exception1 THEN traitement1;
  WHEN OTHERS THEN traitement_defaut;
END;
```

### 10.2 Exceptions prédéfinies

| Exception | Déclenchée quand |
|-----------|------------------|
| `NO_DATA_FOUND` | SELECT INTO retourne 0 ligne |
| `DUP_VAL_ON_INDEX` | Violation UNIQUE/PRIMARY KEY |
| `OTHERS` | Toutes les autres erreurs |

### 10.3 Exception personnalisée avec PRAGMA

```sql
DECLARE
  mon_exception EXCEPTION;
  PRAGMA EXCEPTION_INIT(mon_exception, -2291);
```

> **📌 À RETENIR** : `OTHERS` capture tout. PRAGMA associe un code Oracle à une exception.

---

## 11. PROCÉDURES STOCKÉES

### 11.1 Définition
Programme PL/SQL **compilé et stocké** dans la base, réutilisable.

### 11.2 Syntaxe

```sql
CREATE [OR REPLACE] PROCEDURE nom_proc
  [(param1 type1, param2 type2 [OUT])] AS
BEGIN
  instructions;
END;
/
```

### 11.3 Modes des paramètres

| Mode | Signification |
|------|---------------|
| `IN` (défaut) | Entrée seulement |
| `OUT` | Sortie seulement |
| `IN OUT` | Entrée et sortie |

### 11.4 Appel

```sql
EXECUTE nom_proc(param1, param2);  -- SQL*Plus
nom_proc(param1, param2);          -- Dans PL/SQL
```

> **📌 À RETENIR** : IN = entrée (défaut), OUT = sortie, IN OUT = les deux. Stocké dans USER_SOURCE.

---

## 12. FONCTIONS STOCKÉES

### 12.1 Différence avec procédure
Fonction **retourne obligatoirement UNE valeur** avec `RETURN`.

### 12.2 Syntaxe

```sql
CREATE [OR REPLACE] FUNCTION nom_fonc
  [(param1 type1)] RETURN type_retour IS
BEGIN
  instructions;
  RETURN(valeur);
END;
/
```

### 12.3 Appel

```sql
SELECT nom_fonc(param) FROM DUAL;           -- Dans SELECT
variable := nom_fonc(param);                 -- Dans PL/SQL
```

> **📌 À RETENIR** : Fonction = RETURN obligatoire. Utilisable dans SELECT, contrairement à procédure.

---

# RÉCAPITULATIF FINAL

## Sécurité

| Concept | À retenir |
|---------|-----------|
| 5 principes | Intégrité, Confidentialité, Disponibilité, Traçabilité, Conformité |
| Statistique | 25% incidents = personnel interne |
| Tablespace défaut | SYSTEM (utiliser USERS) |
| Profil défaut | DEFAULT (non supprimable) |
| DROP USER | CASCADE pour supprimer avec objets |
| Privilège système | WITH ADMIN OPTION pour retransmettre |
| Privilège objet | WITH GRANT OPTION pour retransmettre |
| Rôles prédéfinis | CONNECT, RESOURCE, DBA, EXP_FULL_DATABASE, IMP_FULL_DATABASE |

## PL/SQL

| Concept | À retenir |
|---------|-----------|
| Affectation | `:=` |
| Sinon si | `ELSIF` (pas ELSEIF) |
| Fin si | `END IF;` (avec espace) |
| Boucle for | `FOR i IN 1..10` (deux points) |
| Affichage | `SET SERVEROUT ON` obligatoire |
| Curseur étapes | DECLARE → OPEN → FETCH → CLOSE |
| Curseur attributs | %FOUND, %NOTFOUND, %COUNT, %ISOPEN |
| Type colonne | `%TYPE` |
| Type ligne | `%ROWTYPE` |
| Fonction vs Procédure | Fonction = RETURN obligatoire |
