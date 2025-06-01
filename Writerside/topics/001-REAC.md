# Le REAC

Le Référentiel d'Emplois, d'Activités et de Compétences (REAC) pour le titre
professionnel de **Concepteur Développeur d'Applications (CDA)** définit les activités et compétences 
associées à ce titre professionnel. 
Ce document officiel est disponible [ici](https://www.banque.di.afpa.fr/EspaceEmployeursCandidatsActeurs/titre-professionnel/01281m04).


**TITRE PROFESSIONNEL : CONCEPTEUR DÉVELOPPEUR D'APPLICATIONS (CDA)**

Le titre professionnel de Concepteur Développeur d'Applications se compose de trois activités-types,
chacune comportant plusieurs compétences. Le jury valide les activités

---

## **ACTIVITÉ-TYPE 1 : Concevoir et développer les composants d'interface utilisateur en intégrant les recommandations de sécurité.**

**Description générale de l'activité-type :**


Le concepteur développeur d'applications analyse les besoins exprimés par un client ou un chef de projet pour une
interface utilisateur (UI). Il propose des solutions graphiques et ergonomiques, réalise des maquettes, puis développe
les composants d'interface (desktop, web front-end et back-end) en respectant les bonnes pratiques de développement,
d'accessibilité et de sécurité (protection contre les failles XSS, CSRF, etc.). Il s'assure de la compatibilité avec les
différents navigateurs ou environnements d'exécution.

---

### **Compétence 1.1 : Maquetter une application.**

* **Description détaillée :** Cette compétence implique la capacité à traduire des besoins fonctionnels en
  représentations visuelles d'une interface utilisateur. Le développeur doit comprendre les principes d'ergonomie (
  UX/UI), créer des wireframes (maquettes filaires), des mockups (maquettes graphiques statiques) et potentiellement des
  prototypes interactifs. Il doit être capable de présenter et d'argumenter ses choix de conception.
* **Conseils pour réussir :**
    * Analyser et spécifier les besoins utilisateurs et les objectifs de l'application.
    * Utiliser des outils de maquettage (Figma, Adobe XD, Balsamiq, voire papier/crayon pour les premières ébauches).
    * Itérer sur les maquettes en fonction des retours.
    * Penser "mobile-first" si pertinent.
    * Prendre en compte l'accessibilité (WCAG) dès cette phase.
* **Éléments essentiels et facultatifs :**
    * **Essentiels :** Production de wireframes clairs, compréhension des principes de base de l'UX/UI, capacité à
      justifier ses choix.
    * **Facultatifs :** Maîtrise avancée d'un outil de maquettage spécifique, création de prototypes interactifs
      complexes, tests utilisateurs sur les maquettes.
* **Éléments de preuve à apporter au jury :**
    * Portfolio de maquettes (wireframes, mockups) pour différents projets.
    * Documentation expliquant les choix de conception et les parcours utilisateurs.
    * Présentation des outils utilisés.
* **Exemples concrets de réalisations :**
    1. Maquette d'une application de gestion de tâches (To-Do list) avec écrans de connexion, liste de tâches,
       ajout/modification de tâche.
    2. Wireframes pour le processus de commande d'un site e-commerce.
    3. Mockup d'un tableau de bord administrateur pour une application web.
    4. Prototype cliquable d'une application mobile de réservation de restaurants.
    5. Refonte graphique d'une interface existante, avec maquettes avant/après et justifications.
* **Conseils pour acquérir ces compétences :**
    * Se former aux principes de l'UX/UI design (cours en ligne, tutoriels).
    * Pratiquer avec des outils de maquettage sur des projets personnels ou fictifs.
    * Analyser des interfaces existantes (bonnes et mauvaises) et tenter de les améliorer.
    * Solliciter des retours sur ses maquettes.

---

### **Compétence 1.2 : Développer une interface utilisateur de type desktop.**

* **Description détaillée :** Le développeur doit être capable de créer des applications qui s'exécutent nativement sur
  un système d'exploitation (Windows, macOS, Linux). Cela implique la maîtrise d'un langage de programmation adapté (ex:
  Java avec Swing/JavaFX, C# avec WinForms/WPF, Python avec Tkinter/PyQt) et des frameworks associés pour construire des
  fenêtres, des menus, des formulaires et gérer les interactions utilisateur.
* **Conseils pour réussir :**
    * Choisir un langage et un framework et s'y tenir pour acquérir une expertise.
    * Bien structurer son code (ex: modèle MVC ou MVVM).
    * Gérer proprement les événements utilisateur.
    * Penser à la performance et à la réactivité de l'interface.
* **Éléments essentiels et facultatifs :**
    * **Essentiels :** Création d'interfaces fonctionnelles avec des composants standards (boutons, champs de texte,
      listes), gestion des événements, connexion à une source de données simple.
    * **Facultatifs :** Utilisation de composants graphiques avancés, personnalisation de l'apparence (thèmes), gestion
      du multithreading pour éviter de bloquer l'UI, packaging de l'application pour déploiement.
* **Éléments de preuve à apporter au jury :**
    * Application desktop fonctionnelle et son code source.
    * Démonstration live de l'application.
    * Schémas d'architecture de l'interface.
* **Exemples concrets de réalisations :**
    1. Développement d'un petit logiciel de gestion de bibliothèque personnelle (Java Swing).
    2. Création d'un client de messagerie simple (C# WPF).
    3. Un éditeur de texte basique avec fonctionnalités de sauvegarde et d'ouverture (Python Tkinter).
    4. Une application de conversion d'unités (JavaFX).
    5. Un jeu simple comme un Puissance 4 ou un démineur avec interface graphique.
* **Conseils pour acquérir ces compétences :**
    * Suivre des tutoriels dédiés au développement desktop avec un langage spécifique.
    * Commencer par des applications simples et augmenter progressivement la complexité.
    * Étudier le code source d'applications desktop open-source.

---

### **Compétence 1.3 : Développer des composants d'accès aux données.**

* **Description détaillée :** Il s'agit de créer la logique permettant à l'application (desktop, web back-end) de lire
  et d'écrire des informations dans une source de données (base de données relationnelle, NoSQL, fichiers, API
  externes). Cela inclut l'écriture de requêtes (SQL ou spécifiques au type de base), la gestion des connexions, la
  transformation des données (mapping objet-relationnel avec un ORM par exemple), et la gestion des erreurs. La sécurité
  des accès (prévention des injections SQL) est primordiale.
