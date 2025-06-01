# Méthode de Spécification, Conception et Architecture d'un Projet Personnel

Cette méthode se décompose en plusieurs étapes, chacune produisant un ou plusieurs artéfacts qui serviront de base pour
la suivante.

---

## **Étape 0 : Sélection du Projet**

* **Prérequis :** Le candidat a déjà utilisé des exercices (comme ceux proposés précédemment) pour identifier une idée
  de projet personnel qui le motive et qui semble réalisable.
* **Action :** Le candidat sélectionne *une seule* idée de projet sur laquelle il va se concentrer pour les étapes
  suivantes.
* **Résultat Attendu :** Un nom provisoire pour le projet et une conviction personnelle de vouloir le mener à bien.

---

## **Phase 1 : Spécification Initiale – Définir le "Quoi" et le "Pourquoi"**

### **Exercice 1.1 : Le Pitch Élévateur (Elevator Pitch)**

* **Objectif :** Articuler de manière concise et percutante la proposition de valeur du projet.
* **Déroulement :** Le candidat rédige un texte court (30 secondes à 1 minute de lecture) qui répond aux questions
  suivantes :
    * **Pour qui ?** (La cible utilisateur principale)
    * **Quel est le problème/besoin ?** (Le problème que le projet résout ou le besoin qu'il comble)
    * **Nom du projet/application ?**
    * **Quelle est la solution proposée ?** (Une description de haut niveau de ce que fait l'application)
    * **Quels sont les bénéfices clés ?** (En quoi cette solution est-elle meilleure ou différente ?)
    * **(Optionnel) Quelle est l'alternative principale actuelle ?**
* **Résultat Attendu (Livrable) :** Un texte de "Pitch Élévateur" de 50-100 mots.
    * *Exemple :* "Pour les amateurs de plantes d'intérieur (cible) qui oublient souvent leurs routines d'arrosage (
      problème), *PlantoMinder* (nom) est une application mobile simple (solution) qui envoie des rappels personnalisés
      pour chaque plante et offre des conseils d'entretien de base (bénéfices). Contrairement aux alarmes génériques (
      alternative), *PlantoMinder* s'adapte aux besoins spécifiques de chaque espèce."

### **Exercice 1.2 : Les Personas Utilisateurs**

* **Objectif :** Humaniser les utilisateurs cibles pour mieux comprendre leurs besoins, motivations et contextes
  d'utilisation.
* **Déroulement :** Le candidat crée 1 à 3 fiches "Persona" représentant ses utilisateurs types. Chaque fiche inclut :
    * Un nom et une photo fictifs.
    * Des caractéristiques démographiques (âge, profession, etc. si pertinent).
    * Ses objectifs par rapport au problème que l'application résout.
    * Ses frustrations ou "points de douleur" actuels.
    * Son niveau de compétence technique.
    * Une citation qui résume son besoin.
* **Résultat Attendu (Livrable) :** 1 à 3 fiches Persona détaillées.
    * *Exemple pour PlantoMinder :* Persona "Sophie, 32 ans, Graphiste". *Objectif :* Garder ses plantes en bonne santé
      malgré un emploi du temps chargé. *Frustration :* Oublie quelle plante a besoin de quoi. *Compétence tech :*
      Bonne. *Citation :* "J'adore mes plantes, mais j'ai besoin d'un coup de pouce pour ne pas les négliger !"

### **Exercice 1.3 : Les Scénarios Utilisateurs (User Stories) pour le MVP**

* **Objectif :** Définir les fonctionnalités clés de la première version (Minimum Viable Product - MVP) du point de vue
  de l'utilisateur.
* **Déroulement :** En se basant sur les personas, le candidat rédige une liste de "User Stories" au format : "En tant
  que `<type d'utilisateur>`, je veux `<réaliser une action>` afin de `<bénéfice/objectif>`." Il se concentre sur les
  fonctionnalités absolument essentielles pour le MVP.
* **Résultat Attendu (Livrable) :** Une liste priorisée de 10 à 20 User Stories pour le MVP.
    * *Exemples pour PlantoMinder (MVP) :*
        1. "En tant qu'utilisateur, je veux pouvoir ajouter une nouvelle plante à ma collection en spécifiant son nom et
           son espèce afin de la suivre."
        2. "En tant qu'utilisateur, je veux pouvoir définir une fréquence d'arrosage pour chaque plante afin de recevoir
           des rappels."
        3. "En tant qu'utilisateur, je veux recevoir une notification lorsque l'une de mes plantes a besoin d'être
           arrosée afin de ne pas l'oublier."
        4. "En tant qu'utilisateur, je veux pouvoir marquer une plante comme 'arrosée' afin de réinitialiser le cycle de
           rappel."

---

## **Phase 2 : Conception Fonctionnelle – Détailler le "Comment" (Fonctionnel)**

