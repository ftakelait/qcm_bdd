# QCM - Chapitre 3 Partie 2 : Sécurité et Contrôle d'Accès

---

### Question 1
Quels sont les 5 principes fondamentaux de la sécurité de l'information ?

- A) Rapidité, Efficacité, Économie, Flexibilité, Stabilité
- B) Intégrité, Confidentialité, Disponibilité, Traçabilité, Conformité
- C) Création, Lecture, Modification, Suppression, Sauvegarde
- D) Connexion, Déconnexion, Authentification, Autorisation, Audit

---

### Question 2
Selon les statistiques, quel pourcentage des incidents de sécurité sont le fait de personnels internes ?

- A) 10%
- B) 25%
- C) 50%
- D) 75%

---

### Question 3
La confidentialité consiste à :

- A) Permettre l'accès à tous
- B) Empêcher la consultation de données sensibles par des personnes non autorisées
- C) Supprimer les données anciennes
- D) Copier les données

---

### Question 4
L'intégrité consiste à :

- A) Dupliquer les données
- B) Prévenir la modification des données par des personnes non autorisées
- C) Supprimer les utilisateurs
- D) Créer des sauvegardes

---

### Question 5
La traçabilité permet de :

- A) Supprimer les logs
- B) Garder la trace des actions effectuées sur les systèmes à des fins de prévention et d'audit
- C) Masquer les activités
- D) Ignorer les incidents

---

### Question 6
La disponibilité signifie que :

- A) Les données sont publiques
- B) Les utilisateurs ayant le droit de faire certaines actions doivent pouvoir accéder aux données correspondantes
- C) Tout le monde peut modifier les données
- D) Les données sont supprimées régulièrement

---

### Question 7
Pour appliquer les principes de sécurité dans un SGBD, on utilise :

- A) La sauvegarde uniquement
- B) L'authentification et l'autorisation
- C) La suppression des utilisateurs
- D) Le chiffrement uniquement

---

### Question 8
Lors de l'authentification Oracle, quelles vérifications sont effectuées ?

- A) Uniquement le nom d'utilisateur
- B) Cryptage du mot de passe, verrouillage des comptes, expiration du mot de passe, vérification de la complexité
- C) Uniquement l'adresse IP
- D) Aucune vérification

---

### Question 9
À la création d'un nouvel utilisateur Oracle, on définit :

- A) Uniquement le nom
- B) Un espace de stockage par défaut, un espace temporaire, des quotas et un profil
- C) Uniquement le mot de passe
- D) Uniquement les privilèges

---

### Question 10
Le DBA (DataBase Administrator) est responsable de :

- A) Uniquement la création des tables
- B) L'installation, la gestion des espaces, des utilisateurs, l'optimisation, les sauvegardes
- C) Uniquement la lecture des données
- D) Uniquement les requêtes SELECT

---

### Question 11
Quelle est la syntaxe complète pour créer un utilisateur Oracle ?

- A) CREATE USER utilisateur;
- B) CREATE USER utilisateur IDENTIFIED BY motdePasse [DEFAULT TABLESPACE ...] [TEMPORARY TABLESPACE ...] [QUOTA ...] [PROFILE ...];
- C) NEW USER utilisateur;
- D) ADD USER utilisateur;

---

### Question 12
L'option IDENTIFIED BY dans CREATE USER permet de :

- A) Supprimer l'utilisateur
- B) Affecter un mot de passe à l'utilisateur
- C) Créer une table
- D) Définir un rôle

---

### Question 13
L'option IDENTIFIED EXTERNALLY permet de :

- A) Créer un mot de passe fort
- B) Utiliser l'authentification du système d'exploitation pour s'identifier à Oracle
- C) Supprimer l'authentification
- D) Créer un utilisateur anonyme

---

### Question 14
L'option DEFAULT TABLESPACE associe à l'utilisateur :

- A) Un mot de passe
- B) Un espace disque de travail pour ses objets
- C) Un rôle
- D) Une contrainte

---

### Question 15
L'option TEMPORARY TABLESPACE définit :

- A) Le mot de passe temporaire
- B) Un espace disque temporaire pour certaines opérations
- C) Une table temporaire
- D) Un utilisateur temporaire

---

### Question 16
L'option QUOTA permet de :