* **Conseils pour réussir :**
    * Bien comprendre le modèle de données.
    * Utiliser des ORM (Object-Relational Mapper) comme Hibernate (Java), Entity Framework (C#), SQLAlchemy (Python)
      pour simplifier et sécuriser l'accès.
    * Écrire des requêtes optimisées.
    * Sécuriser systématiquement les entrées pour prévenir les injections SQL.
    * Gérer les transactions de manière appropriée.
* **Éléments essentiels et facultatifs :**
    * **Essentiels :** Connexion à une base de données, exécution d'opérations CRUD (Create, Read, Update, Delete) de
      base, utilisation de requêtes paramétrées pour la sécurité.
    * **Facultatifs :** Maîtrise d'un ORM avancé, optimisation des performances des requêtes, gestion de pools de
      connexions, accès à des sources de données NoSQL ou des API.
* **Éléments de preuve à apporter au jury :**
    * Code source des classes d'accès aux données (DAO, Repositories).
    * Schéma de la base de données interrogée.
    * Exemples de requêtes SQL ou d'utilisation d'ORM.
    * Tests unitaires des composants d'accès aux données.
* **Exemples concrets de réalisations :**
    1. Création d'une classe `UserDAO` en Java avec JDBC pour gérer les utilisateurs dans une base MySQL.
    2. Développement d'un repository avec Entity Framework (C#) pour interagir avec une base SQL Server.
    3. Mise en place de l'accès à une API REST externe pour récupérer des données météo.
    4. Utilisation de SQLAlchemy (Python) pour mapper des objets Python à des tables PostgreSQL.
    5. Développement d'un module important/exportant des données au format CSV ou JSON.
* **Conseils pour acquérir ces compétences :**
    * Apprendre le SQL.
    * Se familiariser avec les concepts de bases de données relationnelles et NoSQL.
    * Pratiquer avec des drivers de base de données (JDBC, ODBC) puis avec des ORM.
    * Lire la documentation sur la sécurité des bases de données (ex: OWASP SQL Injection).

---

### **Compétence 1.4 : Développer la partie front-end d'une interface utilisateur web.**

* **Description détaillée :** Le développeur crée la partie visible et interactive d'un site ou d'une application web,
  s'exécutant dans le navigateur du client. Cela implique la maîtrise des langages HTML (structure), CSS (style), et
  JavaScript (dynamisme). Il utilise souvent des frameworks/bibliothèques JavaScript (React, Angular, Vue.js) pour
  construire des interfaces réactives et maintenables. L'intégration des maquettes, le responsive design,
  l'accessibilité et la communication avec le back-end via des API (REST, GraphQL) sont des aspects clés.
* **Conseils pour réussir :**
    * Maîtriser les fondamentaux HTML, CSS, JavaScript avant de passer aux frameworks.
    * Adopter une approche "responsive design" dès le début.
    * Utiliser les outils de développement du navigateur (inspecteur, console, debugger).
    * Optimiser les performances (temps de chargement, fluidité).
    * Respecter les standards d'accessibilité (ARIA).
* **Éléments essentiels et facultatifs :**
    * **Essentiels :** HTML sémantique, CSS pour la mise en page et le style (Flexbox, Grid), JavaScript pour la
      manipulation du DOM et les interactions de base, appels AJAX/Fetch à des API.
    * **Facultatifs :** Maîtrise d'un framework JavaScript moderne (React, Angular, Vue.js), utilisation de
      préprocesseurs CSS (Sass, Less), gestion d'état avancée (Redux, Vuex), tests front-end (Jest, Cypress),
      Progressive Web Apps (PWA).
* **Éléments de preuve à apporter au jury :**
    * Applications web fonctionnelles (liens vers des sites déployés ou démonstrations locales).
    * Code source front-end (HTML, CSS, JavaScript, et code du framework utilisé).
    * Utilisation des outils de développement du navigateur pour montrer la structure et le débogage.
* **Exemples concrets de réalisations :**
    1. Création d'un site vitrine responsive avec HTML, CSS et un peu de JavaScript pour des animations.
    2. Développement d'une Single Page Application (SPA) de type blog avec React et appels à une API REST.
    3. Intégration d'une maquette Figma en HTML/CSS responsive pour un site e-commerce.
    4. Création d'un formulaire dynamique avec validation en temps réel en JavaScript (ou Vue.js).
    5. Développement d'un tableau de bord interactif affichant des données récupérées d'une API (Angular).
* **Conseils pour acquérir ces compétences :**
    * Suivre des cours complets sur le développement web front-end (OpenClassrooms, Udemy, freeCodeCamp).
    * Réaliser de nombreux projets pratiques, en commençant par des sites statiques puis en intégrant du JavaScript et
      des frameworks.
    * Contribuer à des projets open-source.
    * Se tenir à jour avec l'écosystème JavaScript en constante évolution.

---

### **Compétence 1.5 : Développer la partie back-end d'une interface utilisateur web.**

* **Description détaillée :** Le développeur crée la logique serveur d'une application web. Cela inclut la gestion des
  requêtes HTTP, le routage, l'authentification et l'autorisation des utilisateurs, la validation des données,
  l'interaction avec la base de données (via les composants d'accès aux données), et la préparation des réponses (
  souvent au format JSON pour les API, ou HTML pour les applications traditionnelles). Il utilise des langages serveur (
  Java avec Spring, PHP avec Symfony/Laravel, Python avec Django/Flask, Node.js avec Express, C# avec ASP.NET Core) et
  leurs frameworks. La sécurité (OWASP Top 10) est cruciale.
* **Conseils pour réussir :**
    * Bien concevoir ses API (RESTful ou GraphQL).
    * Mettre en place une authentification et une gestion des droits robustes.
    * Valider toutes les données entrantes.
    * Gérer les erreurs et journaliser les informations importantes.
    * Écrire des tests unitaires et d'intégration.
* **Éléments essentiels et facultatifs :**
    * **Essentiels :** Création de routes, gestion des requêtes/réponses HTTP, interaction avec une base de données,
      logique métier simple, principes de sécurité de base (ex: protection contre les injections).
    * **Facultatifs :** Maîtrise d'un framework back-end avancé, mise en place d'OAuth2/JWT pour l'authentification,
      conception d'API GraphQL, utilisation de microservices, logging avancé et monitoring.
* **Éléments de preuve à apporter au jury :**
    * Code source du back-end (API, logique métier).
    * Documentation d'API (ex: Swagger/OpenAPI).
    * Démonstration du fonctionnement de l'API avec un client (Postman, front-end).
    * Schémas d'architecture.
* **Exemples concrets de réalisations :**
    1. Développement d'une API REST avec Node.js/Express pour une application de gestion de notes.
    2. Création d'un back-end avec Spring Boot (Java) fournissant des services pour une application e-commerce (gestion
       produits, paniers, commandes).
    3. Mise en place d'un système d'authentification utilisateur avec gestion de sessions ou tokens JWT (Python/Django).
    4. Développement d'un service web en PHP/Symfony qui génère des rapports PDF à partir de données en base.
    5. Création d'une API en C# ASP.NET Core ou Java Spring Boot pour une application de réservation, avec validation 
       des données et
       interaction avec une base SQL Server.
