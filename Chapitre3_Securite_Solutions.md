# Solutions Détaillées - Chapitre 3 Partie 2 : Sécurité et Contrôle d'Accès

---

### Question 1
**Réponse : B) Intégrité, Confidentialité, Disponibilité, Traçabilité, Conformité**

**Explication :** Les 5 principes fondamentaux de la sécurité de l'information sont :
- **Intégrité** : les données ne sont pas modifiées par des personnes non autorisées
- **Confidentialité** : les données ne sont accessibles qu'aux personnes autorisées
- **Disponibilité** : les données sont accessibles quand nécessaire
- **Traçabilité** : les actions sont enregistrées
- **Conformité** : respect des règles et réglementations

---

### Question 2
**Réponse : B) 25%**

**Explication :** Selon les statistiques présentées dans le cours, 25% des incidents de sécurité sont le fait de personnels internes. De plus, 50% sont consécutifs à des pertes ou des vols de matériels divers.

---

### Question 3
**Réponse : B) Empêcher la consultation de données sensibles par des personnes non autorisées**

**Explication :** La confidentialité vise à empêcher la consultation de données sensibles par des personnes non autorisées. Elle implique l'authentification, le contrôle d'accès, la gestion des utilisateurs à super privilèges et le chiffrement.

---

### Question 4
**Réponse : B) Prévenir la modification des données par des personnes non autorisées**

**Explication :** L'intégrité prévient la modification des données par des personnes non autorisées. Elle inclut les contrôles d'accès, les mécanismes de vérification des modifications et le contrôle de cohérence.

---

### Question 5
**Réponse : B) Garder la trace des actions effectuées sur les systèmes à des fins de prévention et d'audit**

**Explication :** La traçabilité permet de garder la trace des actions effectuées sur les systèmes, à des fins de prévention et d'audit des incidents. Elle répond aux questions : Qui a accédé ? Quelle information a été capturée ?

---

### Question 6
**Réponse : B) Les utilisateurs ayant le droit de faire certaines actions doivent pouvoir accéder aux données correspondantes**

**Explication :** La disponibilité garantit que les utilisateurs ayant le droit de faire certaines actions doivent pouvoir accéder aux données correspondantes quand ils en ont besoin.

---

### Question 7
**Réponse : B) L'authentification et l'autorisation**

**Explication :** Pour appliquer les principes de sécurité, on utilise l'authentification (vérification de l'identité) et l'autorisation (vérification des droits d'accès).

---

### Question 8
**Réponse : B) Cryptage du mot de passe, verrouillage des comptes, expiration du mot de passe, vérification de la complexité**

**Explication :** L'authentification Oracle inclut : cryptage du mot de passe, verrouillage des comptes après tentatives échouées, expiration du mot de passe et vérification de la complexité du mot de passe.

---

### Question 9
**Réponse : B) Un espace de stockage par défaut, un espace temporaire, des quotas et un profil**

**Explication :** À la création d'un utilisateur Oracle, on définit :
- Un espace de stockage par défaut (default tablespace)
- Un espace de stockage temporaire (temporary tablespace)
- Des quotas sur ces espaces
- Un profil délimitant l'accès aux ressources

---

### Question 10
**Réponse : B) L'installation, la gestion des espaces, des utilisateurs, l'optimisation, les sauvegardes**

**Explication :** Le DBA est responsable de :
- Installation et mises à jour
- Gestion de l'espace disque et des tablespaces
- Gestion des utilisateurs et de leurs objets
- Optimisation des performances
- Sauvegardes, restaurations et archivages
- Contact avec le support technique Oracle

---

### Question 11
**Réponse : B) CREATE USER utilisateur IDENTIFIED BY motdePasse [DEFAULT TABLESPACE ...] [TEMPORARY TABLESPACE ...] [QUOTA ...] [PROFILE ...];**

