-- =============================================================================
-- TP1: Rappel SQL - SOLUTION COMPLETE
-- Module: ASGBD - 3ème année ING IA
-- USTHB - Faculté d'Informatique - 2025/2026
-- =============================================================================
-- Objectif: Révision des commandes SQL (DDL, DML, DQL)
-- Prérequis: Connexion avec compte SYSTEM
-- =============================================================================
--
-- RÉFÉRENCES DU COURS:
--   Chapitre 1 - Partie 2: Gestion de l'intégrité (contraintes)
--   Chapitre 2: Métabase Oracle (USER_TABLES, USER_CONSTRAINTS)
--
-- =============================================================================


-- *****************************************************************************
-- SCHÉMA DE LA BASE DE DONNÉES
-- *****************************************************************************
--
-- Agriculteur( agriculteur_id , nom, localisation, taille_exploitation, culture_principale)
-- Produit_Alimentaire( produit_id , nom, catégorie, valeur_nutritionnelle)
-- Production( production_id , #agriculteur_id, #produit_id, quantité_produite, saison)
-- Marché( marche_id , nom, localisation, type_marche)
-- Approvisionnement( #agriculteur_id, #produit_id, #marche_id, date_approvisionnement, quantité_fournie)
--
-- Légende: souligné = clé primaire, # = clé étrangère
--
-- *****************************************************************************


-- *****************************************************************************
-- PARTIE I: LANGAGE DE DÉFINITION DE DONNÉES (DDL)
-- *****************************************************************************


-- =============================================================================
-- QUESTION 1: Connexion à SYSTEM
-- =============================================================================
--
-- RÉFÉRENCE COURS (Chapitre 2, slide 13):
--   "DBA_*: informations sur tous les objets dans la PDB (requires DBA privileges)"
--
-- POURQUOI SYSTEM?
--   SYSTEM est un compte administrateur pré-créé avec tous les privilèges.
--   Nécessaire pour créer des objets, utilisateurs, et accéder aux vues DBA_
--
-- APPROCHE DE RÉSOLUTION:
--   1. Ouvrir SQL*Plus ou SQL Developer
--   2. Se connecter avec les identifiants SYSTEM

-- Option 1: Via SQLPlus en ligne de commande
-- sqlplus SYSTEM/votre_mot_de_passe@ORCL

-- Option 2: Commande CONNECT dans SQLPlus
CONNECT SYSTEM/votre_mot_de_passe@ORCL;

-- VÉRIFICATION:
SELECT USER FROM DUAL;

-- RÉSULTAT ATTENDU:
-- USER
-- ------
-- SYSTEM


-- =============================================================================
-- QUESTION 2: Créer les tables avec contraintes d'intégrité
-- =============================================================================
--
-- RÉFÉRENCE COURS (Chapitre 1.2, slides 5-9):
--   "Les types de contraintes d'intégrité:
--    - Individuelle / Ensembliste
--    - Statique / Dynamique
--    - Intra-relation / Inter-relations"
--
-- RÉFÉRENCE COURS (Chapitre 1.2, slide 6):
--   "NOT NULL: interdit la présence de valeurs nulles dans la colonne"
--
-- RÉFÉRENCE COURS (Chapitre 1.2, slide 7):
--   "PRIMARY KEY: index primaire créé automatiquement"
--
-- RÉFÉRENCE COURS (Chapitre 1.2, slide 9):
--   "FOREIGN KEY: définit une colonne par référence à une autre table"
--
-- APPROCHE DE RÉSOLUTION:
--   1. Identifier les clés primaires (PK) et étrangères (FK) dans le schéma
--   2. ORDRE DE CRÉATION: d'abord les tables parents (indépendantes),
--      ensuite les tables enfants (qui ont des FK)
--
-- ORDRE DE CRÉATION (respect des dépendances FK):
--   1. Agriculteur      (pas de FK - indépendante)
--   2. Produit_Alimentaire (pas de FK - indépendante)
--   3. Marche           (pas de FK - indépendante)
--   4. Production       (FK vers Agriculteur et Produit_Alimentaire)
--   5. Approvisionnement (FK vers Agriculteur, Produit et Marché)

-- Table Agriculteur (table indépendante)
CREATE TABLE Agriculteur (
    agriculteur_id      NUMBER(10)      PRIMARY KEY,
    nom                 VARCHAR2(100)   NOT NULL,
    localisation        VARCHAR2(100),
    taille_exploitation NUMBER(10,2),
    culture_principale  VARCHAR2(100)
);

-- Table Produit_Alimentaire (table indépendante)
CREATE TABLE Produit_Alimentaire (
    produit_id          NUMBER(10)      PRIMARY KEY,
    nom                 VARCHAR2(100)   NOT NULL,
    categorie           VARCHAR2(50),
    valeur_nutritionnelle VARCHAR2(50)
);

-- Table Marché (table indépendante)
CREATE TABLE Marche (
    marche_id       NUMBER(10)      PRIMARY KEY,
    nom             VARCHAR2(100)   NOT NULL,
    localisation    VARCHAR2(100),
    type_marche     VARCHAR2(20)
);

-- Table Production (dépend de Agriculteur et Produit_Alimentaire)
CREATE TABLE Production (
    production_id       NUMBER(10)      PRIMARY KEY,
    agriculteur_id      NUMBER(10)      NOT NULL,
    produit_id          NUMBER(10)      NOT NULL,
    quantite_produite   NUMBER(12,2),
    saison              VARCHAR2(50),
    CONSTRAINT fk_prod_agriculteur 
        FOREIGN KEY (agriculteur_id) REFERENCES Agriculteur(agriculteur_id),
    CONSTRAINT fk_prod_produit 
        FOREIGN KEY (produit_id) REFERENCES Produit_Alimentaire(produit_id)
);

-- Table Approvisionnement (dépend de Agriculteur, Produit et Marché)
CREATE TABLE Approvisionnement (
    agriculteur_id          NUMBER(10),
    produit_id              NUMBER(10),
    marche_id               NUMBER(10),
    date_approvisionnement  DATE,
    quantite_fournie        NUMBER(12,2),
    CONSTRAINT pk_approvisionnement 
        PRIMARY KEY (agriculteur_id, produit_id, marche_id, date_approvisionnement),
    CONSTRAINT fk_appro_agriculteur 
        FOREIGN KEY (agriculteur_id) REFERENCES Agriculteur(agriculteur_id),
    CONSTRAINT fk_appro_produit 
        FOREIGN KEY (produit_id) REFERENCES Produit_Alimentaire(produit_id),
    CONSTRAINT fk_appro_marche 
        FOREIGN KEY (marche_id) REFERENCES Marche(marche_id)
);

-- RÉSULTAT ATTENDU: Tables créées avec succès (pas d'erreur)


-- =============================================================================
-- QUESTION 3: Afficher les tables créées
-- =============================================================================
--
-- RÉFÉRENCE COURS (Chapitre 2, slides 13-14):
--   "USER_*: informations sur les objets appartenant au compte connecté"
--   "La démarche: 1) Identifier la vue, 2) DESC pour voir colonnes, 3) SELECT"
--
-- RÉFÉRENCE COURS (Chapitre 2, slide 15):
--   "USER_TABLES: description des tables relationnelles de l'utilisateur (synonyme TABS)"
--
-- APPROCHE DE RÉSOLUTION:
--   Interroger la vue USER_TABLES du dictionnaire de données

SELECT table_name 
FROM user_tables
ORDER BY table_name;

-- RÉSULTAT ATTENDU:
-- TABLE_NAME
-- ----------------------
-- AGRICULTEUR
-- APPROVISIONNEMENT
-- MARCHE
-- PRODUIT_ALIMENTAIRE
-- PRODUCTION


-- =============================================================================
-- QUESTION 4: Ajouter l'attribut NumTelephone
-- =============================================================================
--
-- RÉFÉRENCE COURS (Chapitre 1.2, slide 4):
--   "ALTER TABLE <nom_table> ADD CONSTRAINT..."
--   "On doit pouvoir définir de nouvelles contraintes de manière dynamique"
--
-- SYNTAXE DDL:
--   ALTER TABLE nom_table ADD nom_colonne type_donnees;
--
-- APPROCHE DE RÉSOLUTION:
--   1. Déterminer le type: chaîne de caractères = VARCHAR2
--   2. Taille: numéro de téléphone ~15 caractères (+213 xxx xxx xxx)
--   3. Utiliser ALTER TABLE ADD

ALTER TABLE Agriculteur
ADD NumTelephone VARCHAR2(20);

-- VÉRIFICATION (voir la structure de la table):
DESC Agriculteur;

-- RÉSULTAT ATTENDU:
-- Name                     Type
-- ----------------------   -------------
-- AGRICULTEUR_ID           NUMBER(10)
-- NOM                      VARCHAR2(100)
-- LOCALISATION             VARCHAR2(100)
-- TAILLE_EXPLOITATION      NUMBER(10,2)
-- CULTURE_PRINCIPALE       VARCHAR2(100)
-- NUMTELEPHONE             VARCHAR2(20)   ← Nouvelle colonne


-- =============================================================================
-- QUESTION 5: Ajouter NOT NULL pour Nom et NumTelephone
-- =============================================================================
--
-- RÉFÉRENCE COURS (Chapitre 1.2, slide 6):
--   "NOT NULL: interdit la présence de valeurs nulles dans la colonne"
--   "CREATE TABLE employe (..., Nomemp varchar(10) NOT NULL, ...)"
--
-- APPROCHE DE RÉSOLUTION:
--   1. Nom a déjà NOT NULL (défini à la création)
--   2. Pour NumTelephone, utiliser ALTER TABLE MODIFY
--
-- ⚠️ ATTENTION: Si la colonne contient déjà des NULL, la commande échouera!
--   Solution: D'abord UPDATE les NULL, ensuite ADD NOT NULL

-- Si nécessaire, remplir les valeurs NULL d'abord:
-- UPDATE Agriculteur SET NumTelephone = 'Non renseigné' WHERE NumTelephone IS NULL;

ALTER TABLE Agriculteur
MODIFY NumTelephone NOT NULL;

-- VÉRIFICATION:
SELECT constraint_name, constraint_type, search_condition
FROM user_constraints
WHERE table_name = 'AGRICULTEUR';

-- RÉSULTAT ATTENDU:
-- CONSTRAINT_NAME          TYPE  SEARCH_CONDITION
-- ----------------------   ----  ----------------
-- SYS_C00123456           C     "NUMTELEPHONE" IS NOT NULL
-- SYS_C00123457           C     "NOM" IS NOT NULL


-- =============================================================================
-- QUESTION 6: Modifier la longueur de NumTelephone
-- =============================================================================
--
-- SYNTAXE:
--   ALTER TABLE nom_table MODIFY nom_colonne nouveau_type;
--
-- RÈGLES IMPORTANTES:
--   - AGRANDIR: Toujours possible (pas de perte de données)
--   - RÉDUIRE: Possible SEULEMENT si toutes les valeurs existantes <= nouvelle taille
--
-- APPROCHE DE RÉSOLUTION:
--   Utiliser ALTER TABLE MODIFY avec la nouvelle taille

-- Agrandir (de 20 à 30 caractères) - toujours possible:
ALTER TABLE Agriculteur
MODIFY NumTelephone VARCHAR2(30);

-- VÉRIFICATION:
DESC Agriculteur;

-- Réduire (de 30 à 15 caractères) - attention aux données existantes!
-- Vérifier d'abord la longueur max des valeurs:
SELECT MAX(LENGTH(NumTelephone)) FROM Agriculteur;
-- Si résultat <= 15, on peut réduire:
ALTER TABLE Agriculteur
MODIFY NumTelephone VARCHAR2(15);

-- RÉSULTAT ATTENDU: Table modifiée avec succès


-- =============================================================================
-- QUESTION 7: Renommer la colonne NumTelephone en Tel
-- =============================================================================
--
-- SYNTAXE (Oracle 9i+):
--   ALTER TABLE nom_table RENAME COLUMN ancien_nom TO nouveau_nom;
--
-- APPROCHE DE RÉSOLUTION:
--   Une seule commande pour renommer (ne perd pas les données)

ALTER TABLE Agriculteur
RENAME COLUMN NumTelephone TO Tel;

-- VÉRIFICATION:
DESC Agriculteur;

-- RÉSULTAT ATTENDU:
-- Name                     Type
-- ----------------------   -------------
-- ...
-- TEL                      VARCHAR2(15)   ← Renommée de NumTelephone


-- =============================================================================
-- QUESTION 8: Supprimer la colonne Tel
-- =============================================================================
--
-- SYNTAXE:
--   ALTER TABLE nom_table DROP COLUMN nom_colonne;
--
-- ⚠️ ATTENTION: Opération IRRÉVERSIBLE - supprime la colonne ET ses données!
--
-- APPROCHE DE RÉSOLUTION:
--   S'assurer de vouloir supprimer, puis ALTER TABLE DROP COLUMN

ALTER TABLE Agriculteur
DROP COLUMN Tel;

-- VÉRIFICATION:
DESC Agriculteur;

-- RÉSULTAT ATTENDU:
-- Name                     Type
-- ----------------------   -------------
-- AGRICULTEUR_ID           NUMBER(10)
-- NOM                      VARCHAR2(100)
-- LOCALISATION             VARCHAR2(100)
-- TAILLE_EXPLOITATION      NUMBER(10,2)
-- CULTURE_PRINCIPALE       VARCHAR2(100)
-- (Tel n'apparaît plus)


-- =============================================================================
-- QUESTION 9: Valeur par défaut 0 pour quantite_produite
-- =============================================================================
--
-- RÉFÉRENCE COURS:
--   Une valeur par défaut est assignée automatiquement si non spécifiée à l'INSERT
--
-- SYNTAXE:
--   ALTER TABLE nom_table MODIFY nom_colonne DEFAULT valeur;
--
-- APPROCHE DE RÉSOLUTION:
--   Modifier la colonne quantite_produite pour avoir DEFAULT 0

ALTER TABLE Production
MODIFY quantite_produite DEFAULT 0;

-- VÉRIFICATION - Insérer sans spécifier quantite_produite:
-- INSERT INTO Production (production_id, agriculteur_id, produit_id, saison)
-- VALUES (99, 1, 1, 'test');
-- SELECT quantite_produite FROM Production WHERE production_id = 99;

-- RÉSULTAT ATTENDU: quantite_produite = 0 (valeur par défaut appliquée)


-- =============================================================================
-- QUESTION 10: Ajouter contrainte CHECK pour type_marche
-- =============================================================================
--
-- RÉFÉRENCE COURS (Chapitre 1.2, slide 5):
--   "Liste de valeurs: Couleur dans [bleu, rouge, vert]
--    couleur IN ('bleu', 'rouge', 'vert')"
--
-- RÉFÉRENCE COURS (Chapitre 1.2, slides 3-4):
--   "ALTER TABLE <nom_table> ADD CONSTRAINT nom_contrainte type_contrainte"
--
-- APPROCHE DE RÉSOLUTION:
--   1. Utiliser ALTER TABLE ADD CONSTRAINT
--   2. Type de contrainte: CHECK avec IN ('valeur1', 'valeur2')

ALTER TABLE Marche
ADD CONSTRAINT ck_type_marche 
CHECK (type_marche IN ('gros', 'détail'));

-- VÉRIFICATION:
SELECT constraint_name, constraint_type, search_condition
FROM user_constraints
WHERE table_name = 'MARCHE' AND constraint_type = 'C';

-- RÉSULTAT ATTENDU:
-- CONSTRAINT_NAME   TYPE  SEARCH_CONDITION
-- ----------------  ----  --------------------------------
-- CK_TYPE_MARCHE    C     type_marche IN ('gros', 'détail')
--
-- TEST - Cette insertion doit échouer:
-- INSERT INTO Marche VALUES (99, 'Test', 'Test', 'grossiste');
-- ERREUR: ORA-02290: check constraint (CK_TYPE_MARCHE) violated


-- *****************************************************************************
-- PARTIE II: LANGAGE DE MANIPULATION DE DONNÉES (DML)
-- *****************************************************************************


-- =============================================================================
-- QUESTION 11: Remplir toutes les tables
-- =============================================================================
--
-- RÉFÉRENCE COURS (Chapitre 1.2, slide 9):
--   "FOREIGN KEY: définit une colonne par référence à une autre table"
--
-- APPROCHE DE RÉSOLUTION:
--   1. ORDRE D'INSERTION: Parents d'abord, enfants ensuite (respect des FK)
--   2. Vérifier les contraintes CHECK (type_marche)
--   3. Convertir les dates avec TO_DATE
--
-- PROBLÈMES IDENTIFIÉS DANS LES DONNÉES DU TP:
--   1. Typo 'grosss' (3 s) → viole CHECK → corriger en 'gros'
--   2. agriculteur_id=7 n'existe pas → viole FK → ignorer cette ligne
--   3. production_id=5 dupliqué → viole PK → changer en 6

-- Table Agriculteur (5 lignes)
INSERT INTO Agriculteur VALUES (1, 'Benali Ahmed', 'Blida', 5, 'tomates');
INSERT INTO Agriculteur VALUES (2, 'Khelifi Samira', 'Sétif', 12, 'blé dur');
INSERT INTO Agriculteur VALUES (3, 'Touati Mourad', 'Mostaganem', 8, 'pommes de terre');
INSERT INTO Agriculteur VALUES (4, 'Zerrouki Fatma', 'Tizi Ouzou', 3, 'olives');
INSERT INTO Agriculteur VALUES (5, 'Bensaid Rachid', 'Biskra', 15, 'dattes');

-- RÉSULTAT ATTENDU:
-- 5 lignes créées.

-- Table Produit_Alimentaire (5 lignes)
INSERT INTO Produit_Alimentaire VALUES (1, 'Blé dur', 'céréale', '340 kcal/100g');
INSERT INTO Produit_Alimentaire VALUES (2, 'Tomates', 'légume', '18 kcal/100g');
INSERT INTO Produit_Alimentaire VALUES (3, 'Pommes de terre', 'tubercule', '77 kcal/100g');
INSERT INTO Produit_Alimentaire VALUES (4, 'Olives', 'fruit', '115 kcal/100g');
INSERT INTO Produit_Alimentaire VALUES (5, 'Dattes Deglet Nour', 'fruit', '277 kcal/100g');

-- RÉSULTAT ATTENDU:
-- 5 lignes créées.

-- Table Marché (5 lignes)
-- ⚠️ PROBLÈME 1: Donnée originale 'grosss' corrigée en 'gros'
INSERT INTO Marche VALUES (1, 'Marché de gros de Boufarik', 'Blida', 'gros');
INSERT INTO Marche VALUES (2, 'Souk El Fellah', 'Alger', 'détail');
INSERT INTO Marche VALUES (3, 'Marché de gros de Sétif', 'Sétif', 'gros');       -- Corrigé: 'grosss' → 'gros'
INSERT INTO Marche VALUES (4, 'Marché de détail de Mostaganem', 'Mostaganem', 'détail');
INSERT INTO Marche VALUES (5, 'Marché de gros des dattes de Tolga', 'Biskra', 'gros');

-- RÉSULTAT ATTENDU:
-- 5 lignes créées.
-- NOTE: Si vous utilisez 'grosss', vous obtiendrez:
--   ORA-02290: check constraint (CK_TYPE_MARCHE) violated

-- Table Production (6 lignes)
-- ⚠️ PROBLÈME 2: agriculteur_id=7 n'existe pas → ignorer cette ligne
-- ⚠️ PROBLÈME 3: production_id=5 dupliqué → changer en 6
INSERT INTO Production VALUES (1, 2, 1, 30000, 'été 2024');
INSERT INTO Production VALUES (2, 1, 2, 15000, 'printemps 2024');
INSERT INTO Production VALUES (3, 3, 3, 20000, 'hiver 2024');
INSERT INTO Production VALUES (4, 4, 4, 8000, 'automne 2024');
INSERT INTO Production VALUES (5, 5, 5, 25000, 'automne 2024');
INSERT INTO Production VALUES (6, 4, 5, 25000, 'automne 2024');  -- Changé: id 5→6 (évite doublon PK)
-- Ligne ignorée: (7, 7, 5, 25000, 'automne 2025') → FK violation (agriculteur_id=7 inexistant)

-- RÉSULTAT ATTENDU:
-- 6 lignes créées.
-- NOTE: Si vous insérez agriculteur_id=7, vous obtiendrez:
--   ORA-02291: integrity constraint (FK_PROD_AGRICULTEUR) violated - parent key not found

-- Table Approvisionnement (6 lignes)
INSERT INTO Approvisionnement VALUES (2, 1, 3, TO_DATE('07-01-2024', 'DD-MM-YYYY'), 10000);
INSERT INTO Approvisionnement VALUES (1, 2, 1, TO_DATE('15-05-2024', 'DD-MM-YYYY'), 8000);
INSERT INTO Approvisionnement VALUES (3, 3, 4, TO_DATE('20-01-2024', 'DD-MM-YYYY'), 12000);
INSERT INTO Approvisionnement VALUES (4, 4, 2, TO_DATE('05-12-2024', 'DD-MM-YYYY'), 5000);
INSERT INTO Approvisionnement VALUES (5, 5, 5, TO_DATE('11-03-2024', 'DD-MM-YYYY'), 15000);
INSERT INTO Approvisionnement VALUES (5, 5, 5, TO_DATE('30-12-2025', 'DD-MM-YYYY'), 15000);  -- Date future

COMMIT;

-- RÉSULTAT ATTENDU:
-- 6 lignes créées.
-- Validation effectuée.

-- =============================================================================
-- RÉSUMÉ DES PROBLÈMES RENCONTRÉS (Q11):
-- =============================================================================
-- | Problème | Cause | Solution |
-- |----------|-------|----------|
-- | 'grosss' | Typo viole CHECK | Corriger en 'gros' |
-- | agriculteur_id=7 | FK violation (inexistant) | Ignorer la ligne |
-- | production_id=5 dupliqué | PK violation | Changer en id=6 |
-- | Dates en texte | Format incorrect | Utiliser TO_DATE('JJ-MM-AAAA','DD-MM-YYYY') |
-- =============================================================================


-- =============================================================================
-- QUESTION 12: Modifier le nom du marché
-- =============================================================================
--
-- SYNTAXE:
--   UPDATE table SET colonne = nouvelle_valeur WHERE condition;
--
-- ⚠️ ATTENTION: Sans WHERE, TOUTES les lignes seraient modifiées!
--
-- APPROCHE DE RÉSOLUTION:
--   1. Identifier la ligne avec WHERE sur le nom actuel
--   2. SET le nouveau nom

UPDATE Marche
SET nom = 'Marché Ali Ramli'
WHERE nom = 'Souk El Fellah';

COMMIT;

-- VÉRIFICATION:
SELECT * FROM Marche WHERE marche_id = 2;

-- RÉSULTAT ATTENDU:
-- MARCHE_ID  NOM                LOCALISATION  TYPE_MARCHE
-- ---------  -----------------  -----------   -----------
-- 2          Marché Ali Ramli   Alger         détail


-- =============================================================================
-- QUESTION 13: Supprimer les approvisionnements futurs
-- =============================================================================
--
-- SYNTAXE:
--   DELETE FROM table WHERE condition;
--
-- RÉFÉRENCE ORACLE:
--   SYSDATE = fonction qui retourne la date/heure actuelle du système
--
-- APPROCHE DE RÉSOLUTION:
--   Comparer date_approvisionnement avec SYSDATE

DELETE FROM Approvisionnement
WHERE date_approvisionnement > SYSDATE;

COMMIT;

-- VÉRIFICATION:
SELECT * FROM Approvisionnement;

-- RÉSULTAT ATTENDU:
-- 1 ligne supprimée: (5, 5, 5, '30-12-2025', 15000) car 30-12-2025 > aujourd'hui
-- 5 lignes restantes dans la table


-- =============================================================================
-- QUESTION 14: Autoriser plus de valeurs pour type_marche
-- =============================================================================
--
-- RÉFÉRENCE COURS (Chapitre 1.2, slide 4):
--   "ALTER TABLE <nom_table> DROP CONSTRAINT nom_contrainte"
--   "ALTER TABLE <nom_table> ADD CONSTRAINT nom_contrainte..."
--
-- APPROCHE DE RÉSOLUTION:
--   On ne peut PAS modifier une contrainte CHECK directement.
--   Il faut: 1) Supprimer l'ancienne, 2) Créer la nouvelle

-- Étape 1: Supprimer l'ancienne contrainte
ALTER TABLE Marche
DROP CONSTRAINT ck_type_marche;

-- Étape 2: Créer la nouvelle contrainte avec plus de valeurs
ALTER TABLE Marche
ADD CONSTRAINT ck_type_marche 
CHECK (type_marche IN ('gros', 'détail', 'local', 'régional', 'national'));

-- VÉRIFICATION:
SELECT constraint_name, search_condition
FROM user_constraints
WHERE table_name = 'MARCHE' AND constraint_type = 'C';

-- RÉSULTAT ATTENDU:
-- CONSTRAINT_NAME   SEARCH_CONDITION
-- ----------------  ------------------------------------------------
-- CK_TYPE_MARCHE    type_marche IN ('gros','détail','local','régional','national')


-- *****************************************************************************
-- PARTIE IV: LANGAGE D'INTERROGATION DE DONNÉES (DQL)
-- *****************************************************************************


-- =============================================================================
-- QUESTION 15: Agriculteurs de Mostaganem
-- =============================================================================
--
-- APPROCHE DE RÉSOLUTION:
--   Requête SELECT simple avec filtre WHERE sur localisation
--
-- TYPE DE REQUÊTE: Sélection simple (une seule table)

SELECT * 
FROM Agriculteur
WHERE localisation = 'Mostaganem';

-- Ou pour afficher seulement les noms:
SELECT nom 
FROM Agriculteur
WHERE localisation = 'Mostaganem';

-- RÉSULTAT ATTENDU:
-- NOM
-- ---------------
-- Touati Mourad


-- =============================================================================
-- QUESTION 16: Agriculteurs ayant produit du blé
-- =============================================================================
--
-- APPROCHE DE RÉSOLUTION:
--   Jointure entre 3 tables: Agriculteur ←→ Production ←→ Produit_Alimentaire
--   1. Relier Agriculteur à Production par agriculteur_id
--   2. Relier Production à Produit par produit_id
--   3. Filtrer sur le nom du produit contenant 'blé' ou 'Blé'
--
-- TYPE DE REQUÊTE: Jointure multi-tables avec filtre

SELECT DISTINCT a.nom
FROM Agriculteur a
JOIN Production p ON a.agriculteur_id = p.agriculteur_id
JOIN Produit_Alimentaire pa ON p.produit_id = pa.produit_id
WHERE pa.nom LIKE '%Blé%' OR pa.nom LIKE '%blé%' OR pa.nom LIKE '%Ble%';

-- RÉSULTAT ATTENDU:
-- NOM
-- ----------------
-- Khelifi Samira

-- EXPLICATION:
--   Khelifi Samira (agriculteur_id=2) a produit le Blé dur (produit_id=1)
--   Voir Production ligne: (1, 2, 1, 30000, 'été 2024')


-- =============================================================================
-- QUESTION 17: Agriculteurs (tomates + Boufarik)
-- =============================================================================
--
-- APPROCHE DE RÉSOLUTION:
--   Double condition:
--   1. A produit des tomates (via Production + Produit_Alimentaire)
--   2. A approvisionné Boufarik (via Approvisionnement + Marché)
--   Les deux conditions doivent être vraies (AND)
--
-- TYPE DE REQUÊTE: Jointure 5 tables avec conditions multiples

SELECT DISTINCT a.nom
FROM Agriculteur a
JOIN Production p ON a.agriculteur_id = p.agriculteur_id
JOIN Produit_Alimentaire pa ON p.produit_id = pa.produit_id
JOIN Approvisionnement ap ON a.agriculteur_id = ap.agriculteur_id
JOIN Marche m ON ap.marche_id = m.marche_id
WHERE UPPER(pa.nom) LIKE '%TOMATE%'
  AND UPPER(m.nom) LIKE '%BOUFARIK%';

-- RÉSULTAT ATTENDU:
-- NOM
-- -------------
-- Benali Ahmed

-- EXPLICATION:
--   Benali Ahmed (id=1) a produit Tomates (prod_id=2) - voir Production(2,1,2,...)
--   Benali Ahmed (id=1) a approvisionné Boufarik (marche_id=1) - voir Approvisionnement(1,2,1,...)


-- =============================================================================
-- QUESTION 18: Quantité totale des céréales
-- =============================================================================
--
-- APPROCHE DE RÉSOLUTION:
--   Agrégation SUM sur quantite_produite
--   Filtrer sur catégorie = 'céréale'
--   Jointure Production + Produit_Alimentaire pour accéder à la catégorie
--
-- TYPE DE REQUÊTE: Agrégation avec filtre

SELECT SUM(p.quantite_produite) AS "Quantité totale céréales"
FROM Production p
JOIN Produit_Alimentaire pa ON p.produit_id = pa.produit_id
WHERE pa.categorie = 'céréale';

-- RÉSULTAT ATTENDU:
-- Quantité totale céréales
-- ------------------------
-- 30000

-- EXPLICATION:
--   Seul le Blé dur (produit_id=1) est de catégorie 'céréale'
--   Production: (1, 2, 1, 30000, 'été 2024') → 30000 kg


-- =============================================================================
-- QUESTION 19: Quantité produite par catégorie
-- =============================================================================
--
-- APPROCHE DE RÉSOLUTION:
--   Utiliser GROUP BY pour regrouper par catégorie
--   SUM pour totaliser les quantités de chaque groupe
--   ORDER BY pour trier par quantité décroissante
--
-- TYPE DE REQUÊTE: Agrégation avec GROUP BY

SELECT pa.categorie, SUM(p.quantite_produite) AS total
FROM Production p
JOIN Produit_Alimentaire pa ON p.produit_id = pa.produit_id
GROUP BY pa.categorie
ORDER BY total DESC;

-- RÉSULTAT ATTENDU:
-- CATEGORIE     TOTAL
-- ----------    ------
-- fruit         58000
-- céréale       30000
-- tubercule     20000
-- légume        15000

-- EXPLICATION:
--   fruit: Olives 8000 + Dattes 25000 + Dattes 25000 = 58000
--   céréale: Blé dur 30000 = 30000
--   tubercule: Pommes de terre 20000 = 20000
--   légume: Tomates 15000 = 15000


-- =============================================================================
-- QUESTION 20: Catégorie avec production maximale
-- =============================================================================
--
-- APPROCHE DE RÉSOLUTION:
--   1. Calculer le total par catégorie (comme Q19)
--   2. Trouver le maximum
--   3. Retourner la catégorie ayant ce maximum
--
-- TYPE DE REQUÊTE: Sous-requête avec HAVING

SELECT pa.categorie, SUM(p.quantite_produite) AS total
FROM Production p
JOIN Produit_Alimentaire pa ON p.produit_id = pa.produit_id
GROUP BY pa.categorie
HAVING SUM(p.quantite_produite) = (
    -- Sous-requête: trouver la valeur max
    SELECT MAX(sous_total) FROM (
        SELECT SUM(p2.quantite_produite) AS sous_total
        FROM Production p2
        JOIN Produit_Alimentaire pa2 ON p2.produit_id = pa2.produit_id
        GROUP BY pa2.categorie
    )
);

-- Alternative avec ROWNUM (top 1 seulement):
SELECT * FROM (
    SELECT pa.categorie, SUM(p.quantite_produite) AS total
    FROM Production p
    JOIN Produit_Alimentaire pa ON p.produit_id = pa.produit_id
    GROUP BY pa.categorie
    ORDER BY total DESC
)
WHERE ROWNUM = 1;

-- RÉSULTAT ATTENDU:
-- CATEGORIE     TOTAL
-- ----------    ------
-- fruit         58000


-- =============================================================================
-- RÉSUMÉ DES TYPES DE REQUÊTES (POUR L'EXAMEN)
-- =============================================================================
-- 
-- +-------------------+------------------------------------------+----------+
-- | Type              | Syntaxe                                   | Question |
-- +-------------------+------------------------------------------+----------+
-- | SELECT simple     | SELECT ... FROM table WHERE ...          | Q15      |
-- +-------------------+------------------------------------------+----------+
-- | JOIN              | SELECT ... FROM t1 JOIN t2 ON ...        | Q16, Q17 |
-- +-------------------+------------------------------------------+----------+
-- | Agrégation        | SELECT SUM/COUNT/AVG... FROM ... WHERE   | Q18      |
-- +-------------------+------------------------------------------+----------+
-- | GROUP BY          | SELECT ... FROM ... GROUP BY colonne     | Q19      |
-- +-------------------+------------------------------------------+----------+
-- | Sous-requête      | SELECT ... HAVING col = (SELECT ...)     | Q20      |
-- +-------------------+------------------------------------------+----------+
--
-- =============================================================================
-- RÉSUMÉ DES COMMANDES DDL (POUR L'EXAMEN)
-- =============================================================================
--
-- +------------------------+------------------------------------------------+
-- | Action                 | Commande SQL                                   |
-- +------------------------+------------------------------------------------+
-- | Créer table            | CREATE TABLE nom (...colonnes...)              |
-- | Ajouter colonne        | ALTER TABLE t ADD colonne TYPE                 |
-- | Modifier colonne       | ALTER TABLE t MODIFY colonne nouveau_type      |
-- | Renommer colonne       | ALTER TABLE t RENAME COLUMN old TO new         |
-- | Supprimer colonne      | ALTER TABLE t DROP COLUMN colonne              |
-- | Valeur par défaut      | ALTER TABLE t MODIFY col DEFAULT valeur        |
-- | Ajouter contrainte     | ALTER TABLE t ADD CONSTRAINT nom CHECK(...)    |
-- | Supprimer contrainte   | ALTER TABLE t DROP CONSTRAINT nom              |
-- +------------------------+------------------------------------------------+
--
-- =============================================================================
-- RÉFÉRENCES COURS - CONTRAINTES D'INTÉGRITÉ (Chapitre 1.2)
-- =============================================================================
--
-- Types de contraintes:
--   - NOT NULL: interdit les valeurs nulles (slide 6)
--   - UNIQUE: unicité des valeurs (slide 6)
--   - PRIMARY KEY: clé primaire, crée un index automatique (slide 7)
--   - FOREIGN KEY: référence vers une autre table (slide 9)
--   - CHECK: condition sur les valeurs (slide 5)
--   - DEFAULT: valeur par défaut si non spécifiée
--
-- Modification de contraintes (slide 4):
--   - ADD CONSTRAINT: ajouter une contrainte
--   - DROP CONSTRAINT: supprimer une contrainte
--
-- =============================================================================
-- FIN DU TP1 - SOLUTION COMPLETE
-- =============================================================================