* **Conseils pour acquérir ces compétences :**
    * Choisir un langage back-end et un framework populaire et s'y former.
    * Comprendre les principes HTTP, REST.
    * Pratiquer la création d'API pour des projets personnels.
    * Étudier les bonnes pratiques de sécurité web (OWASP).

---

## **ACTIVITÉ-TYPE 2 : Concevoir et développer la persistance des données en intégrant les recommandations de sécurité.**

**Description générale de l'activité-type :**
Le concepteur développeur d'applications est responsable de la manière dont les données de l'application sont stockées,
organisées et sécurisées. Il conçoit la structure des bases de données (relationnelles ou NoSQL), met en place ces
bases, et développe des procédures ou des scripts spécifiques au langage de la base de données (ex: procédures stockées
en SQL) pour optimiser les traitements ou encapsuler une logique complexe. La sécurité des données (confidentialité,
intégrité, disponibilité) est une préoccupation constante.

---

### **Compétence 2.1 : Concevoir une base de données.**

* **Description détaillée :** Cette compétence consiste à traduire les besoins de l'application en un modèle de données
  logique puis physique. Pour les bases relationnelles, cela implique la création de diagrammes Entité-Association (ou
  MCD/MLD), la définition des tables, des colonnes, des types de données, des clés primaires et étrangères, des
  contraintes d'intégrité et l'application des formes normales pour éviter la redondance et assurer la cohérence. Pour
  les bases NoSQL, la modélisation dépendra du type de base (document, clé-valeur, graphe, etc.) et se concentrera sur
  les schémas d'accès.
* **Conseils pour réussir :**
    * Bien analyser les besoins en données de l'application.
    * Appliquer les formes normales (pour le relationnel) de manière pragmatique.
    * Penser aux performances futures et à l'évolutivité.
    * Documenter le modèle de données.
* **Éléments essentiels et facultatifs :**
    * **Essentiels :** Création d'un schéma relationnel (MLD) avec tables, clés, relations, types de données corrects
      pour une application simple à moyenne. Compréhension des 3 premières formes normales.
    * **Facultatifs :** Modélisation pour bases NoSQL, dénormalisation stratégique pour la performance, conception de
      data warehouses, utilisation d'outils de modélisation avancés (ex: PowerDesigner, Erwin).
* **Éléments de preuve à apporter au jury :**
    * Modèles Conceptuels de Données (MCD) et Modèles Logiques de Données (MLD) ou diagrammes équivalents.
    * Scripts SQL de création de tables (DDL - Data Definition Language).
    * Justification des choix de conception (normalisation, types de données).
* **Exemples concrets de réalisations :**
    1. Conception du schéma de base de données pour un système de gestion de blog (tables utilisateurs, articles,
       commentaires, catégories).
    2. Modélisation d'une base de données pour un site e-commerce (produits, clients, commandes, lignes de commande).
    3. Création du MLD pour une application de suivi de projets (projets, tâches, utilisateurs assignés, statuts).
    4. Conception d'une base de données pour un système de réservation de salles.
    5. Modélisation d'une collection MongoDB pour stocker des profils utilisateurs avec des données flexibles.
* **Conseils pour acquérir ces compétences :**
    * Étudier la théorie de la modélisation des données (Merise, UML).
    * S'entraîner à créer des modèles pour des cas d'usage variés.
    * Utiliser des outils de modélisation (même simples comme draw.io ou des outils spécifiques).

---

### **Compétence 2.2 : Mettre en place une base de données.**

* **Description détaillée :** Une fois la conception réalisée, le développeur doit créer physiquement la base de données
  sur un serveur. Cela inclut l'installation et la configuration du Système de Gestion de Base de Données (SGBD) si
  nécessaire, l'exécution des scripts de création de la structure (tables, vues, index), la configuration des droits
  d'accès des utilisateurs de la base, et l'insertion de données initiales (jeux de tests).
* **Conseils pour réussir :**
    * Utiliser des scripts pour automatiser la création et la mise à jour du schéma (migrations).
    * Définir des index pertinents pour optimiser les requêtes.
    * Gérer les droits d'accès de manière sécurisée (principe du moindre privilège).
* **Éléments essentiels et facultatifs :**
    * **Essentiels :** Installation d'un SGBD commun (MySQL, PostgreSQL, SQL Server Express), exécution de scripts DDL
      pour créer la structure, création d'utilisateurs de base de données avec des droits limités.
    * **Facultatifs :** Configuration avancée du SGBD, mise en place de stratégies de sauvegarde et de restauration,
      utilisation d'outils de migration de base de données (Flyway, Liquibase), configuration de la réplication.