**Explication :** La syntaxe complète est :
```sql
CREATE USER utilisateur IDENTIFIED BY motdePasse
[DEFAULT TABLESPACE nomTablespace]
[QUOTA { entier [ K | M ] | UNLIMITED } ON nomTablespace]
[TEMPORARY TABLESPACE nomTablespace]
[PROFILE nomProfil]
[PASSWORD EXPIRE]
[ACCOUNT { LOCK | UNLOCK }];
```

---

### Question 12
**Réponse : B) Affecter un mot de passe à l'utilisateur**

**Explication :** L'option IDENTIFIED BY motdePasse permet d'affecter un mot de passe à un utilisateur local. C'est le cas le plus courant.

---

### Question 13
**Réponse : B) Utiliser l'authentification du système d'exploitation pour s'identifier à Oracle**

**Explication :** IDENTIFIED EXTERNALLY permet de se servir de l'authenticité du système d'exploitation pour s'identifier à Oracle (cas des comptes OPS$ pour Unix).

---

### Question 14
**Réponse : B) Un espace disque de travail pour ses objets**

**Explication :** DEFAULT TABLESPACE nomTablespace associe un espace disque de travail (appelé tablespace) à l'utilisateur. C'est là que seront stockés ses objets (tables, index, etc.).

---

### Question 15
**Réponse : B) Un espace disque temporaire pour certaines opérations**

**Explication :** TEMPORARY TABLESPACE associe un espace disque temporaire dans lequel certaines opérations se dérouleront (tris, jointures, etc.).

---

### Question 16
**Réponse : B) Limiter ou ne pas limiter l'espace alloué à l'utilisateur**

**Explication :** QUOTA permet de limiter (ex: 10M) ou de ne pas limiter (UNLIMITED) l'espace alloué à l'utilisateur dans chaque tablespace.

---

### Question 17
**Réponse : B) Changer son mot de passe à la première connexion**

**Explication :** PASSWORD EXPIRE oblige l'utilisateur à changer son mot de passe à la première connexion. Le DBA peut aussi changer ce mot de passe ultérieurement.

---

### Question 18
**Réponse : B) Verrouiller l'accès à la base pour cet utilisateur**

**Explication :** ACCOUNT LOCK verrouille le compte de l'utilisateur, l'empêchant de se connecter. Par défaut, ACCOUNT est UNLOCK.

---

### Question 19
**Réponse : B) SYSTEM**

**Explication :** En l'absence de clause sur les espaces disque, le tablespace SYSTEM est associé à l'utilisateur par défaut. Cependant, il est recommandé d'utiliser USERS pour l'espace par défaut et TEMP pour l'espace temporaire.

---

### Question 20
**Réponse : B) DEFAULT**

**Explication :** En l'absence de profil spécifié, le profil DEFAULT est affecté à l'utilisateur.

---

### Question 21
**Réponse : B) ALTER USER nom_user IDENTIFIED BY nouveau_mot_pass**

**Explication :** Pour modifier le mot de passe d'un utilisateur :
```sql
ALTER USER nom_user IDENTIFIED BY nouveau_mot_passe;
```

---

### Question 22
**Réponse : B) Affecter des rôles à l'utilisateur**

**Explication :** L'option DEFAULT ROLE dans ALTER USER permet d'affecter à l'utilisateur des rôles qui sont des ensembles de privilèges.

---

### Question 23
**Réponse : B) DROP USER utilisateur [CASCADE]**

**Explication :** La syntaxe pour supprimer un utilisateur est :
```sql
DROP USER utilisateur [CASCADE];
```

---

### Question 24
**Réponse : B) Force la suppression et détruit tous les objets du schéma de l'utilisateur**

**Explication :** L'option CASCADE force la suppression et détruit tous les objets du schéma de l'utilisateur (tables, index, séquences, déclencheurs, etc.). Sans CASCADE, Oracle refuse de supprimer un utilisateur possédant des objets.

---

### Question 25
**Réponse : B) Sont aussi supprimées**

**Explication :** Les contraintes d'intégrité d'autres schémas qui référençaient des tables du schéma à détruire sont aussi supprimées. Les vues, synonymes et procédures dépendantes sont invalidés, pas supprimés.

