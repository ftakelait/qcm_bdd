# QCM - Chapitre 3 Partie 2 : Sécurité et Contrôle d'Accès

---

### Question 1
Quels sont les 5 principes fondamentaux de la sécurité de l'information ?

- A) Rapidité d'accès, Efficacité des requêtes, Économie de stockage, Flexibilité du schéma, Stabilité du système
- B) Intégrité, Confidentialité, Disponibilité, Traçabilité, Conformité aux règles
- C) Création fluide, Lecture rapide, Modification sécurisée, Suppression contrôlée, Sauvegarde régulière
- D) Connexion simple, Déconnexion automatique, Authentification biométrique, Autorisation granulaire, Audit mensuel

---

### Question 2
Selon les statistiques présentées, quel pourcentage des incidents de sécurité sont le fait de personnels internes à l'organisation ?

- A) 10% seulement, la majorité provient d'attaques externes par des hackers
- B) 25% des incidents sont causés par des personnels internes
- C) 50% exactement, avec une répartition égale entre interne et externe
- D) 75% des incidents, les menaces internes étant le principal risque

---

### Question 3
La confidentialité dans le contexte de la sécurité des bases de données consiste à :

- A) Permettre l'accès libre à toutes les données pour favoriser la transparence
- B) Empêcher la consultation de données sensibles par des personnes non autorisées
- C) Supprimer régulièrement les données anciennes pour libérer de l'espace
- D) Copier les données sur plusieurs serveurs pour assurer leur disponibilité

---

### Question 4
L'intégrité dans le contexte de la sécurité des bases de données consiste à :

- A) Dupliquer les données sur plusieurs sites pour assurer la redondance
- B) Prévenir la modification non autorisée des données et garantir leur cohérence
- C) Supprimer les comptes utilisateurs inactifs depuis plus de 6 mois
- D) Créer des sauvegardes incrémentales chaque nuit à heure fixe

---

### Question 5
La traçabilité dans le contexte de la sécurité des bases de données permet de :

- A) Supprimer définitivement les journaux d'audit après archivage
- B) Conserver un historique des actions effectuées pour prévention et audit des incidents
- C) Masquer les activités sensibles des administrateurs pour protéger leur vie privée
- D) Ignorer les incidents mineurs pour se concentrer sur les attaques majeures

---

### Question 6
La disponibilité dans le contexte de la sécurité des bases de données signifie que :

- A) Toutes les données sont publiques et accessibles sans authentification
- B) Les utilisateurs autorisés doivent pouvoir accéder aux données dont ils ont besoin
- C) Tout le monde peut modifier les données pour faciliter la collaboration
- D) Les données sont supprimées régulièrement pour éviter la saturation

---

### Question 7
Pour appliquer les principes de sécurité dans un SGBD Oracle, on utilise principalement :

- A) Uniquement la sauvegarde quotidienne vers des bandes magnétiques
- B) L'authentification (vérification identité) et l'autorisation (vérification droits d'accès)
- C) La suppression systématique des utilisateurs après chaque session
- D) Uniquement le chiffrement des données au repos sur le disque

---

### Question 8
Lors de l'authentification Oracle, quelles vérifications sont effectuées ?

- A) Uniquement la validation du nom d'utilisateur sans vérification du mot de passe
- B) Cryptage du mot de passe, verrouillage après échecs, expiration, vérification complexité
- C) Uniquement la vérification de l'adresse IP source de la connexion
- D) Aucune vérification, Oracle fait confiance aux utilisateurs déclarés

---

### Question 9
À la création d'un nouvel utilisateur Oracle, on peut définir :

- A) Uniquement le nom d'utilisateur sans possibilité de personnalisation
- B) Un tablespace par défaut, un tablespace temporaire, des quotas et un profil de ressources
- C) Uniquement le mot de passe initial qui sera changé automatiquement
- D) Exclusivement les privilèges DBA pour simplifier l'administration

---

### Question 10
Le DBA (DataBase Administrator) est responsable de :

- A) Uniquement la création des tables utilisateur selon leurs demandes
- B) L'installation, la gestion des espaces/utilisateurs, l'optimisation, les sauvegardes
- C) Uniquement la lecture des données pour générer des rapports statistiques
- D) Exclusivement les requêtes SELECT pour vérifier la qualité des données

---