- A) Supprimer l'utilisateur
- B) Limiter ou ne pas limiter l'espace alloué à l'utilisateur
- C) Créer des tables
- D) Modifier les privilèges

---

### Question 17
L'option PASSWORD EXPIRE oblige l'utilisateur à :

- A) Ne pas changer son mot de passe
- B) Changer son mot de passe à la première connexion
- C) Supprimer son compte
- D) Créer un nouveau compte

---

### Question 18
L'option ACCOUNT LOCK permet de :

- A) Créer un compte
- B) Verrouiller l'accès à la base pour cet utilisateur
- C) Supprimer le verrouillage
- D) Créer un mot de passe

---

### Question 19
Par défaut, en l'absence de clause sur les espaces disque, quel tablespace est associé à l'utilisateur ?

- A) USERS
- B) SYSTEM
- C) TEMP
- D) DATA

---

### Question 20
En l'absence de profil spécifié, quel profil est affecté par défaut ?

- A) ADMIN
- B) DEFAULT
- C) USER
- D) STANDARD

---

### Question 21
Pour modifier le mot de passe d'un utilisateur, on utilise :

- A) CHANGE USER
- B) ALTER USER nom_user IDENTIFIED BY nouveau_mot_pass
- C) UPDATE USER
- D) MODIFY USER

---

### Question 22
L'option DEFAULT ROLE dans ALTER USER permet de :

- A) Supprimer tous les rôles
- B) Affecter des rôles à l'utilisateur
- C) Créer un nouveau rôle
- D) Modifier un rôle existant

---

### Question 23
Pour supprimer un utilisateur Oracle, on utilise :

- A) DELETE USER
- B) DROP USER utilisateur [CASCADE]
- C) REMOVE USER
- D) DESTROY USER

---

### Question 24
L'option CASCADE dans DROP USER :

- A) Empêche la suppression
- B) Force la suppression et détruit tous les objets du schéma de l'utilisateur
- C) Crée une sauvegarde
- D) Archive l'utilisateur

---

### Question 25
Lors d'un DROP USER CASCADE, les contraintes d'intégrité référençant des tables du schéma supprimé :

- A) Sont conservées
- B) Sont aussi supprimées
- C) Génèrent une erreur
- D) Sont ignorées

---

### Question 26
Un profil regroupe :

- A) Des tables
- B) Des caractéristiques système (ressources) qu'il est possible d'affecter à des utilisateurs
- C) Des index
- D) Des vues

---

### Question 27
Pour créer un profil, on doit avoir le privilège :

- A) CREATE USER
- B) CREATE PROFILE
- C) CREATE TABLE
- D) CREATE INDEX

---

### Question 28
Le paramètre SESSIONS_PER_USER dans un profil limite :

- A) Le nombre de tables
- B) Le nombre de sessions concurrentes autorisées
- C) Le nombre de colonnes
- D) Le nombre d'index

---

### Question 29
Le paramètre CPU_PER_SESSION dans un profil définit :

- A) Le nombre de processeurs
- B) Le temps CPU maximal pour une session en centièmes de secondes
- C) La vitesse du processeur
- D) Le nombre de requêtes

---

### Question 30
Le paramètre CONNECT_TIME limite :

- A) Le nombre de connexions
- B) Le temps total autorisé pour une session en minutes
- C) La bande passante
- D) Le nombre d'utilisateurs

---

### Question 31
Le paramètre IDLE_TIME définit :

- A) Le temps de calcul
- B) Le temps d'inactivité autorisé en minutes au sein d'une même session
- C) Le temps de connexion
- D) Le temps de requête

---

### Question 32
Le paramètre FAILED_LOGIN_ATTEMPTS contrôle :

- A) Le nombre de tables
- B) Le nombre de tentatives de connexion avant de bloquer l'utilisateur
- C) Le nombre d'index
- D) Le nombre de requêtes

---

### Question 33
Le paramètre PASSWORD_LIFE_TIME définit :

- A) La complexité du mot de passe
- B) Le nombre de jours de validité du mot de passe
- C) La longueur minimale
- D) Les caractères interdits

---

### Question 34
Le paramètre PASSWORD_LOCK_TIME indique :

- A) La durée du mot de passe
- B) Le nombre de jours d'interdiction d'accès après que le nombre de tentatives de connexion a été atteint
- C) La fréquence de changement
- D) La complexité requise

---

### Question 35
Le paramètre PASSWORD_GRACE_TIME définit :