---

### Question 26
**Réponse : B) Des caractéristiques système (ressources) qu'il est possible d'affecter à des utilisateurs**

**Explication :** Un profil regroupe des caractéristiques système (ressources) qu'il est possible d'affecter à un ou plusieurs utilisateurs. Les profils contrôlent la consommation des ressources et gèrent le statut des comptes.

---

### Question 27
**Réponse : B) CREATE PROFILE**

**Explication :** Pour pouvoir créer un profil, vous devez posséder le privilège CREATE PROFILE.

---

### Question 28
**Réponse : B) Le nombre de sessions concurrentes autorisées**

**Explication :** SESSIONS_PER_USER limite le nombre de sessions concurrentes autorisées pour un utilisateur.

---

### Question 29
**Réponse : B) Le temps CPU maximal pour une session en centièmes de secondes**

**Explication :** CPU_PER_SESSION définit le temps CPU maximal pour une session en centièmes de secondes.

---

### Question 30
**Réponse : B) Le temps total autorisé pour une session en minutes**

**Explication :** CONNECT_TIME limite le temps total autorisé pour une session en minutes. C'est pratique pour les examens de TP minutés.

---

### Question 31
**Réponse : B) Le temps d'inactivité autorisé en minutes au sein d'une même session**

**Explication :** IDLE_TIME définit le temps d'inactivité autorisé, en minutes, au sein d'une même session. Utile pour déconnecter les utilisateurs inactifs.

---

### Question 32
**Réponse : B) Le nombre de tentatives de connexion avant de bloquer l'utilisateur**

**Explication :** FAILED_LOGIN_ATTEMPTS contrôle le nombre de tentatives de connexion échouées avant de bloquer l'utilisateur.

---

### Question 33
**Réponse : B) Le nombre de jours de validité du mot de passe**

**Explication :** PASSWORD_LIFE_TIME définit le nombre de jours de validité du mot de passe. Le mot de passe expire s'il n'est pas changé dans cette période.

---

### Question 34
**Réponse : B) Le nombre de jours d'interdiction d'accès après que le nombre de tentatives de connexion a été atteint**

**Explication :** PASSWORD_LOCK_TIME indique le nombre de jours d'interdiction d'accès à un compte après que le nombre maximum de tentatives de connexion a été atteint.

---

### Question 35
**Réponse : B) Le nombre de jours de la période de grâce qui prolonge l'utilisation du mot de passe avant son changement**

**Explication :** PASSWORD_GRACE_TIME définit le nombre de jours d'une période de grâce qui prolonge l'utilisation du mot de passe avant son changement. Un message d'avertissement s'affiche lors des connexions.

---

### Question 36
**Réponse : B) ALTER USER nom_user PROFILE nom_profil**

**Explication :** Pour affecter un profil à un utilisateur :
```sql
ALTER USER Ahmed PROFILE profil_Etudiants;
```

---

### Question 37
**Réponse : B) ALTER PROFILE**

**Explication :** Pour pouvoir modifier un profil, vous devez posséder le privilège ALTER PROFILE.

---

### Question 38
**Réponse : B) Ne peut pas être supprimé**

**Explication :** Le profil DEFAULT ne peut pas être supprimé. C'est le profil de base attribué par défaut à tout utilisateur sans profil explicite.

---

### Question 39
**Réponse : B) Permet de supprimer le profil même si des utilisateurs en sont pourvus, et affecte le profil DEFAULT à ces derniers**

**Explication :** L'option CASCADE dans DROP PROFILE permet de supprimer le profil même si des utilisateurs en sont pourvus. Le profil DEFAULT est alors affecté à ces utilisateurs.

---

### Question 40
**Réponse : B) Le privilège système est un droit d'exécuter une instruction SQL, le privilège objet est un droit d'accéder à un objet d'un autre schéma**

**Explication :** 
- **Privilège système** : droit d'exécuter une instruction SQL (CREATE TABLE, CREATE SESSION, etc.)
- **Privilège objet** : droit d'accéder à un objet d'un autre schéma (SELECT, INSERT, UPDATE, DELETE sur une table)

