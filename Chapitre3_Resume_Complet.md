# Chapitre 3 : Contrôle d'Accès et PL/SQL - Résumé d'Examen

---

# PARTIE 1 : SÉCURITÉ ET CONTRÔLE D'ACCÈS

## 1. Les 5 Principes de la Sécurité de l'Information

Une base de données contient des informations qui doivent être :
**intègres, confidentielles, disponibles, tracées et conformes aux règles**.

| Principe | Définition |
|----------|------------|
| **Intégrité** | Prévenir la modification des données par des personnes non autorisées |
| **Confidentialité** | Empêcher la consultation de données sensibles par des personnes non autorisées |
| **Disponibilité** | Les utilisateurs autorisés doivent pouvoir accéder aux données |
| **Traçabilité** | Garder la trace des actions effectuées pour prévention et audit |
| **Conformité** | Respect des règles et réglementations |

> **À retenir** : 25% des incidents sont le fait de personnels internes, 50% sont consécutifs à des pertes ou vols de matériels.

---

## 2. Authentification et Autorisation

Pour appliquer les principes de sécurité :

| Mécanisme | Rôle |
|-----------|------|
| **Authentification** | Vérifier l'identité (qui êtes-vous ?) |
| **Autorisation** | Vérifier les droits d'accès (qu'avez-vous le droit de faire ?) |

**Authentification Oracle** : cryptage mot de passe, verrouillage comptes, expiration mot de passe, vérification complexité.

---

## 3. Gestion des Utilisateurs

### CREATE USER

```sql
CREATE USER utilisateur IDENTIFIED BY motdePasse
  [DEFAULT TABLESPACE nomTablespace]
  [QUOTA {entier [K|M] | UNLIMITED} ON nomTablespace]
  [TEMPORARY TABLESPACE nomTablespace]
  [PROFILE nomProfil]
  [PASSWORD EXPIRE]
  [ACCOUNT {LOCK | UNLOCK}];
```

| Option | Description |
|--------|-------------|
| `IDENTIFIED BY mdp` | Mot de passe local |
| `IDENTIFIED EXTERNALLY` | Authentification par le système d'exploitation |
| `DEFAULT TABLESPACE` | Espace disque pour les objets de l'utilisateur |
| `TEMPORARY TABLESPACE` | Espace pour opérations temporaires (tris) |
| `QUOTA 10M ON tablespace` | Limite l'espace à 10 Mo |
| `PASSWORD EXPIRE` | Oblige à changer le mot de passe à la 1ère connexion |
| `ACCOUNT LOCK/UNLOCK` | Verrouille/Déverrouille le compte |

**Valeurs par défaut** : tablespace `SYSTEM`, profil `DEFAULT`.

**Exemple du cours** :
```sql
CREATE USER Ahmed IDENTIFIED BY p@sw0rd
  DEFAULT TABLESPACE USERS
  QUOTA 10M ON USERS
  TEMPORARY TABLESPACE TEMP
  PASSWORD EXPIRE;
```

### ALTER USER

```sql
ALTER USER Ahmed IDENTIFIED BY @hm0d QUOTA UNLIMITED ON USERS;
ALTER USER Ahmed2 ACCOUNT UNLOCK;
```

### DROP USER

```sql
DROP USER utilisateur [CASCADE];
```

- Sans `CASCADE` : échec si l'utilisateur possède des objets
- Avec `CASCADE` : supprime l'utilisateur ET tous ses objets

---

## 4. Les Profils

**Définition** : Un profil regroupe des limites de ressources et règles de mot de passe.

### CREATE PROFILE

```sql
CREATE PROFILE nomProfil LIMIT
  ParamètreRessource | ParamètreMotdePasse [...];
```

### Paramètres de ressources