* **Éléments de preuve à apporter au jury :**
    * Scripts SQL DDL fonctionnels.
    * Démonstration de la base de données créée (via un client SQL ou l'application).
    * Documentation sur la configuration des droits d'accès.
* **Exemples concrets de réalisations :**
    1. Installation de MySQL et création d'une base de données pour un projet de blog via des scripts SQL.
    2. Déploiement d'une base PostgreSQL sur un serveur distant et configuration des accès pour une application web.
    3. Mise en place d'une base SQL Server Express locale pour un développement d'application desktop.
    4. Utilisation de Docker pour instancier rapidement une base de données MongoDB pour un projet.
    5. Écriture d'un script d'initialisation de base de données incluant la création des tables et l'insertion de
       données de test.
* **Conseils pour acquérir ces compétences :**
    * Installer et configurer différents SGBD sur sa machine locale ou sur un serveur.
    * Apprendre les commandes DDL du SQL.
    * Se familiariser avec les outils d'administration des SGBD (phpMyAdmin, pgAdmin, SQL Server Management Studio).

---

### **Compétence 2.3 : Développer des composants dans le langage d'une base de données.**

* **Description détaillée :** Certains traitements de données peuvent être plus efficacement réalisés directement au
  sein de la base de données à l'aide de son langage procédural (ex: PL/SQL pour Oracle, T-SQL pour SQL Server, PL/pgSQL
  pour PostgreSQL). Le développeur peut être amené à créer des procédures stockées, des fonctions, des triggers (
  déclencheurs) pour automatiser des tâches, valider des données, ou optimiser des opérations complexes.
* **Conseils pour réussir :**
    * Identifier les cas où l'utilisation de logique en base est pertinente (performance, encapsulation).
    * Bien tester ses procédures et triggers.
    * Documenter le code écrit en langage de base de données.
    * Faire attention à la portabilité si l'application doit supporter plusieurs SGBD.
* **Éléments essentiels et facultatifs :**
    * **Essentiels :** Écriture de requêtes SQL complexes (jointures, sous-requêtes, agrégations), création de vues
      simples.
    * **Facultatifs :** Développement de procédures stockées, de fonctions, de triggers, optimisation avancée de
      requêtes, utilisation de fonctionnalités spécifiques à un SGBD (fenêtrage, CTEs avancées).
* **Éléments de preuve à apporter au jury :**
    * Code source de procédures stockées, fonctions, triggers.
    * Explication de leur utilité et de leur fonctionnement.
    * Tests montrant leur exécution et leur impact.
* **Exemples concrets de réalisations :**
    1. Création d'une procédure stockée en T-SQL pour calculer le total d'une commande et mettre à jour un stock.
    2. Développement d'un trigger en PL/pgSQL pour historiser les modifications sur une table sensible.
    3. Écriture d'une fonction SQL pour formater des données d'une manière spécifique.
    4. Optimisation d'une requête lente en la réécrivant ou en la déplaçant dans une procédure stockée.
    5. Création d'une vue SQL pour simplifier l'accès à des données jointes fréquemment utilisées.
* **Conseils pour acquérir ces compétences :**
    * Approfondir sa connaissance du SQL.
    * Étudier le langage procédural spécifique au SGBD le plus utilisé (T-SQL, PL/SQL, PL/pgSQL).
    * Pratiquer sur des cas concrets d'optimisation ou d'automatisation.

---

### **ACTIVITÉ-TYPE 3 : Concevoir et développer une application multicouche répartie en intégrant les recommandations de sécurité.**

**Description générale de l'activité-type :**
Le concepteur développeur d'applications participe à l'ensemble du cycle de vie d'un projet applicatif plus complexe,
souvent organisé en couches logicielles (présentation, métier, accès aux données) et potentiellement distribué sur
plusieurs serveurs (architecture répartie, microservices). Il collabore avec une équipe, utilise des outils de gestion
de projet et de versionning, conçoit l'architecture globale, développe les différentes couches, met en place des tests,
et participe au déploiement de l'application. La sécurité est intégrée à chaque étape.

---

### **Compétence 3.1 : Collaborer à la gestion d'un projet informatique et à l'organisation de l'environnement de développement.**

* **Description détaillée :** Le développeur doit pouvoir s'intégrer dans une équipe projet. Cela signifie comprendre et
  appliquer des méthodologies de gestion de projet (Agile/Scrum, cycle en V), utiliser des outils de suivi des tâches (
  Jira, Trello), de gestion de version (Git), et participer aux rituels d'équipe (daily stand-ups, sprint planning,
  rétrospectives). Il configure et maintient son environnement de développement (IDE, serveurs locaux, bases de données
  de test).
* **Conseils pour réussir :**
    * Être proactif dans la communication et la collaboration.
    * Maîtriser Git (branches, commits, merges, rebase).
    * Être rigoureux dans le suivi des tâches.
    * Savoir estimer la charge de travail.
* **Éléments essentiels et facultatifs :**
    * **Essentiels :** Utilisation de Git pour le versionning (commit, push, pull, branch, merge), participation active
      à des rituels Agile (si la méthode est utilisée), utilisation d'un outil de ticketing.
    * **Facultatifs :** Administration avancée de Git (gestion de conflits complexes, hooks), rôle de Scrum Master ou
      Product Owner dans un projet, mise en place d'une pipeline CI/CD simple (ex: GitLab CI, GitHub Actions).