---

### Question 41
**Réponse : B) CREATE TABLE, CREATE SESSION, ALTER USER**

**Explication :** Les privilèges système incluent : CREATE TABLE, CREATE SESSION, CREATE TRIGGER, CREATE PROCEDURE, CREATE VIEW, ALTER USER, DROP USER, etc.

---

### Question 42
**Réponse : B) SELECT, INSERT, UPDATE, DELETE sur une table**

**Explication :** Les privilèges objets incluent : SELECT, INSERT, UPDATE, DELETE sur des tables ou vues spécifiques, EXECUTE sur des procédures/fonctions.

---

### Question 43
**Réponse : B) Attribuer un ou plusieurs privilèges à un ou plusieurs bénéficiaires**

**Explication :** La commande GRANT permet d'attribuer un ou plusieurs privilèges (système ou objet) à un ou plusieurs bénéficiaires (utilisateurs ou rôles).

---

### Question 44
**Réponse : B) GRANT privilège TO utilisateur [WITH ADMIN OPTION]**

**Explication :** La syntaxe est :
```sql
GRANT { privilègeSystème | nomRôle | ALL PRIVILEGES }
TO { utilisateur | nomRôle | PUBLIC }
[WITH ADMIN OPTION];
```

---

### Question 45
**Réponse : B) Tous les privilèges système à l'utilisateur**

**Explication :** ALL PRIVILEGES accorde tous les privilèges système à l'utilisateur ou au rôle spécifié.

---

### Question 46
**Réponse : B) Tous les utilisateurs**

**Explication :** PUBLIC permet d'attribuer le(s) privilège(s) à tous les utilisateurs de la base de données.

---

### Question 47
**Réponse : B) Retransmettre le(s) privilège(s) reçu(s) à une tierce personne**

**Explication :** WITH ADMIN OPTION permet d'attribuer aux bénéficiaires le droit de retransmettre le(s) privilège(s) reçu(s) à une tierce personne.

---

### Question 48
**Réponse : B) Annuler un privilège système ou un rôle**

**Explication :** La commande REVOKE permet d'annuler un privilège système ou un rôle d'un utilisateur ou d'un rôle.

---

### Question 49
**Réponse : B) REVOKE privilège FROM utilisateur**

**Explication :** La syntaxe est :
```sql
REVOKE { privilègeSystème | nomRôle | ALL PRIVILEGES }
FROM { utilisateur | nomRôle | PUBLIC };
```

---

### Question 50
**Réponse : B) Détenir au préalable ce privilège avec l'option WITH ADMIN OPTION**

**Explication :** Pour pouvoir révoquer un privilège ou un rôle, vous devez détenir au préalable ce privilège avec l'option WITH ADMIN OPTION.

---

### Question 51
**Réponse : B) GRANT privilège ON objet TO utilisateur [WITH GRANT OPTION]**

**Explication :** La syntaxe pour les privilèges objet est :
```sql
GRANT privilègeObjet ON [schéma.]nomObjet
TO { utilisateur | nomRôle | PUBLIC }
[WITH GRANT OPTION];
```

---

### Question 52
**Réponse : B) Retransmettre les privilèges objets reçus à une tierce personne**

**Explication :** WITH GRANT OPTION permet de donner aux bénéficiaires le droit de retransmettre les privilèges objets reçus à une tierce personne.

---

### Question 53
**Réponse : B) GRANT UPDATE(colonne) ON table TO utilisateur**

**Explication :** Pour accorder le privilège de modification sur une colonne spécifique :
```sql
GRANT UPDATE(typeAvion) ON Avion TO utilisateur;
```

---

### Question 54
**Réponse : B) Permet de supprimer la contrainte référentielle entre deux tables de schémas distincts**

**Explication :** CASCADE CONSTRAINTS concerne les privilèges REFERENCES ou ALL PRIVILEGES. Cette option permet de supprimer la contrainte référentielle entre deux tables de schémas distincts.