### **Exercice 2.1 : Diagramme des Cas d'Utilisation (Use Case Diagram)**

* **Objectif :** Visualiser les interactions entre les utilisateurs (acteurs) et les principales fonctionnalités du
  système.
* **Déroulement :** En s'appuyant sur les User Stories, le candidat crée un diagramme de cas d'utilisation UML.
    * Il identifie les acteurs (ses personas, ou un "Utilisateur" générique si suffisant).
    * Il identifie les cas d'utilisation principaux (qui correspondent souvent aux actions des User Stories).
    * Il relie les acteurs aux cas d'utilisation qu'ils initient.
    * Il peut utiliser les relations `<<include>>` et `<<extend>>` pour plus de détails si nécessaire, mais la
      simplicité est de mise pour un projet perso.
* **Résultat Attendu (Livrable) :** Un diagramme de cas d'utilisation (format image ou via un outil).
    * *Exemple pour PlantoMinder :* Acteur "Utilisateur" relié aux cas d'utilisation "Ajouter une plante", "Configurer
      un rappel", "Recevoir une notification", "Marquer comme arrosée".

### **Exercice 2.2 : Maquettes Filaires (Wireframes) des Écrans Principaux**

* **Objectif :** Esquisser la structure et la disposition des éléments sur les interfaces utilisateur clés, sans se
  soucier du design graphique.
* **Déroulement :** Pour chaque fonctionnalité majeure identifiée dans les User Stories ou les cas d'utilisation, le
  candidat dessine (sur papier, avec un outil de wireframing simple comme Balsamiq, Figma en mode wireframe, etc.) les
  écrans correspondants. Il se concentre sur :
    * Les zones de contenu.
    * Les éléments d'interaction (boutons, champs de formulaire, listes).
    * La navigation entre les écrans.
* **Résultat Attendu (Livrable) :** Une série de wireframes pour les 3 à 5 écrans les plus importants du MVP.
    * *Exemple pour PlantoMinder :* Wireframe pour "Écran Liste des Plantes", "Écran Ajout/Édition Plante", "Écran
      Détail Plante avec rappel".

### **Exercice 2.3 : Modèle Conceptuel de Données (MCD) ou Diagramme de Classes simplifié**

* **Objectif :** Identifier les principales entités d'information que l'application devra gérer et leurs relations.
* **Déroulement :** Le candidat réfléchit aux "choses" importantes que son application manipule.
    * Il liste les entités (ex: Plante, Utilisateur, Rappel).
    * Pour chaque entité, il liste les attributs principaux (ex: pour Plante : nom, espèce, dateDernierArrosage,
      frequenceArrosage).
    * Il définit les relations entre les entités et leurs cardinalités (ex: un Utilisateur peut avoir plusieurs
      Plantes ; une Plante appartient à un seul Utilisateur).
    * Il peut utiliser la notation Merise pour un MCD ou une notation UML simplifiée pour un diagramme de classes (en se
      concentrant sur les données, pas encore les méthodes).
* **Résultat Attendu (Livrable) :** Un diagramme MCD ou un diagramme de classes simplifié.
    * *Exemple pour PlantoMinder :* Entités `Utilisateur` (id, email, motDePasse), `Plante` (id, nom, espece, photo,
      frequenceArrosage, dateProchainArrosage, fk_utilisateurId), `TypePlante` (id, nomEspece, conseilsEntretien).
      Relation 1-N entre Utilisateur et Plante.

---

## **Phase 3 : Conception Technique et Architecture – Choisir les Outils et l'Organisation**

### **Exercice 3.1 : Choix de la Pile Technologique (Tech Stack)**

* **Objectif :** Sélectionner les langages, frameworks, bases de données et outils principaux pour le développement.
* **Déroulement :** En fonction de ses compétences, des objectifs d'apprentissage, et des besoins du projet (type
  d'application : web, mobile, API...), le candidat justifie ses choix :
    * **Front-end :** (si applicable) Langage (JavaScript, TypeScript), Framework/Librairie (React, Angular, Vue.js,
      HTML/CSS pur, Swift, Kotlin, React Native, Flutter...).
    * **Back-end :** (si applicable) Langage (Java, Python, Node.js, C#, PHP...), Framework (Spring Boot, Django/Flask,
      Express.js, .NET Core, Symfony/Laravel...).
    * **Base de données :** Type (SQL : PostgreSQL, MySQL, SQLite ; NoSQL : MongoDB, Firebase Firestore...), SGBD
      spécifique.
    * **Autres outils importants :** Versioning (Git), IDE, outils de test, hébergement (si envisagé).