* **Éléments de preuve à apporter au jury :**
    * Historique Git d'un projet (contributions, branches).
    * Tableau de suivi des tâches (capture d'écran ou accès si possible).
    * Description de son rôle et de ses interactions au sein d'un projet d'équipe.
    * Documentation de l'environnement de développement.
* **Exemples concrets de réalisations :**
    1. Participation active à un projet d'équipe utilisant Scrum, avec gestion des tâches sur Jira et code source sur
       GitLab.
    2. Mise en place d'un workflow Git-flow pour un projet personnel ou d'équipe.
    3. Configuration d'un environnement de développement Dockerisé pour un projet web.
    4. Rédaction de la documentation pour l'installation et la configuration d'un projet.
    5. Contribution régulière à un projet open-source via des pull requests.
* **Conseils pour acquérir ces compétences :**
    * Participer à des projets de groupe (scolaires, associatifs, open-source).
    * Se former à Git et aux méthodologies Agiles.
    * Utiliser systématiquement Git pour tous ses projets, même personnels.
    * Mettre en place des environnements de développement reproductibles (ex: avec Docker).

---

### **Compétence 3.2 : Concevoir une application.**

* **Description détaillée :** Il s'agit de définir l'architecture logicielle de l'application. Le développeur choisit
  les technologies, les frameworks, les patrons de conception (design patterns comme MVC, Singleton, Factory, Observer,
  etc.) et la structure générale de l'application (monolithique, microservices, N-tiers). Il modélise les interactions
  entre les différents composants et couches. La documentation de cette conception (diagrammes UML comme les diagrammes
  de classes, de séquences, de composants) est importante.
* **Conseils pour réussir :**
    * Bien comprendre les exigences fonctionnelles et non-fonctionnelles (performance, sécurité, maintenabilité,
      évolutivité).
    * Ne pas sur-architecturer pour des besoins simples.
    * Justifier ses choix technologiques et architecturaux.
    * Utiliser des diagrammes pour visualiser et communiquer la conception.
* **Éléments essentiels et facultatifs :**
    * **Essentiels :** Application d'une architecture en couches (ex: présentation, métier, données), utilisation de
      diagrammes de classes simples, justification des choix de conception de base.
    * **Facultatifs :** Conception d'architectures microservices, utilisation avancée des design patterns, modélisation
      UML complète (diagrammes de composants, de déploiement), choix d'architectures orientées événements.
* **Éléments de preuve à apporter au jury :**
    * Diagrammes d'architecture (UML : classes, séquences, composants).
    * Documentation technique expliquant les choix de conception, les technologies et les patterns utilisés.
    * Présentation de la structure du code reflétant l'architecture.
* **Exemples concrets de réalisations :**
    1. Conception d'une application web N-tiers avec une couche présentation (React), une couche API (Spring Boot) et
       une couche d'accès aux données (JPA/Hibernate).
    2. Modélisation UML (diagramme de classes et de séquences) pour le processus de commande d'un site e-commerce.
    3. Choix et justification de l'utilisation du pattern "Strategy" pour implémenter différents modes de calcul dans
       une application.
    4. Conception d'une architecture modulaire pour une application desktop permettant d'ajouter des plugins.
    5. Ébauche d'une architecture microservices pour une plateforme SaaS, avec identification des services et de leurs
       interactions.
* **Conseils pour acquérir ces compétences :**
    * Étudier les architectures logicielles (N-tiers, microservices, etc.).
    * Apprendre les design patterns (livre du "Gang of Four", ressources en ligne).
    * Se former à UML.
    * Analyser l'architecture d'applications open-source bien conçues.
    * Commencer par concevoir des applications de taille modeste et augmenter la complexité.

---

### **Compétence 3.3 : Développer des composants métier.**

* **Description détaillée :** Le développeur implémente la logique fonctionnelle de l'application, c'est-à-dire les
  règles et les traitements spécifiques au domaine d'activité (par exemple, calcul d'un prix, validation d'une commande,
  gestion d'un workflow). Ces composants sont généralement situés dans une couche métier (ou "service") distincte,
  indépendante de l'interface utilisateur et de l'accès aux données, pour favoriser la réutilisabilité et la
  testabilité.
* **Conseils pour réussir :**
    * Bien isoler la logique métier des autres couches.
    * Écrire un code clair, maintenable et bien commenté.
    * Mettre en œuvre des tests unitaires pour valider la logique métier.
    * Utiliser des design patterns pertinents pour structurer le code.
* **Éléments essentiels et facultatifs :**
    * **Essentiels :** Implémentation de la logique métier dans des classes/modules séparés, respect des règles de
      gestion, gestion des exceptions.
    * **Facultatifs :** Application de principes de Domain-Driven Design (DDD), développement de moteurs de règles,
      utilisation de frameworks de workflow.
* **Éléments de preuve à apporter au jury :**
    * Code source des classes de service ou des composants métier.
    * Tests unitaires couvrant la logique métier.
    * Explication des règles de gestion implémentées.
* **Exemples concrets de réalisations :**
    1. Développement d'un service de calcul de tarifs pour une application de VTC, prenant en compte la distance, le
       temps et les majorations.
    2. Implémentation de la logique de validation d'un panier d'achat (vérification des stocks, calcul du total) dans un
       service `OrderService`.
    3. Création d'un composant gérant le workflow d'approbation de documents dans une application de GED.
    4. Développement des règles de gestion pour l'attribution de points de fidélité client.
    5. Implémentation d'un algorithme de recommandation simple dans une application e-commerce.
* **Conseils pour acquérir ces compétences :**
    * Se concentrer sur la résolution de problèmes algorithmiques.
    * Pratiquer la séparation des préoccupations dans ses projets.
    * Lire des ouvrages sur la conception logicielle et les bonnes pratiques de codage (ex: Clean Code).

---

### **Compétence 3.4 : Construire une application organisée en couches.**

* **Description détaillée :** Cette compétence synthétise plusieurs des précédentes. Il s'agit d'assembler les
  différentes parties de l'application (interface utilisateur, logique métier, accès aux données) en respectant une
  architecture en couches bien définie. Le développeur s'assure que les dépendances entre les couches sont correctes (
  ex: la couche présentation dépend de la couche métier, qui dépend de la couche d'accès aux données, mais pas
  l'inverse). Il utilise des mécanismes comme l'injection de dépendances pour lier les composants.
* **Conseils pour réussir :**
    * Respecter scrupuleusement les frontières entre les couches.
    * Utiliser l'injection de dépendances pour découpler les composants.
    * S'assurer que chaque couche a une responsabilité claire.
* **Éléments essentiels et facultatifs :**
    * **Essentiels :** Organisation du code en couches distinctes (ex: packages/namespaces séparés), respect des flux de
      dépendances.
    * **Facultatifs :** Utilisation de frameworks d'injection de dépendances (Spring DI, CDI, Autofac), application de
      principes SOLID avancés, mise en place d'une architecture hexagonale (ports & adapters).
* **Éléments de preuve à apporter au jury :**
    * Structure du projet montrant l'organisation en couches.
    * Code source illustrant les interactions entre les couches.
    * Diagramme d'architecture montrant les couches et leurs dépendances.
* **Exemples concrets de réalisations :**
    1. Développement complet d'une application web Java/Spring suivant une architecture 3-tiers (Controller, Service,
       Repository).
    2. Création d'une application C# .NET avec une couche UI (WPF), une couche métier (bibliothèque de classes) et une
       couche d'accès aux données (Entity Framework).
    3. Refonte d'une application monolithique mal structurée pour la séparer en couches logiques claires.
    4. Construction d'une API REST où les contrôleurs appellent des services qui eux-mêmes utilisent des repositories
       pour l'accès aux données.
    5. Développement d'une application Python/Django respectant la structure MVT (Modèle-Vue-Template), qui est une
       variante de MVC.