### Question 11
Quelle est la syntaxe complète pour créer un utilisateur Oracle avec toutes les options ?

- A) CREATE USER utilisateur; (syntaxe minimale suffisante)
- B) CREATE USER utilisateur IDENTIFIED BY password [DEFAULT TABLESPACE...] [QUOTA...] [PROFILE...];
- C) NEW USER utilisateur WITH PASSWORD password;
- D) ADD USER utilisateur LOGIN password;

---

### Question 12
L'option IDENTIFIED BY dans CREATE USER permet de :

- A) Supprimer l'utilisateur s'il existe déjà et le recréer
- B) Spécifier le mot de passe d'authentification de l'utilisateur
- C) Créer une table associée à cet utilisateur automatiquement
- D) Définir le rôle principal attribué à l'utilisateur

---

### Question 13
L'option IDENTIFIED EXTERNALLY permet de :

- A) Créer un mot de passe particulièrement fort et complexe
- B) Déléguer l'authentification au système d'exploitation (comptes OS)
- C) Supprimer complètement l'authentification pour un accès libre
- D) Créer un utilisateur anonyme sans identité vérifiable

---

### Question 14
L'option DEFAULT TABLESPACE associe à l'utilisateur :

- A) Un mot de passe par défaut qui sera changé à la première connexion
- B) Un espace disque de travail où seront stockés ses objets (tables, index)
- C) Un rôle par défaut avec des privilèges prédéfinis
- D) Une contrainte d'intégrité appliquée à toutes ses tables

---

### Question 15
L'option TEMPORARY TABLESPACE définit :

- A) Un mot de passe temporaire valide pendant 24 heures seulement
- B) Un espace disque pour les opérations temporaires (tris, jointures)
- C) Une table temporaire créée automatiquement pour l'utilisateur
- D) Un utilisateur temporaire supprimé automatiquement après déconnexion

---

### Question 16
L'option QUOTA permet de :

- A) Supprimer automatiquement l'utilisateur après un certain nombre de connexions
- B) Limiter (ex: QUOTA 10M) ou ne pas limiter (UNLIMITED) l'espace disque utilisable
- C) Créer des tables avec un nombre maximum de colonnes
- D) Modifier les privilèges de l'utilisateur de façon dynamique

---

### Question 17
L'option PASSWORD EXPIRE dans CREATE USER oblige l'utilisateur à :

- A) Conserver le même mot de passe pendant toute la durée du compte
- B) Changer son mot de passe obligatoirement à la première connexion
- C) Supprimer son compte après une période d'inactivité
- D) Créer un nouveau compte avec un nouveau nom d'utilisateur

---

### Question 18
L'option ACCOUNT LOCK permet de :

- A) Créer le compte et l'activer immédiatement pour utilisation
- B) Verrouiller le compte, empêchant toute connexion jusqu'à déverrouillage
- C) Supprimer le verrouillage existant sur un compte bloqué
- D) Créer un mot de passe permettant plusieurs connexions simultanées

---

### Question 19
Par défaut, en l'absence de clause sur les tablespaces, quel tablespace est associé à l'utilisateur ?

- A) Le tablespace USERS prévu pour les données utilisateur
- B) Le tablespace SYSTEM qui contient le dictionnaire de données
- C) Le tablespace TEMP réservé aux opérations temporaires
- D) Le tablespace DATA créé automatiquement pour chaque utilisateur

---

### Question 20
En l'absence de profil spécifié lors de la création, quel profil est affecté par défaut ?

- A) Le profil ADMIN avec tous les privilèges d'administration
- B) Le profil DEFAULT qui définit des limites de ressources standard
- C) Le profil USER avec des restrictions maximales
- D) Le profil STANDARD optimisé pour les applications transactionnelles

---

### Question 21
Pour modifier le mot de passe d'un utilisateur existant, on utilise :

- A) CHANGE USER nom_user SET PASSWORD nouveau_pass;
- B) ALTER USER nom_user IDENTIFIED BY nouveau_mot_passe;
- C) UPDATE USER nom_user PASSWORD = nouveau_pass;
- D) MODIFY USER nom_user WITH nouveau_pass;

---

### Question 22
L'option DEFAULT ROLE dans ALTER USER permet de :