* **Résultat Attendu (Livrable) :** Un document texte listant la pile technologique choisie avec une brève justification
  pour chaque choix majeur.
    * *Exemple pour PlantoMinder (mobile hybride) :*
        * *Front-end (Mobile) :* React Native (pour le développement cross-platform et ma familiarité avec React).
        * *Logique embarquée/Stockage local :* SQLite (pour stocker les données des plantes localement sur l'appareil).
        * *Langage :* JavaScript (ou TypeScript pour plus de robustesse).
        * *Versioning :* Git.
        * *Justification :* Permet une application mobile simple sans back-end serveur pour le MVP, en se concentrant
          sur l'expérience utilisateur et la logique client.

### **Exercice 3.2 : Diagramme d'Architecture de Haut Niveau**

* **Objectif :** Visualiser les principaux composants de l'application et comment ils interagissent.
* **Déroulement :** Le candidat crée un schéma simple qui montre :
    * Les couches logiques (ex: Présentation, Métier, Accès aux Données) ou les principaux modules/services.
    * Les technologies utilisées pour chaque composant (reprise de l'exercice 3.1).
    * Les flux de données principaux entre les composants.
    * Si c'est une application client-serveur : le client, le serveur (API), la base de données.
    * Si c'est une application mobile autonome : les principaux modules internes.
* **Résultat Attendu (Livrable) :** Un diagramme d'architecture de haut niveau (peut être un simple schéma de boîtes et
  de flèches).
    * *Exemple pour PlantoMinder (mobile autonome MVP) :*
      ```
      [ Interface Utilisateur (React Native Components) ]
            <--> (Logique de présentation, gestion d'état)
      [ Module Métier (Logique des rappels, gestion des plantes) ]
            <--> (Fonctions JavaScript)
      [ Module de Persistance (SQLite Wrapper) ]
            <-->
      [ Base de Données Locale (SQLite) ]
      ```
    * *Exemple pour une application web avec API :*
      ```
      [ Navigateur Client (React) ]
            <-- HTTP/JSON (API Calls) -->
      [ Serveur API (Node.js/Express) ]
            | (Logique métier, Contrôleurs)
            <-- SQL/ORM -->
      [ Base de Données (PostgreSQL) ]
      ```

### **Exercice 3.3 : Conception Détaillée d'un Cas d'Utilisation Critique (Optionnel, mais recommandé)**

* **Objectif :** Approfondir la conception d'une fonctionnalité clé pour anticiper les défis techniques.
* **Déroulement :** Le candidat choisit une User Story ou un cas d'utilisation central et essaie de le décomposer plus
  finement :
    * **Diagramme de Séquence (UML) :** Pour montrer les interactions entre les objets/composants pour réaliser ce cas
      d'utilisation. Quelles méthodes s'appellent, dans quel ordre ?
    * **Pseudo-code :** Pour les algorithmes complexes ou la logique métier principale de ce cas.
* **Résultat Attendu (Livrable) :** Un diagramme de séquence et/ou du pseudo-code pour le cas d'utilisation choisi.
    * *Exemple pour PlantoMinder :* Diagramme de séquence pour "Recevoir une notification d'arrosage". Montrant
      l'interaction entre un service de tâches de fond, la lecture de la base de données, la logique de décision, et le
      système de notification de l'OS.

---

## **Phase 4 : Planification (Très Simplifiée pour un Projet Perso)**

### **Exercice 4.1 : Découpage en Tâches et Priorisation**

* **Objectif :** Décomposer le développement du MVP en tâches gérables.
* **Déroulement :** Le candidat reprend ses User Stories du MVP et les décompose en tâches techniques plus petites. Il
  peut utiliser un simple tableau (To-Do, In Progress, Done).
* **Résultat Attendu (Livrable) :** Une liste de tâches de développement pour le MVP, grossièrement estimées (ex: S, M,
  L en termes d'effort) et ordonnancées.

---

## **Conseils Généraux pour le Candidat :**

* **Itérer :** Ces étapes ne sont pas strictement linéaires. Le candidat peut avoir besoin de revenir en arrière pour
  ajuster des décisions prises précédemment à mesure que sa compréhension du projet évolue.
* **Simplicité :** Pour un projet personnel, l'objectif n'est pas de produire des documents aussi formels que dans un
  contexte professionnel, mais d'utiliser ces outils pour clarifier sa pensée et structurer son travail.
* **Focus MVP :** Toujours garder à l'esprit le périmètre du MVP. Il est facile de vouloir ajouter trop de
  fonctionnalités au début.
* **Documentation pour soi :** Ces livrables servent avant tout au candidat lui-même pour guider son développement. Ils
  pourront aussi servir de base pour expliquer son projet (par exemple, dans son DP ou lors d'un entretien).

En suivant cette méthode, le candidat sera en mesure de démarrer son projet personnel sur des bases solides, avec une
vision claire de ce qu'il doit construire et comment il compte s'y prendre.