| Paramètre | Description |
|-----------|-------------|
| `SESSIONS_PER_USER` | Nombre de sessions simultanées |
| `CPU_PER_SESSION` | Temps CPU max par session (centièmes sec) |
| `CPU_PER_CALL` | Temps CPU max par appel (centièmes sec) |
| `CONNECT_TIME` | Durée max d'une session (minutes) |
| `IDLE_TIME` | Temps d'inactivité avant déconnexion (minutes) |
| `PRIVATE_SGA` | Espace mémoire privé en SGA |

### Paramètres de mot de passe

| Paramètre | Description |
|-----------|-------------|
| `FAILED_LOGIN_ATTEMPTS` | Tentatives avant verrouillage |
| `PASSWORD_LIFE_TIME` | Durée de validité (jours) |
| `PASSWORD_LOCK_TIME` | Durée de verrouillage après échecs (jours) |
| `PASSWORD_GRACE_TIME` | Période de grâce après expiration (jours) |
| `PASSWORD_REUSE_TIME` | Délai avant réutilisation (jours) |

**Exemple du cours** :
```sql
CREATE PROFILE profil_Etudiants LIMIT
  SESSIONS_PER_USER         3
  CPU_PER_CALL              3000
  CONNECT_TIME              45
  IDLE_TIME                 40
  FAILED_LOGIN_ATTEMPTS     5
  PASSWORD_LIFE_TIME        70
  PASSWORD_LOCK_TIME        1
  PASSWORD_GRACE_TIME       10;
```

**Affectation** : `ALTER USER Ahmed PROFILE profil_Etudiants;`

**Suppression** : `DROP PROFILE nomProfil [CASCADE];`

> **Le profil DEFAULT ne peut PAS être supprimé.**

---

## 5. Les Privilèges

### Deux types

| Type | Description | Exemples |
|------|-------------|----------|
| **Système** | Droit d'exécuter une instruction SQL | CREATE TABLE, CREATE SESSION |
| **Objet** | Droit d'accéder à un objet d'un autre schéma | SELECT, INSERT, UPDATE, DELETE |

### Privilèges Système - GRANT

```sql
GRANT privilègeSystème TO utilisateur [WITH ADMIN OPTION];
```

| Option | Description |
|--------|-------------|
| `ALL PRIVILEGES` | Tous les privilèges système |
| `PUBLIC` | Attribue à tous les utilisateurs |
| `WITH ADMIN OPTION` | Permet de retransmettre le privilège |

**Exemples du cours** :
```sql
GRANT CREATE SESSION, CREATE SEQUENCE TO Ahmed;
GRANT CREATE TABLE TO Ahmed WITH ADMIN OPTION;
GRANT CREATE SESSION, CREATE ANY TABLE, DROP ANY TABLE TO Ahmed2;
```

### Privilèges Système - REVOKE

```sql
REVOKE privilègeSystème FROM utilisateur;
```

### Privilèges Objet - GRANT

```sql
GRANT privilègeObjet ON objet TO utilisateur [WITH GRANT OPTION];
```

| Option | Description |
|--------|-------------|
| `(colonne)` | Limite à certaines colonnes (INSERT, UPDATE) |
| `WITH GRANT OPTION` | Permet de retransmettre le privilège |

**Exemples du cours** :
```sql
GRANT SELECT, INSERT ON emp TO manager;
GRANT UPDATE(SAL) ON emp TO manager;  -- Seulement la colonne SAL
```

### Privilèges Objet - REVOKE

```sql
REVOKE privilègeObjet ON objet FROM utilisateur [CASCADE CONSTRAINTS];
```

---

## 6. Les Rôles

**Définition** : Un rôle est un groupe nommé de privilèges.

```sql
-- Création
CREATE ROLE manager;

-- Ajout de privilèges
GRANT CREATE VIEW, CREATE PROCEDURE TO manager;
GRANT SELECT, INSERT, UPDATE(SAL) ON emp TO manager;

-- Attribution aux utilisateurs
GRANT manager TO user1, user2, user3;

-- Révocation
REVOKE manager FROM user1;
```