- A) Supprimer tous les rôles précédemment attribués à l'utilisateur
- B) Définir quels rôles seront automatiquement actifs à la connexion
- C) Créer un nouveau rôle personnalisé pour cet utilisateur uniquement
- D) Modifier les privilèges contenus dans un rôle existant

---

### Question 23
Pour supprimer un utilisateur Oracle et son schéma, on utilise :

- A) DELETE USER utilisateur FROM DATABASE;
- B) DROP USER utilisateur [CASCADE];
- C) REMOVE USER utilisateur COMPLETELY;
- D) DESTROY USER utilisateur AND OBJECTS;

---

### Question 24
L'option CASCADE dans DROP USER :

- A) Empêche la suppression si l'utilisateur possède des objets
- B) Force la suppression en détruisant tous les objets du schéma de l'utilisateur
- C) Crée une sauvegarde automatique avant la suppression
- D) Archive l'utilisateur pour permettre une restauration ultérieure

---

### Question 25
Lors d'un DROP USER CASCADE, que se passe-t-il pour les contraintes de clés étrangères d'autres schémas référençant des tables supprimées ?

- A) Les contraintes sont conservées et pointent vers des tables inexistantes
- B) Ces contraintes référentielles sont automatiquement supprimées aussi
- C) La suppression échoue avec une erreur tant que ces contraintes existent
- D) Les contraintes sont désactivées mais conservées pour référence future

---

### Question 26
Un profil Oracle regroupe :

- A) Un ensemble de tables appartenant à un même domaine fonctionnel
- B) Des limites de ressources système et règles de mot de passe applicables aux utilisateurs
- C) Des index optimisés pour accélérer les requêtes d'un groupe d'utilisateurs
- D) Des vues matérialisées partagées entre plusieurs schémas

---

### Question 27
Pour créer un profil, l'utilisateur doit posséder le privilège :

- A) CREATE USER permettant de créer des comptes utilisateur
- B) CREATE PROFILE spécifique à la création de profils
- C) CREATE TABLE accordé par le rôle RESOURCE
- D) CREATE INDEX pour les opérations d'optimisation

---

### Question 28
Le paramètre SESSIONS_PER_USER dans un profil limite :

- A) Le nombre de tables créées par l'utilisateur dans son schéma
- B) Le nombre de sessions concurrentes (connexions simultanées) autorisées
- C) Le nombre de colonnes par table dans le schéma de l'utilisateur
- D) Le nombre d'index que l'utilisateur peut créer sur ses tables

---

### Question 29
Le paramètre CPU_PER_SESSION dans un profil définit :

- A) Le nombre de processeurs physiques alloués à l'utilisateur
- B) Le temps CPU maximal pour une session en centièmes de secondes
- C) La vitesse minimale du processeur requise pour se connecter
- D) Le nombre de requêtes SQL exécutables par session

---

### Question 30
Le paramètre CONNECT_TIME dans un profil limite :

- A) Le nombre total de connexions sur la durée de vie du compte
- B) Le temps total autorisé pour une session en minutes (durée maximale)
- C) La bande passante réseau allouée à chaque connexion
- D) Le nombre d'utilisateurs pouvant se connecter simultanément

---

### Question 31
Le paramètre IDLE_TIME dans un profil définit :

- A) Le temps de calcul CPU consommé par les requêtes en attente
- B) Le temps d'inactivité maximal en minutes avant déconnexion automatique
- C) Le temps de connexion initial avant activation de la session
- D) Le délai d'attente maximum pour l'exécution des requêtes

---

### Question 32
Le paramètre FAILED_LOGIN_ATTEMPTS dans un profil contrôle :

- A) Le nombre de tables que l'utilisateur peut créer avant blocage
- B) Le nombre de tentatives de connexion échouées avant verrouillage du compte
- C) Le nombre d'index autorisés sur les tables de l'utilisateur
- D) Le nombre de requêtes SQL pouvant échouer avant alerte

---

### Question 33
Le paramètre PASSWORD_LIFE_TIME dans un profil définit :

- A) La complexité minimale requise pour le mot de passe (longueur, caractères)
- B) Le nombre de jours de validité du mot de passe avant expiration obligatoire
- C) La longueur minimale du mot de passe en caractères
- D) Les caractères spéciaux interdits dans le mot de passe

---

### Question 34
Le paramètre PASSWORD_LOCK_TIME indique :