* **Conseils pour acquérir ces compétences :**
    * Étudier les architectures en couches et leurs avantages.
    * Pratiquer sur des projets complets, en étant rigoureux sur la séparation des responsabilités.
    * Utiliser des frameworks qui encouragent ou imposent une structuration en couches.

---

### **Compétence 3.5 : Développer une application mobile.**

* **Description détaillée :** Le développeur crée des applications pour smartphones et tablettes. Il peut s'agir de
  développement natif (Swift/Objective-C pour iOS, Java/Kotlin pour Android), ou multiplateforme (React Native, Flutter,
  Xamarin, .NET MAUI). Il doit prendre en compte les spécificités des plateformes mobiles : taille d'écran, interactions
  tactiles, capteurs (GPS, caméra), gestion de la batterie, notifications push, et les directives de design propres à
  chaque OS (Material Design pour Android, Human Interface Guidelines pour iOS).
* **Conseils pour réussir :**
    * Choisir une technologie (native ou cross-platform) et s'y spécialiser initialement.
    * Tester sur des appareils réels en plus des émulateurs.
    * Optimiser les performances et la consommation de ressources.
    * Porter une attention particulière à l'expérience utilisateur (UX) sur mobile.
* **Éléments essentiels et facultatifs :**
    * **Essentiels :** Création d'interfaces mobiles simples, gestion de la navigation entre écrans, interaction avec
      des API pour récupérer/envoyer des données.
    * **Facultatifs :** Utilisation de fonctionnalités natives avancées (capteurs, notifications push, stockage local),
      publication sur les stores (App Store, Google Play), développement avec des frameworks cross-platform performants.
* **Éléments de preuve à apporter au jury :**
    * Application mobile fonctionnelle (démonstration sur émulateur ou appareil réel).
    * Code source de l'application.
    * Explication des choix technologiques et de conception spécifiques au mobile.
* **Exemples concrets de réalisations :**
    1. Développement d'une application Android native (Kotlin) affichant une liste de news récupérées d'une API.
    2. Création d'une application de prise de notes simple avec React Native.
    3. Développement d'une application iOS (Swift) utilisant la géolocalisation pour afficher des points d'intérêt.
    4. Une application Flutter pour suivre ses dépenses personnelles.
    5. Portage d'une fonctionnalité d'un site web existant en application mobile.
* **Conseils pour acquérir ces compétences :**
    * Suivre les documentations officielles (Android Developers, Apple Developer).
    * Commencer par des tutoriels et des applications simples.
    * Se familiariser avec les outils de développement spécifiques (Android Studio, Xcode).
    * Rejoindre des communautés de développeurs mobiles.

---

### **Compétence 3.6 : Préparer et exécuter les plans de tests d'une application.**

* **Description détaillée :** Le développeur participe activement à la qualité du logiciel en définissant et en
  exécutant des stratégies de test. Cela inclut la rédaction de plans de tests (scénarios, cas de test, données de
  test), l'exécution de tests unitaires (pour valider des composants isolés), de tests d'intégration (pour vérifier
  l'interaction entre composants), et potentiellement de tests fonctionnels ou d'acceptation. Il utilise des frameworks
  de test (JUnit, NUnit, Jest, Selenium) et des outils de suivi des anomalies.
* **Conseils pour réussir :**
    * Tester tôt et souvent (approche "Shift Left Testing").
    * Écrire des tests clairs, indépendants et reproductibles.
    * Viser une bonne couverture de code, mais privilégier la pertinence des tests.
    * Automatiser les tests autant que possible.
* **Éléments essentiels et facultatifs :**
    * **Essentiels :** Écriture et exécution de tests unitaires pour la logique métier et les composants critiques,
      rédaction de cas de test simples pour des fonctionnalités clés.
    * **Facultatifs :** Mise en place de tests d'intégration, utilisation d'outils d'automatisation des tests
      d'interface (Selenium, Cypress), tests de performance, tests de sécurité, application des principes du TDD (
      Test-Driven Development).
* **Éléments de preuve à apporter au jury :**
    * Code source des tests unitaires et d'intégration.
    * Plans de tests documentés.
    * Rapports de couverture de code.
    * Démonstration de l'exécution des tests.
    * Liste des anomalies trouvées et corrigées.
* **Exemples concrets de réalisations :**
    1. Écriture de tests unitaires avec JUnit pour une classe de service Java.
    2. Rédaction d'un plan de test pour la fonctionnalité d'inscription d'un site web, avec différents cas (nominal,
       erreurs, limites).
    3. Mise en place de tests d'intégration avec Postman ou REST Assured pour une API REST.
    4. Utilisation de Jest pour tester des composants React.
    5. Développement d'un module en TDD : écriture des tests avant le code de production.
* **Conseils pour acquérir ces compétences :**
    * Apprendre les différents types de tests et leurs objectifs.
    * Se former aux frameworks de test du langage/plateforme utilisé.
    * Prendre l'habitude d'écrire des tests pour tous ses développements.
    * Lire des ouvrages sur le test logiciel (ex: "Test Driven Development: By Example" de Kent Beck).

---

### **Compétence 3.7 : Préparer et exécuter le déploiement d'une application.**

* **Description détaillée :** Le développeur doit être capable de packager son application et de la mettre en production
  ou sur un environnement de test/pré-production. Cela implique la compilation du code, la création d'artéfacts (JAR,
  WAR, exécutable, package Docker), la configuration des environnements cibles, et le déploiement effectif sur un
  serveur (physique, virtuel, cloud). Il peut utiliser des scripts d'automatisation ou des outils de CI/CD (Continuous
  Integration/Continuous Deployment).
* **Conseils pour réussir :**
    * Automatiser le processus de build et de déploiement autant que possible.
    * Bien gérer la configuration des différents environnements (développement, test, production).
    * Prévoir des stratégies de rollback en cas de problème.
    * Monitorer l'application après déploiement.