### Rôles prédéfinis Oracle

| Rôle | Description |
|------|-------------|
| **CONNECT** | SELECT, INSERT, UPDATE, DELETE sur les objets autorisés + créer des vues |
| **RESOURCE** | Créer tables, vues, triggers, procédures |
| **DBA** | Tous les privilèges système avec ADMIN OPTION |
| **EXP_FULL_DATABASE** | Exporter toute la base |
| **IMP_FULL_DATABASE** | Importer dans la base |

---

## 7. Récapitulatif : ADMIN OPTION vs GRANT OPTION

| Option | S'applique à | Permet de |
|--------|--------------|-----------|
| `WITH ADMIN OPTION` | Privilèges **SYSTÈME** | Retransmettre le privilège |
| `WITH GRANT OPTION` | Privilèges **OBJET** | Retransmettre le privilège |

---

# PARTIE 2 : PL/SQL

## 1. Introduction

**PL/SQL** = Procedural Language extension to SQL

### SQL vs PL/SQL (Illustration du cours)

**Avec SQL** (plusieurs allers-retours) :
```
CLIENT                      SERVEUR
INSERT INTO... ──────────► Exécute ──► Résultat
DELETE FROM... ──────────► Exécute ──► Résultat
UPDATE...      ──────────► Exécute ──► Résultat
SELECT...      ──────────► Exécute ──► Résultat
```

**Avec PL/SQL** (un seul aller-retour) :
```
CLIENT                      SERVEUR
BEGIN                       
  INSERT...     ──────────► Exécution   ──► 1 seul
  IF...THEN...              du bloc         Résultat
  SELECT...                 PL/SQL
END;
```

---

## 2. Structure d'un Bloc PL/SQL

```sql
DECLARE
  -- Déclarations (optionnel)
  -- Variables, curseurs, exceptions
BEGIN
  -- Instructions (obligatoire)
  -- Ordres SQL et PL/SQL
EXCEPTION
  -- Gestion des erreurs (optionnel)
END;
/
```

---

## 3. Variables

### Variables simples (exemples du cours)

```sql
nbr       NUMBER(2);
nom       VARCHAR(30);
minimum   CONSTANT INTEGER := 5;
salaire   NUMBER(8,2);
debut     NUMBER NOT NULL := 0;
fin       BOOLEAN;
reponse   BOOLEAN DEFAULT TRUE;
ok        BOOLEAN := TRUE;
```

### Référence au dictionnaire (exemples du cours)

```sql
vsalaire   employe.salaire%TYPE;    -- Même type que la colonne
vnom       etudiant.nom%TYPE;
vemploye   employe%ROWTYPE;         -- Structure complète d'une ligne
vetudiant  etudiant%ROWTYPE;
-- Accès : vemploye.adresse
```

---

## 4. Opérateur d'Affectation

```sql
A := B;
```

---

## 5. Structures Conditionnelles

### IF - THEN - ELSE

```sql
IF condition THEN
  instructions;
ELSIF condition THEN
  instructions;
ELSE
  instructions;
END IF;
```

### CASE

```sql
CASE variable
  WHEN valeur1 THEN action1;
  WHEN valeur2 THEN action2;
  ELSE action;
END CASE;
```

---

## 6. Boucles

### LOOP

```sql
LOOP
  instructions;
  EXIT WHEN (condition);
END LOOP;
```

### FOR

```sql
FOR indice IN borne1..borne2 LOOP
  instructions;
END LOOP;

FOR indice IN REVERSE borne1..borne2 LOOP  -- Ordre décroissant
  instructions;
END LOOP;
```

### WHILE

```sql
WHILE (condition) LOOP
  instructions;
END LOOP;
```

---

## 7. Affichage : DBMS_OUTPUT

**Activation obligatoire** : `SET SERVEROUT ON`