---

### Question 55
**Réponse : B) Un groupe nommé de privilèges qu'on accorde en groupe à des utilisateurs ou d'autres rôles**

**Explication :** Les rôles sont des groupes nommés de privilèges qu'on accorde en groupe à des utilisateurs ou à d'autres rôles. Ils simplifient la gestion des privilèges.

---

### Question 56
**Réponse : B) CREATE ROLE nom_role**

**Explication :** Pour créer un rôle :
```sql
CREATE ROLE manager;
```

---

### Question 57
**Réponse : B) GRANT privilège TO rôle**

**Explication :** Pour accorder des privilèges à un rôle :
```sql
GRANT CREATE VIEW, CREATE PROCEDURE TO manager;
GRANT SELECT, INSERT ON emp TO manager;
```

---

### Question 58
**Réponse : B) GRANT rôle TO utilisateur1, utilisateur2, ...**

**Explication :** Pour accorder un rôle à des utilisateurs :
```sql
GRANT manager TO user1, user2, user3;
```

---

### Question 59
**Réponse : B) REVOKE rôle FROM utilisateur**

**Explication :** Pour annuler un rôle à un utilisateur :
```sql
REVOKE manager FROM user1;
```

---

### Question 60
**Réponse : B) Le privilège GRANT ANY ROLE ou avoir les privilèges WITH ADMIN OPTION**

**Explication :** Pour annuler un rôle, il faut avoir le privilège GRANT ANY ROLE, ou avoir les privilèges WITH ADMIN OPTION.

---

### Question 61
**Réponse : B) INSERT, UPDATE, DELETE, SELECT sur les relations dont on a les privilèges et créer des vues**

**Explication :** Le rôle prédéfini CONNECT permet INSERT, UPDATE, DELETE, SELECT sur les relations dont on a les privilèges. Il permet aussi de créer des vues.

---

### Question 62
**Réponse : B) Créer des tables, vues, triggers et procédures**

**Explication :** Le rôle prédéfini RESOURCE permet de créer des tables, des vues, des triggers et des procédures.

---

### Question 63
**Réponse : B) Tous les privilèges système avec ADMIN OPTION**

**Explication :** Le rôle prédéfini DBA accorde tous les privilèges système avec l'option ADMIN OPTION, permettant de transmettre ces privilèges.

---

### Question 64
**Réponse : B) D'exporter les données de la base**

**Explication :** Le rôle prédéfini EXP_FULL_DATABASE donne tous les privilèges nécessaires pour exporter les données de la base.

---

### Question 65
**Réponse : B) D'importer des données dans la base**

**Explication :** Le rôle prédéfini IMP_FULL_DATABASE donne tous les privilèges nécessaires pour importer des données dans la base.

---

### Question 66
**Réponse : B) Les autorisations sur les tables et vues pour lesquelles l'utilisateur est propriétaire ou bénéficiaire**

**Explication :** USER_TAB_GRANTS liste les autorisations sur les tables et les vues pour lesquelles l'utilisateur est le propriétaire, ou ayant donné ou reçu l'autorisation.

---

### Question 67
**Réponse : B) Les rôles donnés aux utilisateurs et aux autres rôles**

**Explication :** DBA_ROLE_PRIVS affiche les rôles donnés aux utilisateurs et aux autres rôles.

---

### Question 68
**Réponse : B) Les privilèges système donnés aux rôles**

**Explication :** ROLE_SYS_PRIVS montre les privilèges système qui ont été accordés aux rôles.

---

### Question 69
**Réponse : B) Les privilèges sur les tables donnés aux rôles**

**Explication :** ROLE_TAB_PRIVS montre les privilèges sur les tables qui ont été accordés aux rôles.

---

### Question 70
**Réponse : B) L'espace mémoire privé alloué dans la SGA**

**Explication :** PRIVATE_SGA limite l'espace mémoire privé alloué dans la SGA (System Global Area) pour un utilisateur.