* **Éléments essentiels et facultatifs :**
    * **Essentiels :** Packaging de l'application (ex: créer un JAR exécutable, un WAR, un build front-end), déploiement
      manuel sur un serveur d'application simple (Tomcat, Apache) ou un hébergement web.
    * **Facultatifs :** Utilisation de Docker pour conteneuriser l'application, mise en place d'une pipeline CI/CD (
      GitLab CI, Jenkins, GitHub Actions), déploiement sur des plateformes cloud (AWS, Azure, GCP), orchestration de
      conteneurs (Kubernetes).
* **Éléments de preuve à apporter au jury :**
    * Application déployée et fonctionnelle sur un serveur.
    * Scripts de build et de déploiement.
    * Documentation du processus de déploiement.
    * Utilisation de conteneurs Docker (si applicable).
* **Exemples concrets de réalisations :**
    1. Déploiement d'une application web Java (fichier WAR) sur un serveur Tomcat.
    2. Mise en ligne d'un site statique (HTML/CSS/JS) sur un hébergement type GitHub Pages ou Netlify.
    3. Packaging d'une application Python/Flask avec Gunicorn et déploiement sur un VPS.
    4. Création d'une image Docker pour une application Node.js et déploiement sur un service de conteneurs.
    5. Configuration d'une pipeline GitLab CI simple pour builder et tester automatiquement une application à chaque
       commit.
* **Conseils pour acquérir ces compétences :**
    * Se familiariser avec les outils de build de son écosystème (Maven, Gradle, npm, Webpack).
    * Apprendre les bases de l'administration système Linux.
    * Explorer Docker et les concepts de conteneurisation.
    * S'initier aux plateformes cloud et aux outils de CI/CD.

---

## **COMPÉTENCES TRANSVERSALES**

Ces compétences sont cruciales pour le succès d'un Concepteur Développeur d'Applications, car elles conditionnent son
efficacité, son intégration dans une équipe et son évolution professionnelle.

---

### **Compétence Transversale 1 : Communiquer efficacement à l'écrit et à l'oral.**