- A) La durée de validité du mot de passe avant changement obligatoire
- B) Le nombre de jours de verrouillage du compte après trop de tentatives échouées
- C) La fréquence obligatoire de changement de mot de passe
- D) La complexité requise pour le déverrouillage du compte

---

### Question 35
Le paramètre PASSWORD_GRACE_TIME dans un profil définit :

- A) La longueur maximale autorisée pour le mot de passe
- B) Le nombre de jours de grâce après expiration pendant lesquels l'utilisateur peut encore changer son mot de passe
- C) Le nombre de caractères spéciaux requis dans le mot de passe
- D) Le temps de réponse maximal du serveur d'authentification

---

### Question 36
Pour affecter un profil existant à un utilisateur, on utilise :

- A) CREATE PROFILE nom_profil FOR USER nom_user;
- B) ALTER USER nom_user PROFILE nom_profil;
- C) ADD PROFILE nom_profil TO USER nom_user;
- D) SET PROFILE nom_profil FOR nom_user;

---

### Question 37
Pour modifier les paramètres d'un profil existant, l'utilisateur doit posséder le privilège :

- A) CREATE PROFILE qui inclut la modification
- B) ALTER PROFILE spécifique à la modification des profils
- C) CREATE USER qui englobe la gestion des profils
- D) DROP PROFILE pour supprimer et recréer avec les nouveaux paramètres

---

### Question 38
Le profil DEFAULT dans Oracle :

- A) Peut être supprimé par le DBA si nécessaire pour libérer des ressources
- B) Ne peut pas être supprimé car c'est le profil de base du système
- C) N'existe pas, il faut toujours créer un profil manuellement
- D) Est optionnel et n'est créé que sur demande de l'administrateur

---

### Question 39
L'option CASCADE dans DROP PROFILE :

- A) Empêche la suppression si des utilisateurs utilisent ce profil
- B) Supprime le profil et affecte le profil DEFAULT aux utilisateurs concernés
- C) Crée une copie de sauvegarde du profil avant suppression
- D) Archive le profil pour une restauration possible

---

### Question 40
Quelle est la différence entre un privilège système et un privilège objet ?

- A) Il n'y a aucune différence, ce sont deux termes synonymes
- B) Privilège système = droit d'exécuter une action SQL, privilège objet = droit d'accéder à un objet spécifique
- C) Le privilège objet est toujours plus important que le privilège système
- D) Le privilège système est moins sécurisé et à éviter en production

---

### Question 41
Quels sont des exemples de privilèges système Oracle ?

- A) SELECT sur une table spécifique, INSERT sur une vue particulière, UPDATE colonnes
- B) CREATE TABLE, CREATE SESSION, CREATE PROCEDURE, ALTER USER, DROP ANY TABLE
- C) DELETE sur employés, TRUNCATE sur clients, REFERENCES sur produits
- D) READ fichier, WRITE fichier, EXECUTE programme

---

### Question 42
Quels sont des exemples de privilèges objet Oracle ?

- A) CREATE TABLE, DROP TABLE, ALTER SESSION, CREATE VIEW
- B) SELECT, INSERT, UPDATE, DELETE sur une table spécifique, EXECUTE sur une procédure
- C) CREATE USER, DROP USER, GRANT ANY PRIVILEGE
- D) ALTER SYSTEM, STARTUP DATABASE, SHUTDOWN IMMEDIATE

---

### Question 43
La commande GRANT dans Oracle permet de :

- A) Supprimer définitivement des privilèges accordés précédemment
- B) Attribuer un ou plusieurs privilèges à un ou plusieurs utilisateurs ou rôles
- C) Créer des tables avec des permissions par défaut
- D) Modifier les données dans les tables systèmes de sécurité

---

### Question 44
La syntaxe pour accorder un privilège système est :

- A) ADD PRIVILEGE privilege TO user;
- B) GRANT privilege TO utilisateur [WITH ADMIN OPTION];
- C) SET PRIVILEGE privilege FOR user;
- D) CREATE PRIVILEGE privilege ON user;

---

### Question 45
L'option ALL PRIVILEGES dans GRANT accorde :

- A) Un seul privilège choisi aléatoirement parmi les disponibles
- B) Tous les privilèges système disponibles à l'utilisateur ou au rôle
- C) Aucun privilège réel, c'est juste une syntaxe de documentation
- D) Uniquement les privilèges de lecture sur toutes les tables