| Procédure | Description |
|-----------|-------------|
| `DBMS_OUTPUT.PUT_LINE(texte)` | Affiche avec saut de ligne |
| `DBMS_OUTPUT.PUT(texte)` | Affiche sans saut de ligne |
| `DBMS_OUTPUT.NEW_LINE` | Saut de ligne |

---

## 8. SELECT INTO (Sélection mono-ligne)

```sql
SELECT nom, adresse, tel INTO vnom, vadresse, vtel
FROM etudiant WHERE ide = matricule;

SELECT * INTO vretud FROM etudiant WHERE ine = matricule;
DBMS_OUTPUT.PUT_LINE('Nom : ' || vretud.nom);
```

---

## 9. Curseurs (Sélection multi-lignes)

### Illustration du cours : Fonctionnement d'un curseur

```
Programme PL/SQL              SGA                    BD
      │                        │                      │
      │  OPEN ─────────────────┼──────────────────────┤
      │                        │◄───── SELECT ────────┤
      │                        │  [Lignes chargées]   │
      │                        │                      │
      │  FETCH ◄───────────────┤                      │
      │  [1 ligne]             │                      │
      │                        │                      │
      │  FETCH ◄───────────────┤                      │
      │  [1 ligne]             │                      │
      │                        │                      │
      │  CLOSE ────────────────┤                      │
      │                        │  [Mémoire libérée]   │
```

### Démarche

1. **DECLARE** : Déclare le curseur (sans exécution)
2. **OPEN** : Exécute la requête, charge les résultats en SGA
3. **FETCH** : Ramène une ligne dans les variables
4. **CLOSE** : Libère la mémoire

### Attributs des curseurs

| Attribut | Type | Description |
|----------|------|-------------|
| `Curseur%FOUND` | BOOLEAN | TRUE si FETCH a ramené une ligne |
| `Curseur%NOTFOUND` | BOOLEAN | TRUE si FETCH n'a rien ramené |
| `Curseur%COUNT` | NUMBER | Nombre de lignes déjà retournées |
| `Curseur%ISOPEN` | BOOLEAN | TRUE si curseur ouvert |

### Exemple complet du cours

```sql
DECLARE
  CURSOR c1 IS SELECT nom, moyenne FROM etudiant;
  vnom      etudiant.nom%TYPE;
  vmoyenne  etudiant.moyenne%TYPE;
  e1, e2    NUMBER;
BEGIN
  OPEN c1;
  FETCH c1 INTO vnom, vmoyenne;
  WHILE c1%FOUND LOOP
    IF vmoyenne < 10 THEN
      e1 := e1 + 1;
      INSERT INTO liste_refus VALUES(vnom);
    ELSE
      e2 := e2 + 1;
      INSERT INTO liste_recus VALUES(vnom);
    END IF;
    FETCH c1 INTO vnom, vmoyenne;
  END LOOP;
  CLOSE c1;
  DBMS_OUTPUT.PUT_LINE(TO_CHAR(e2) || ' Reçus');
  DBMS_OUTPUT.PUT_LINE(TO_CHAR(e1) || ' Refus');
  COMMIT;
END;
```

---

## 10. Exceptions

### Illustration du cours : Débranchement

```sql
BEGIN
  instruction1;
  instruction2;    ─── Erreur ───┐
  instruction3;                   │
EXCEPTION                         │
  WHEN exception1 THEN ◄──────────┘
    traitement1;
  WHEN OTHERS THEN
    traitement_defaut;
END;
```

### Exceptions prédéfinies

| Exception | Description |
|-----------|-------------|
| `NO_DATA_FOUND` | SELECT INTO ne retourne aucune ligne |
| `DUP_VAL_ON_INDEX` | Violation contrainte UNIQUE |
| `OTHERS` | Toutes les autres exceptions |

### Exception personnalisée avec PRAGMA