- A) La longueur du mot de passe
- B) Le nombre de jours de la période de grâce qui prolonge l'utilisation du mot de passe avant son changement
- C) Le nombre de caractères spéciaux
- D) Le temps de réponse

---

### Question 36
Pour affecter un profil à un utilisateur, on utilise :

- A) CREATE PROFILE
- B) ALTER USER nom_user PROFILE nom_profil
- C) ADD PROFILE
- D) SET PROFILE

---

### Question 37
Pour modifier un profil, on doit avoir le privilège :

- A) CREATE PROFILE
- B) ALTER PROFILE
- C) CREATE USER
- D) DROP PROFILE

---

### Question 38
Le profil DEFAULT :

- A) Peut être supprimé
- B) Ne peut pas être supprimé
- C) N'existe pas
- D) Est optionnel

---

### Question 39
L'option CASCADE dans DROP PROFILE :

- A) Empêche la suppression
- B) Permet de supprimer le profil même si des utilisateurs en sont pourvus, et affecte le profil DEFAULT à ces derniers
- C) Crée une copie
- D) Archive le profil

---

### Question 40
Quelle est la différence entre un privilège système et un privilège objet ?

- A) Il n'y a pas de différence
- B) Le privilège système est un droit d'exécuter une instruction SQL, le privilège objet est un droit d'accéder à un objet d'un autre schéma
- C) Le privilège objet est plus important
- D) Le privilège système est moins sécurisé

---

### Question 41
Quels sont des exemples de privilèges système ?

- A) SELECT, INSERT, UPDATE
- B) CREATE TABLE, CREATE SESSION, ALTER USER
- C) DELETE, TRUNCATE
- D) READ, WRITE

---

### Question 42
Quels sont des exemples de privilèges objet ?

- A) CREATE TABLE, DROP TABLE
- B) SELECT, INSERT, UPDATE, DELETE sur une table
- C) CREATE USER
- D) ALTER SYSTEM

---

### Question 43
La commande GRANT permet de :

- A) Supprimer des privilèges
- B) Attribuer un ou plusieurs privilèges à un ou plusieurs bénéficiaires
- C) Créer des tables
- D) Modifier des données

---

### Question 44
La syntaxe pour accorder un privilège système est :

- A) ADD PRIVILEGE
- B) GRANT privilège TO utilisateur [WITH ADMIN OPTION]
- C) SET PRIVILEGE
- D) CREATE PRIVILEGE

---

### Question 45
L'option ALL PRIVILEGES dans GRANT accorde :

- A) Un seul privilège
- B) Tous les privilèges système à l'utilisateur
- C) Aucun privilège
- D) Les privilèges de lecture uniquement

---

### Question 46
L'option PUBLIC dans GRANT attribue le privilège à :

- A) Un seul utilisateur
- B) Tous les utilisateurs
- C) L'administrateur uniquement
- D) Aucun utilisateur

---

### Question 47
L'option WITH ADMIN OPTION permet au bénéficiaire de :

- A) Supprimer le privilège
- B) Retransmettre le(s) privilège(s) reçu(s) à une tierce personne
- C) Modifier les données
- D) Créer des utilisateurs

---

### Question 48
La commande REVOKE permet de :

- A) Accorder des privilèges
- B) Annuler un privilège système ou un rôle
- C) Créer des tables
- D) Modifier des utilisateurs

---

### Question 49
La syntaxe pour révoquer un privilège système est :

- A) DELETE PRIVILEGE
- B) REVOKE privilège FROM utilisateur
- C) REMOVE PRIVILEGE
- D) DROP PRIVILEGE

---

### Question 50
Pour révoquer un privilège, vous devez :

- A) Être l'administrateur système
- B) Détenir au préalable ce privilège avec l'option WITH ADMIN OPTION
- C) Avoir créé le privilège
- D) Être connecté en local

---

### Question 51
La syntaxe pour accorder un privilège objet est :

- A) GRANT privilège TO utilisateur
- B) GRANT privilège ON objet TO utilisateur [WITH GRANT OPTION]
- C) SET PRIVILEGE
- D) ADD PRIVILEGE

---

### Question 52
L'option WITH GRANT OPTION permet au bénéficiaire de :

- A) Supprimer l'objet
- B) Retransmettre les privilèges objets reçus à une tierce personne
- C) Modifier la structure de l'objet
- D) Créer de nouveaux objets