* **Description détaillée :** Le développeur doit être capable de communiquer clairement ses idées, ses problèmes et ses
  solutions, tant à l'écrit (documentation, emails, messages instantanés, rapports d'anomalies) qu'à l'oral (réunions
  d'équipe, présentations, discussions avec des non-techniciens). Cela inclut la capacité d'adapter son langage à son
  interlocuteur.
* **Conseils pour réussir :**
    * Être clair, concis et précis.
    * Structurer ses écrits et ses présentations.
    * Pratiquer l'écoute active.
    * Savoir vulgariser des concepts techniques.
* **Éléments essentiels et facultatifs :**
    * **Essentiels :** Rédaction de documentation technique claire (commentaires de code, README), communication fluide
      lors des échanges techniques, capacité à expliquer un problème rencontré.
    * **Facultatifs :** Animation de réunions, présentation de solutions techniques à un public varié, rédaction de
      spécifications fonctionnelles.
* **Éléments de preuve à apporter au jury :**
    * Qualité de la documentation produite (technique, utilisateur).
    * Clarté des explications lors de la soutenance orale.
    * Exemples d'échanges écrits professionnels (anonymisés si nécessaire).
* **Exemples concrets de réalisations :**
    1. Rédaction du fichier `README.md` d'un projet, expliquant son installation et son utilisation.
    2. Écriture de commentaires de code pertinents et clairs.
    3. Présentation d'une fonctionnalité développée lors d'une revue de sprint.
    4. Rédaction d'un email synthétisant l'avancement d'une tâche à son chef de projet.
    5. Explication d'un bug complexe à un collègue pour obtenir de l'aide.
* **Conseils pour acquérir ces compétences :**
    * Prendre le temps de relire ses écrits.
    * S'entraîner à présenter ses projets.
    * Solliciter des retours sur sa communication.
    * Lire et s'inspirer de documentations bien écrites.

---

### **Compétence Transversale 2 : Travailler en équipe et collaborer.**

* **Description détaillée :** Le développement logiciel est rarement une activité solitaire. Le CDA doit savoir
  s'intégrer dans une équipe, partager ses connaissances, aider ses collègues, accepter les critiques constructives et
  contribuer positivement à l'ambiance de travail et à l'atteinte des objectifs communs.
* **Conseils pour réussir :**
    * Être respectueux et ouvert d'esprit.
    * Participer activement aux discussions et décisions collectives.
    * Offrir son aide et savoir en demander.
    * Respecter les conventions de codage et les processus de l'équipe.
* **Éléments essentiels et facultatifs :**
    * **Essentiels :** Capacité à travailler sur un projet commun en utilisant des outils collaboratifs (Git, outil de
      ticketing), communication respectueuse avec les membres de l'équipe.
    * **Facultatifs :** Mentorat de développeurs juniors, participation active à la résolution de conflits, contribution
      à l'amélioration des processus d'équipe.
* **Éléments de preuve à apporter au jury :**
    * Témoignages (si possible et pertinent, par exemple via des projets de groupe en formation).
    * Description de son rôle et de ses interactions dans des projets d'équipe.
    * Utilisation de Git et d'outils de gestion de projet collaboratifs.
* **Exemples concrets de réalisations :**
    1. Participation à des revues de code (donner et recevoir du feedback).
    2. Travail en binôme (pair programming) sur une fonctionnalité complexe.
    3. Contribution à la base de connaissances partagée de l'équipe (wiki, documentation).
    4. Aide apportée à un collègue bloqué sur un problème technique.
    5. Respect des décisions prises collectivement même si elles diffèrent de son opinion initiale.
* **Conseils pour acquérir ces compétences :**
    * S'impliquer dans des projets de groupe (écoles, associations, communautés open-source).
    * Pratiquer l'écoute active et l'empathie.
    * Apprendre à gérer les désaccords de manière constructive.

---

### **Compétence Transversale 3 : Faire preuve d'autonomie et d'initiative.**

* **Description détaillée :** Bien que travaillant en équipe, le CDA doit être capable de gérer ses tâches de manière
  autonome, de prendre des initiatives pour résoudre des problèmes ou améliorer des aspects du projet, sans attendre
  systématiquement des instructions détaillées. Cela inclut la capacité à rechercher des informations et à se former par
  soi-même.
* **Conseils pour réussir :**
    * Bien comprendre les objectifs et les contraintes de ses tâches.
    * Ne pas hésiter à chercher des solutions par soi-même avant de demander de l'aide.
    * Proposer des améliorations ou des solutions alternatives de manière constructive.
    * Gérer son temps efficacement.
* **Éléments essentiels et facultatifs :**
    * **Essentiels :** Capacité à mener à bien une tâche assignée avec un minimum de supervision, recherche de solutions
      aux problèmes techniques rencontrés.
    * **Facultatifs :** Proposition proactive d'améliorations (techniques, processus), prise en charge de tâches non
      explicitement assignées mais bénéfiques au projet, auto-formation sur de nouvelles technologies pertinentes.
* **Éléments de preuve à apporter au jury :**
    * Description de situations où il a fallu trouver des solutions de manière autonome.
    * Exemples de projets personnels menés à terme.
    * Capacité à répondre à des questions techniques imprévues en cherchant logiquement la réponse.
* **Exemples concrets de réalisations :**
    1. Recherche et implémentation d'une bibliothèque tierce pour résoudre un problème spécifique.
    2. Débogage autonome d'un bug complexe.
    3. Proposition d'une refonte d'un composant pour améliorer sa performance ou sa maintenabilité.
    4. Mise en place d'un outil pour faciliter le travail de l'équipe (ex: script d'automatisation).
    5. Réalisation d'un projet personnel de A à Z, de l'idée à la mise en ligne.
* **Conseils pour acquérir ces compétences :**
    * Se fixer des objectifs personnels et travailler à les atteindre.
    * Développer sa curiosité et sa capacité à apprendre en continu.
    * Oser sortir de sa zone de confort et expérimenter.

---

### **Compétence Transversale 4 : Résoudre des problèmes techniques complexes.**

* **Description détaillée :** Le développement logiciel implique la résolution constante de problèmes. Le CDA doit être
  capable d'analyser une situation, d'identifier la cause racine d'un bug ou d'un dysfonctionnement, d'envisager
  différentes solutions, de les évaluer et de mettre en œuvre la plus appropriée.
* **Conseils pour réussir :**
    * Adopter une démarche méthodique (comprendre, isoler, hypothèses, vérifier, corriger).
    * Savoir utiliser les outils de débogage.
    * Décomposer les problèmes complexes en sous-problèmes plus simples.
    * Ne pas avoir peur de demander de l'aide après avoir exploré des pistes.
* **Éléments essentiels et facultatifs :**
    * **Essentiels :** Capacité à déboguer son code, à analyser des messages d'erreur, à trouver des solutions à des
      problèmes de développement courants.
    * **Facultatifs :** Résolution de problèmes d'architecture ou de performance complexes, diagnostic de pannes en
      production, capacité à anticiper les problèmes potentiels.
* **Éléments de preuve à apporter au jury :**
    * Description de problèmes techniques rencontrés et de la démarche de résolution.
    * Exemples de code avant/après correction d'un bug.
    * Utilisation d'outils de débogage lors de la soutenance (si pertinent).
* **Exemples concrets de réalisations :**
    1. Identification et correction d'une fuite mémoire dans une application.
    2. Résolution d'un bug intermittent en analysant les logs et en reproduisant le scénario.
    3. Optimisation d'une requête SQL lente après analyse de son plan d'exécution.
    4. Trouver la cause d'une incompatibilité entre deux bibliothèques et proposer un contournement.
    5. Mise en place d'une stratégie pour gérer une condition de concurrence (race condition).
* **Conseils pour acquérir ces compétences :**
    * Pratiquer régulièrement le débogage.
    * Participer à des forums d'entraide (Stack Overflow) pour voir comment d'autres résolvent des problèmes.
    * Travailler sur des projets variés pour rencontrer une large gamme de problèmes.
    * Développer sa pensée logique et analytique (jeux de logique, défis de code).

---

### **Compétence Transversale 5 : Assurer une veille technologique.**

* **Description détaillée :** Le domaine de l'informatique évolue très rapidement. Le CDA doit se tenir informé des
  nouvelles technologies, des évolutions des langages et frameworks qu'il utilise, des nouvelles pratiques de
  développement et des tendances du marché. Cette veille lui permet de maintenir ses compétences à jour et de proposer
  des solutions innovantes.
* **Conseils pour réussir :**
    * Consacrer régulièrement du temps à la veille.
    * Varier ses sources d'information (blogs techniques, newsletters, podcasts, conférences, réseaux sociaux
      professionnels).
    * Tester par soi-même les nouvelles technologies qui semblent prometteuses.
    * Partager ses découvertes avec son équipe.
* **Éléments essentiels et facultatifs :**
    * **Essentiels :** Connaissance des évolutions majeures des technologies utilisées, capacité à citer des sources de
      veille.
    * **Facultatifs :** Contribution à la veille de l'équipe, expérimentation active de nouvelles technologies sur des
      projets personnels, participation à des communautés ou des meetups.
* **Éléments de preuve à apporter au jury :**
    * Capacité à discuter des tendances actuelles dans son domaine de spécialisation.
    * Exemples de technologies ou d'outils découverts grâce à sa veille et potentiellement utilisés.
    * Liste des sources de veille consultées.
* **Exemples concrets de réalisations :**
    1. Suivi de blogs d'experts reconnus dans son langage de prédilection.
    2. Abonnement à des newsletters spécialisées (ex: JavaScript Weekly, InfoQ).
    3. Test d'une nouvelle version d'un framework sur un projet personnel.
    4. Participation à un webinar sur une nouvelle technologie cloud.
    5. Lecture régulière d'articles sur des plateformes comme Medium, Dev.to, ou des sites d'actualités IT.
* **Conseils pour acquérir ces compétences :**
    * Identifier les sources d'information fiables et pertinentes.
    * Intégrer la veille dans sa routine (ex: 30 minutes par jour).
    * Être curieux et ouvert aux nouveautés.
    * Ne pas chercher à tout connaître, mais à identifier ce qui est pertinent pour son travail et son évolution.
    * Entretenir une culture générale informatique même en dehors de sa spécialité.

---

Ce document fournit une base solide pour comprendre les attentes du titre professionnel Concepteur Développeur
d'Applications. Le candidat devra démontrer sa maîtrise de ces compétences à travers ses réalisations, sa documentation
et sa soutenance orale devant le jury. La clé du succès réside dans la pratique constante, la curiosité et la capacité à
apprendre et à s'adapter.