```sql
DECLARE
  enfant_sans_parent EXCEPTION;
  PRAGMA EXCEPTION_INIT(enfant_sans_parent, -2291);
BEGIN
  INSERT INTO fils VALUES (...);
EXCEPTION
  WHEN enfant_sans_parent THEN
    -- traitement
  WHEN OTHERS THEN
    -- traitement
END;
```

---

## 11. Procédures Stockées

### Illustration du cours

```
CLIENT                              SERVEUR
EXECUTE P(p1, p2) ──────────────► PROCEDURE P(v1,v2) AS
                                    BEGIN
                                      Ordres SQL et PL/SQL
                                    END P;
                  ◄────────────── Retour résultats
```

### Syntaxe

```sql
CREATE [OR REPLACE] PROCEDURE nom_proc
  [(variable1 type1, ..., variablen typen [OUT])] AS
  -- déclarations
BEGIN
  -- instructions
EXCEPTION
  -- erreurs
END;
/
```

### Exemple du cours

```sql
CREATE PROCEDURE inscription(
  ide VARCHAR2(10), pnom VARCHAR2(30), 
  spec VARCHAR2(30), ann_ins NUMBER
) AS
BEGIN
  DBMS_OUTPUT.PUT_LINE('Début inscription de ' || pnom);
  INSERT INTO etudiant VALUES(ide, pnom, spec);
  INSERT INTO inscrire VALUES(ide, ann_ins);
  DBMS_OUTPUT.PUT_LINE('Transaction réussie');
  COMMIT;
END;
/
```

### Appel

```sql
-- SQL*Plus
EXECUTE inscription('&ide', '&vnom', '&spec', &an_ins);

-- PL/SQL
inscription(ide, nom, spec, an_ins);
```

---

## 12. Fonctions Stockées

### Différence avec procédure

Une fonction **retourne obligatoirement une valeur** avec `RETURN`.

### Syntaxe

```sql
CREATE [OR REPLACE] FUNCTION nom_fonction
  [(paramètre1 type1, ...)]
RETURN type_résultat IS
  -- déclarations
BEGIN
  -- instructions
  RETURN(variable);
END;
/
```

### Exemple du cours

```sql
CREATE OR REPLACE FUNCTION moy_points_marques(
  eqj joueur.ideq%TYPE
) RETURN NUMBER IS
  moyenne_points_marques NUMBER(4,2);
BEGIN
  SELECT AVG(totalpoints) INTO moyenne_points_marques
  FROM joueur WHERE ideq = eqj;
  RETURN(moyenne_points_marques);
END;
/
```

### Utilisation

```sql
-- Dans un SELECT
SELECT moy_points_marques('e1') FROM dual;

-- Dans une condition
SELECT nomjoueur FROM joueur
WHERE totalpoints > moy_points_marques('e1');

-- Dans PL/SQL
IF moy_points_marques(equipe) > 20 THEN ...
```

---

# AIDE-MÉMOIRE EXAMEN

## Sécurité
- **25%** incidents = personnel interne
- **5 principes** : Intégrité, Confidentialité, Disponibilité, Traçabilité, Conformité
- Tablespace par défaut : `SYSTEM` (utiliser `USERS`)
- Profil par défaut : `DEFAULT` (non supprimable)
- `WITH ADMIN OPTION` → privilèges SYSTÈME
- `WITH GRANT OPTION` → privilèges OBJET
- Rôles : CONNECT, RESOURCE, DBA, EXP_FULL_DATABASE, IMP_FULL_DATABASE

## PL/SQL
- Affectation : `:=`
- `ELSIF` (pas ELSEIF)
- `END IF;` (avec espace)
- `FOR i IN 1..10` (deux points)
- `SET SERVEROUT ON` avant DBMS_OUTPUT
- Curseur : DECLARE → OPEN → FETCH → CLOSE
- Attributs : `%FOUND`, `%NOTFOUND`, `%COUNT`, `%ISOPEN`
- `%TYPE` = type d'une colonne
- `%ROWTYPE` = structure d'une ligne