---

### Question 46
L'option PUBLIC dans GRANT attribue le privilège à :

- A) Un seul utilisateur spécifiquement désigné comme public
- B) Tous les utilisateurs actuels et futurs de la base de données
- C) Uniquement l'administrateur DBA et ses délégués
- D) Aucun utilisateur réel, c'est un groupe vide par défaut

---

### Question 47
L'option WITH ADMIN OPTION permet au bénéficiaire de :

- A) Supprimer le privilège de tous les utilisateurs y compris lui-même
- B) Transmettre les privilèges système reçus à d'autres utilisateurs ou rôles
- C) Modifier les données dans les tables d'audit de sécurité
- D) Créer des utilisateurs avec des privilèges supérieurs aux siens

---

### Question 48
La commande REVOKE permet de :

- A) Accorder temporairement des privilèges pour une durée limitée
- B) Retirer (annuler) un privilège système ou un rôle précédemment accordé
- C) Créer des tables avec des restrictions d'accès spécifiques
- D) Modifier les utilisateurs pour ajouter de nouveaux privilèges

---

### Question 49
La syntaxe pour révoquer un privilège système est :

- A) DELETE PRIVILEGE privilege FROM user;
- B) REVOKE privilege FROM utilisateur;
- C) REMOVE PRIVILEGE privilege OF user;
- D) DROP PRIVILEGE privilege ON user;

---

### Question 50
Pour révoquer un privilège système, vous devez normalement :

- A) Être le propriétaire original de la base de données
- B) Posséder ce privilège avec l'option WITH ADMIN OPTION ou être DBA
- C) Avoir créé le privilège vous-même lors de l'installation
- D) Être connecté localement au serveur (pas de connexion distante)

---

### Question 51
La syntaxe pour accorder un privilège objet est :

- A) GRANT privilege TO utilisateur ON objet;
- B) GRANT privilege ON objet TO utilisateur [WITH GRANT OPTION];
- C) SET privilege FOR utilisateur OBJECT objet;
- D) ADD privilege ON objet FOR utilisateur;

---

### Question 52
L'option WITH GRANT OPTION permet au bénéficiaire de :

- A) Supprimer l'objet sans aucune restriction ni autorisation
- B) Transmettre les privilèges objet reçus à d'autres utilisateurs
- C) Modifier la structure de l'objet (colonnes, contraintes)
- D) Créer de nouveaux objets dans le schéma du propriétaire

---

### Question 53
Pour accorder le privilège UPDATE sur une colonne spécifique seulement :

- A) GRANT UPDATE TO utilisateur ON table.colonne;
- B) GRANT UPDATE(colonne) ON table TO utilisateur;
- C) GRANT MODIFY ON colonne OF table TO utilisateur;
- D) GRANT CHANGE colonne ON table FOR utilisateur;

---

### Question 54
L'option CASCADE CONSTRAINTS dans REVOKE sur un privilège objet :

- A) Conserve les contraintes mais désactive les privilèges associés
- B) Supprime aussi les contraintes référentielles inter-schémas liées au privilège REFERENCES
- C) Crée de nouvelles contraintes pour remplacer celles concernées
- D) Modifie les contraintes pour pointer vers d'autres tables

---

### Question 55
Un rôle Oracle est :

- A) Un type particulier de table stockant les informations de sécurité
- B) Un groupe nommé de privilèges pouvant être accordé d'un bloc à des utilisateurs ou rôles
- C) Un type d'index spécialisé pour accélérer les vérifications de privilèges
- D) Une contrainte d'intégrité vérifiant les droits à chaque accès

---

### Question 56
Pour créer un rôle Oracle, on utilise :

- A) ADD ROLE nom_role WITH PRIVILEGES (...);
- B) CREATE ROLE nom_role;
- C) NEW ROLE nom_role AS privilege_list;
- D) SET ROLE nom_role = privilege_list;

---

### Question 57
Comment accorder des privilèges à un rôle ?

- A) GRANT privilege FOR role;
- B) GRANT privilege TO role; (même syntaxe que pour un utilisateur)
- C) ADD privilege TO role;
- D) SET privilege ON role;

---

### Question 58
Pour accorder un rôle à plusieurs utilisateurs, on utilise :