---

### Question 53
Pour accorder le privilège de modification sur une colonne spécifique, on utilise :

- A) GRANT UPDATE TO utilisateur
- B) GRANT UPDATE(colonne) ON table TO utilisateur
- C) GRANT MODIFY ON colonne
- D) GRANT CHANGE colonne

---

### Question 54
L'option CASCADE CONSTRAINTS dans REVOKE sur un privilège objet :

- A) Conserve les contraintes
- B) Permet de supprimer la contrainte référentielle entre deux tables de schémas distincts
- C) Crée de nouvelles contraintes
- D) Modifie les contraintes

---

### Question 55
Un rôle est :

- A) Un type de table
- B) Un groupe nommé de privilèges qu'on accorde en groupe à des utilisateurs ou d'autres rôles
- C) Un type d'index
- D) Un type de contrainte

---

### Question 56
Pour créer un rôle, on utilise :

- A) ADD ROLE
- B) CREATE ROLE nom_role
- C) NEW ROLE
- D) SET ROLE

---

### Question 57
Comment accorder des privilèges à un rôle ?

- A) GRANT privilège FOR rôle
- B) GRANT privilège TO rôle
- C) ADD privilège TO rôle
- D) SET privilège ON rôle

---

### Question 58
Pour accorder un rôle à des utilisateurs, on utilise :

- A) ADD ROLE
- B) GRANT rôle TO utilisateur1, utilisateur2, ...
- C) SET ROLE
- D) CREATE ROLE

---

### Question 59
Pour annuler un rôle à un utilisateur, on utilise :

- A) DELETE ROLE
- B) REVOKE rôle FROM utilisateur
- C) REMOVE ROLE
- D) DROP ROLE FROM

---

### Question 60
Pour annuler un rôle, il faut avoir :

- A) Le privilège CREATE ROLE
- B) Le privilège GRANT ANY ROLE ou avoir les privilèges WITH ADMIN OPTION
- C) Le privilège DROP TABLE
- D) Le privilège CREATE USER

---

### Question 61
Le rôle prédéfini CONNECT permet de :

- A) Créer des tables uniquement
- B) INSERT, UPDATE, DELETE, SELECT sur les relations dont on a les privilèges et créer des vues
- C) Tout faire
- D) Rien

---

### Question 62
Le rôle prédéfini RESOURCE permet de :

- A) Uniquement lire
- B) Créer des tables, vues, triggers et procédures
- C) Supprimer des utilisateurs
- D) Modifier le système

---

### Question 63
Le rôle prédéfini DBA accorde :

- A) Uniquement les privilèges de lecture
- B) Tous les privilèges système avec ADMIN OPTION
- C) Aucun privilège
- D) Les privilèges de création de tables uniquement

---

### Question 64
Le rôle prédéfini EXP_FULL_DATABASE permet :

- A) D'importer des données
- B) D'exporter les données de la base
- C) De supprimer la base
- D) De créer des utilisateurs

---

### Question 65
Le rôle prédéfini IMP_FULL_DATABASE permet :

- A) D'exporter des données
- B) D'importer des données dans la base
- C) De supprimer des données
- D) De créer des tables

---

### Question 66
La vue USER_TAB_GRANTS permet de voir :

- A) Les tables de l'utilisateur
- B) Les autorisations sur les tables et vues pour lesquelles l'utilisateur est propriétaire ou bénéficiaire
- C) Les index
- D) Les contraintes

---

### Question 67
La vue DBA_ROLE_PRIVS affiche :

- A) Les tables
- B) Les rôles donnés aux utilisateurs et aux autres rôles
- C) Les index
- D) Les vues

---

### Question 68
La vue ROLE_SYS_PRIVS montre :

- A) Les tables par rôle
- B) Les privilèges système donnés aux rôles
- C) Les utilisateurs par rôle
- D) Les objets par rôle

---

### Question 69
La vue ROLE_TAB_PRIVS montre :

- A) Les utilisateurs
- B) Les privilèges sur les tables donnés aux rôles
- C) Les index
- D) Les contraintes

---

### Question 70
Le paramètre PRIVATE_SGA dans un profil limite :

- A) Le nombre de sessions
- B) L'espace mémoire privé alloué dans la SGA
- C) Le temps CPU
- D) Le nombre de connexions