- A) ADD ROLE role FOR user1, user2, user3;
- B) GRANT role TO user1, user2, user3;
- C) SET ROLE role ON user1, user2, user3;
- D) CREATE ROLE role WITH USERS (user1, user2, user3);

---

### Question 59
Pour retirer un rôle d'un utilisateur, on utilise :

- A) DELETE ROLE role OF user;
- B) REVOKE role FROM utilisateur;
- C) REMOVE ROLE role FROM user;
- D) DROP ROLE role OF user;

---

### Question 60
Pour révoquer un rôle, il faut avoir :

- A) Le privilège CREATE ROLE qui inclut la révocation
- B) Le privilège GRANT ANY ROLE ou posséder le rôle avec ADMIN OPTION
- C) Le privilège DROP TABLE pour les opérations de suppression
- D) Le privilège CREATE USER pour gérer les rôles des utilisateurs

---

### Question 61
Le rôle prédéfini CONNECT permet de :

- A) Uniquement créer des tables sans aucun autre privilège
- B) Effectuer SELECT, INSERT, UPDATE, DELETE sur les objets autorisés et créer des vues
- C) Tout faire sans aucune restriction (équivalent DBA)
- D) Rien du tout, c'est un rôle vide par défaut

---

### Question 62
Le rôle prédéfini RESOURCE permet de :

- A) Uniquement lire les données avec SELECT sans modification possible
- B) Créer des tables, vues, triggers, procédures et séquences dans son schéma
- C) Supprimer les utilisateurs et leurs objets avec CASCADE
- D) Modifier les paramètres système et redémarrer l'instance

---

### Question 63
Le rôle prédéfini DBA accorde :

- A) Uniquement les privilèges de lecture sur les tables système
- B) Tous les privilèges système avec l'option ADMIN OPTION (administration complète)
- C) Aucun privilège réel, c'est un rôle symbolique honorifique
- D) Les privilèges de création de tables uniquement dans le schéma SYS

---

### Question 64
Le rôle prédéfini EXP_FULL_DATABASE permet :

- A) D'importer des données depuis un fichier dump externe
- B) D'exporter toutes les données de la base avec l'utilitaire exp ou expdp
- C) De supprimer complètement la base de données et ses fichiers
- D) De créer des utilisateurs avec tous les privilèges DBA

---

### Question 65
Le rôle prédéfini IMP_FULL_DATABASE permet :

- A) D'exporter les données vers des fichiers dump
- B) D'importer des données depuis un fichier dump avec l'utilitaire imp ou impdp
- C) De supprimer des données en masse de plusieurs tables
- D) De créer des tables temporaires pour les imports

---

### Question 66
La vue USER_TAB_GRANTS du dictionnaire permet de voir :

- A) Les tables créées par l'utilisateur et leur date de création
- B) Les privilèges sur les tables/vues accordés par ou à l'utilisateur
- C) Les index créés automatiquement pour les clés primaires
- D) Les contraintes d'intégrité définies sur les tables utilisateur

---

### Question 67
La vue DBA_ROLE_PRIVS affiche :

- A) Les tables appartenant aux différents rôles du système
- B) Les rôles accordés aux utilisateurs et aux autres rôles (arborescence des rôles)
- C) Les index créés par chaque rôle pour optimiser les accès
- D) Les vues définies par chaque rôle pour filtrer les données

---

### Question 68
La vue ROLE_SYS_PRIVS montre :

- A) Les tables accessibles par chaque rôle de la base
- B) Les privilèges système (CREATE TABLE, CREATE SESSION...) accordés à chaque rôle
- C) Les utilisateurs appartenant à chaque groupe de rôles
- D) Les objets créés par les utilisateurs ayant chaque rôle

---

### Question 69
La vue ROLE_TAB_PRIVS montre :

- A) Les utilisateurs autorisés pour chaque table du système
- B) Les privilèges sur les tables/vues (SELECT, INSERT...) accordés à chaque rôle
- C) Les index créés sur les tables par rôle d'appartenance
- D) Les contraintes définies sur les tables accessibles par rôle

---

### Question 70
Le paramètre PRIVATE_SGA dans un profil limite :

- A) Le nombre de sessions parallèles pour un même utilisateur
- B) L'espace mémoire privé maximum alloué dans la SGA pour les connexions serveur partagé
- C) Le temps CPU total consommé par toutes les requêtes
- D) Le nombre maximum de connexions simultanées au serveur
