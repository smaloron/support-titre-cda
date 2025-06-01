# Exemples de diagrammes

## 1. Diagramme de Cas d'Utilisation (Use Case Diagram)

**Projet type :** Application de gestion de tâches (To-Do List)

```plantuml
@startuml
left to right direction
skinparam packageStyle rectangle

actor "Utilisateur" as user

rectangle "Système de Gestion de Tâches" {
  user -- (Gérer son compte)
  (Gérer son compte) ..> (S'inscrire) : <<extends>>
  (Gérer son compte) ..> (Se connecter) : <<extends>>
  (Gérer son compte) ..> (Modifier son profil) : <<extends>>

  user -- (Gérer les listes de tâches)
  (Gérer les listes de tâches) ..> (Créer une liste) : <<include>>
  (Gérer les listes de tâches) ..> (Visualiser ses listes) : <<include>>
  (Gérer les listes de tâches) ..> (Modifier une liste) : <<include>>
  (Gérer les listes de tâches) ..> (Supprimer une liste) : <<include>>

  user -- (Gérer les tâches)
  (Gérer les tâches) ..> (Ajouter une tâche à une liste) : <<include>>
  (Gérer les tâches) ..> (Marquer une tâche comme terminée) : <<include>>
  (Gérer les tâches) ..> (Modifier une tâche) : <<include>>
  (Gérer les tâches) ..> (Supprimer une tâche) : <<include>>
  (Gérer les tâches) --|> (Gérer les listes de tâches) : nécessite

  user -- (Rechercher des tâches)
}
@enduml
```

---

## 2. Wireframes (Représentation Conceptuelle de la Navigation)

**Projet type :** Application de gestion de tâches - Flux d'ajout de tâche

### Connexion
![wireframe-connexion.png](wireframe-connexion.png)

### Inscription

![wireframe-inscription.png](wireframe-inscription.png)


### Liste des tâches

![wireframe-liste.png](wireframe-liste.png)

### Tableau de bord

![wireframe-dashboard.png](wireframe-dashboard.png)

### Ajout de liste

![wireframe-ajout-liste.png](wireframe-ajout-liste.png)

### Ajout de tâche

![wireframe-ajout-tache.png](wireframe-ajout-tache.png)

### Confirmation de suppression

![wireframe-confirmation.png](wireframe-confirmation.png)

---

## 3. Diagramme de Navigation (Plus formel)

Représente les transitions possibles entre les principaux états/écrans de l'application.

**Projet type :** Application de gestion de tâches

```plantuml
@startuml
state "Non Authentifié" as Unauthenticated {
  state "Écran d'Inscription" as SignUp
  state "Écran de Connexion" as SignIn
}

state "Authentifié" as Authenticated {
  state "Tableau de Bord (Accueil)" as Dashboard
  state "Gestion des Listes" as ListManagement {
    state "Affichage Listes" as ViewLists
    state "Création/Édition Liste" as CreateEditList
  }
  state "Gestion des Tâches (par liste)" as TaskManagement {
    state "Affichage Tâches" as ViewTasks
    state "Création/Édition Tâche" as CreateEditTask
  }
  state "Profil Utilisateur" as UserProfile
}

[*] --> Unauthenticated

Unauthenticated --> SignIn : Tente Connexion
Unauthenticated --> SignUp : Tente Inscription

SignIn --> Authenticated : Connexion Réussie
SignUp --> Authenticated : Inscription Réussie (et auto-connexion)

Authenticated --> Dashboard : Démarrage
Dashboard --> ListManagement
ListManagement --> ViewLists
ViewLists --> CreateEditList : Ajout/Modif Liste
CreateEditList --> ViewLists : Sauvegarde/Annulation

Dashboard --> TaskManagement : Sélection Liste
ListManagement --> TaskManagement : Sélection Liste
TaskManagement --> ViewTasks
ViewTasks --> CreateEditTask : Ajout/Modif Tâche
CreateEditTask --> ViewTasks : Sauvegarde/Annulation

Authenticated --> UserProfile
UserProfile --> Authenticated

Authenticated --> Unauthenticated : Déconnexion
Unauthenticated --> [*]

@enduml
```

---

## 4. Modèle Conceptuel de Données (MCD) - Style Entité-Association

**Projet type :** Application de gestion de tâches

```plantuml
@startuml
!define ENTITY class
!define ATTRIBUTE entity
!define RELATIONSHIP diamond

ENTITY Utilisateur {
  + idUtilisateur (PK)
  --
  nom
  email
  motDePasse
}

ENTITY ListeTaches {
  + idListe (PK)
  --
  nomListe
  dateCreation
}

ENTITY Tache {
  + idTache (PK)
  --
  titreTache
  description
  dateEcheance
  statut (à faire, en cours, terminée)
}

RELATIONSHIP "Possède" as R1
RELATIONSHIP "Contient" as R2

Utilisateur "1" -- "0,N" R1
R1 -- "1,1" ListeTaches

ListeTaches "1" -- "0,N" R2
R2 -- "1,1" Tache
@enduml
```

*Note: PlantUML n'a pas de support natif parfait pour la notation MCD Merise. Ceci est une adaptation.*

---

## 5. Modèle Logique de Données (MLD) - Proche Schéma Relationnel

**Projet type :** Application de gestion de tâches

```plantuml
@startuml
hide circle
skinparam classAttributeIconSize 0

entity Utilisateur {
  + id_utilisateur : INTEGER (PK)
  --
  nom_utilisateur : VARCHAR(100)
  email : VARCHAR(255) (UNIQUE)
  mot_de_passe_hash : VARCHAR(255)
  date_creation_compte : TIMESTAMP
}

entity ListeTaches {
  + id_liste : INTEGER (PK)
  --
  nom_liste : VARCHAR(150)
  date_creation_liste : TIMESTAMP
  fk_id_utilisateur : INTEGER (FK)
}

entity Tache {
  + id_tache : INTEGER (PK)
  --
  titre_tache : VARCHAR(200)
  description : TEXT
  date_echeance : DATE
  statut : VARCHAR(50) -- ex: 'TODO', 'IN_PROGRESS', 'DONE'
  priorite : INTEGER -- ex: 1 (basse) à 5 (haute)
  date_creation_tache : TIMESTAMP
  fk_id_liste : INTEGER (FK)
}

Utilisateur "1" -- "0..*" ListeTaches : possède
ListeTaches "1" -- "0..*" Tache : contient
@enduml
```

---

## 6. Diagramme de Classes (Vue Conception)

**Projet type :** Application de gestion de tâches (simplifié, focus sur le domaine)

```plantuml
@startuml
class Utilisateur {
  - id: Long
  - nom: String
  - email: String
  - motDePasse: String
  + creerListeTaches(nom: String): ListeTaches
  + getListesTaches(): List<ListeTaches>
}

class ListeTaches {
  - id: Long
  - nom: String
  - dateCreation: Date
  - taches: List<Tache>
  + ajouterTache(titre: String, description: String): Tache
  + supprimerTache(tache: Tache): void
  + getTaches(): List<Tache>
}

class Tache {
  - id: Long
  - titre: String
  - description: String
  - dateEcheance: Date
  - estTerminee: boolean
  + marquerCommeTerminee(): void
  + modifierDetails(titre: String, description: String): void
}

Utilisateur "1" *-- "0..*" ListeTaches : possede >
ListeTaches "1" *-- "0..*" Tache : contient >

interface IAuthService {
  + inscrire(nom, email, mdp): Utilisateur
  + connecter(email, mdp): Utilisateur
}

class AuthService implements IAuthService {
  - utilisateurRepository: IUtilisateurRepository
  + inscrire(nom, email, mdp): Utilisateur
  + connecter(email, mdp): Utilisateur
}

interface IUtilisateurRepository {
  + findByEmail(email: String): Utilisateur
  + save(utilisateur: Utilisateur): Utilisateur
}

AuthService ..> IUtilisateurRepository : utilise
@enduml
```

---

## 7. Diagramme de Classes Participantes (Pour un Cas d'Utilisation Spécifique)

**Cas d'Utilisation :** Ajouter une tâche à une liste

```plantuml
@startuml
!define PARTICIPANT class

PARTICIPANT TacheController {
  + ajouterTache(listeId: Long, dto: TacheDTO): ResponseEntity
}

PARTICIPANT TacheService {
  - listeRepository: IListeTachesRepository
  - tacheRepository: ITacheRepository
  + creerTacheDansListe(listeId: Long, titre: String, description: String): Tache
}

PARTICIPANT ListeTaches {
  - id: Long
  - taches: List<Tache>
  + ajouterTacheObjet(tache: Tache): void
}

PARTICIPANT Tache {
  - id: Long
  - titre: String
  - description: String
}

PARTICIPANT IListeTachesRepository {
  + findById(id: Long): Optional<ListeTaches>
  + save(liste: ListeTaches): ListeTaches
}

PARTICIPANT ITacheRepository {
  + save(tache: Tache): Tache
}

TacheController ..> TacheService : délègue
TacheService ..> IListeTachesRepository : utilise
TacheService ..> ITacheRepository : utilise
TacheService ..> ListeTaches : manipule
TacheService ..> Tache : crée
ListeTaches "1" *-- "0..*" Tache : contient
@enduml
```

---

## 8. Diagramme de Séquence Système

**Cas d'Utilisation :** L'utilisateur ajoute une tâche.

```plantuml
@startuml
actor Utilisateur as user
participant "Système de Gestion de Tâches" as system

user -> system : Demande d'ajout de tâche (données: titre, description, id_liste)
activate system
system --> user : Confirme l'ajout de la tâche / Affiche la tâche ajoutée
deactivate system
@enduml
```

---

## 9. Diagramme de Séquence Détaillé

**Cas d'Utilisation :** Ajouter une nouvelle tâche (avec architecture MVC/Service)

```plantuml
@startuml
actor Utilisateur

participant ":TacheController" as Controller
participant ":TacheService" as Service
participant "listeRepo:IListeTachesRepository" as ListeRepo
participant "tacheRepo:ITacheRepository" as TacheRepo
participant "liste:ListeTaches" as ListeEntity
participant "nouvelleTache:Tache" as TacheEntity
database "BaseDeDonnees" as DB

Utilisateur -> Controller : POST /listes/{idListe}/taches (TacheDTO)
activate Controller

Controller -> Service : creerTacheDansListe(idListe, tacheDTO.titre, tacheDTO.description)
activate Service

Service -> ListeRepo : findById(idListe)
activate ListeRepo
ListeRepo -> DB : SELECT * FROM ListeTaches WHERE id = idListe
activate DB
DB --> ListeRepo : listeDonnees
deactivate DB
ListeRepo --> Service : Optional<ListeTaches> (contenant listeEntity)
deactivate ListeRepo

Service -> liste:ListeTaches : new ListeTaches(listeDonnees)
note right : Hydratation de l'entité

Service -> nouvelleTache:Tache : new Tache(tacheDTO.titre, tacheDTO.description)
activate nouvelleTache
deactivate nouvelleTache
note right : Création de l'objet Tache

Service -> liste:ListeTaches : ajouterTacheObjet(nouvelleTache)
activate liste
liste --> Service
deactivate liste

Service -> TacheRepo : save(nouvelleTache)
activate TacheRepo
TacheRepo -> DB : INSERT INTO Tache (...) VALUES (...)
activate DB
DB --> TacheRepo : idTacheGenere
deactivate DB
TacheRepo --> Service : nouvelleTache (avec id)
deactivate TacheRepo

Service -> ListeRepo : save(liste) // Pour la relation si gérée ainsi
activate ListeRepo
ListeRepo -> DB : UPDATE ListeTaches SET ... // ou gestion de la table de jointure
activate DB
DB --> ListeRepo
deactivate DB
ListeRepo --> Service
deactivate ListeRepo


Service --> Controller : tacheCree (Tache)
deactivate Service

Controller --> Utilisateur : HTTP 201 Created (TacheDTO avec id)
deactivate Controller
@enduml
```

---

## 10. Diagramme d'Architecture (Vue Logique N-Tiers)

**Projet type :** Application Web avec API REST

```plantuml
@startuml
node "Client (Navigateur)" as Client {
  component [Application React/Vue/Angular] as Frontend
}

node "Serveur d'Application" as AppServer {
  package "Couche Présentation (API REST)" {
    component [Contrôleurs Spring MVC / Express Routes] as Controllers
  }
  package "Couche Métier (Logique Applicative)" {
    component [Services Métier] as Services
    component [Modèles de Domaine / Entités] as Domain
  }
  package "Couche d'Accès aux Données (DAL)" {
    component [Repositories / DAO (Spring Data JPA / TypeORM)] as Repositories
  }
}

node "Serveur de Base de Données" as DBServer {
  database [PostgreSQL / MySQL / MongoDB] as Database
}

Frontend -right-> Controllers : Requêtes HTTP (JSON)
Controllers .down.> Services : Appels de méthodes
Services .down.> Repositories : Accès aux données
Services .up.> Domain : Utilise/Manipule
Repositories -right-> Database : Requêtes SQL / NoSQL

note right of Frontend
  Responsable de l'interface
  utilisateur et de l'expérience.
end note

note right of Controllers
  Expose les fonctionnalités
  via des endpoints HTTP.
  Valide les entrées.
end note

note right of Services
  Contient la logique métier
  complexe, orchestre les
  opérations.
end note

note right of Repositories
  Abstrait l'accès à la
  base de données.
end note
@enduml
```

---

## 11. Diagramme d'Activité

**Activité :** Processus d'inscription d'un nouvel utilisateur

```plantuml
@startuml
title Processus d'Inscription Utilisateur

start
:L'utilisateur accède au formulaire d'inscription;
:Saisit ses informations (nom, email, mot de passe, confirmation mdp);
:Soumet le formulaire;

if (Données valides ?) then (oui)
  :Le système vérifie si l'email existe déjà en base;
  if (Email déjà utilisé ?) then (oui)
    :Affiche un message d'erreur "Email déjà existant";
    stop
  else (non)
    :Le système hache le mot de passe;
    :Crée un nouvel enregistrement Utilisateur en base;
    :Envoie un email de bienvenue (optionnel);
    :Redirige vers le tableau de bord / Connecte automatiquement;
    stop
  endif
else (non - ex: mdp non concordants)
  :Affiche les erreurs de validation sur le formulaire;
  :Attend une nouvelle soumission;
endif

@enduml
```

---

## 12. Diagramme d'État-Transition

**Objet :** État d'une `Tache`

```plantuml
@startuml
[*] --> A_FAIRE : Création

state A_FAIRE {
  Description: La tâche est créée mais pas encore commencée.
}

state EN_COURS {
  Description: La tâche a été commencée.
}

state TERMINEE {
  Description: La tâche est achevée.
}

state EN_PAUSE {
  Description: La tâche est temporairement suspendue.
}

A_FAIRE --> EN_COURS : commencerTache()
EN_COURS --> TERMINEE : terminerTache()
EN_COURS --> EN_PAUSE : mettreEnPause()
EN_PAUSE --> EN_COURS : reprendreTache()

A_FAIRE --> TERMINEE : marquerDirectementTerminee()
TERMINEE --> A_FAIRE : reouvrirTache() [condition: si admin ou droits suffisants]

EN_COURS --> A_FAIRE : annulerProgression()
EN_PAUSE --> A_FAIRE : annulerProgression()

TERMINEE --> [*] : Archiver / Supprimer
A_FAIRE --> [*] : Supprimer
EN_COURS --> [*] : Supprimer
EN_PAUSE --> [*] : Supprimer
@enduml
```

---

## Diagrammes Explicatifs Additionnels

### A. Pattern MVC (Modèle-Vue-Contrôleur)

```plantuml
@startuml
!define MODEL class
!define VIEW component
!define CONTROLLER class

package "Modèle (Model)" {
  MODEL DonneesApplicatives {
    + getData()
    + setData()
  }
  MODEL LogiqueMetier {
    + processData()
  }
  DonneesApplicatives -- LogiqueMetier
}

package "Vue (View)" {
  VIEW InterfaceUtilisateur {
    + displayData(data)
    + getUserInput()
  }
}

package "Contrôleur (Controller)" {
  CONTROLLER ControleurPrincipal {
    - model: LogiqueMetier
    - view: InterfaceUtilisateur
    + handleUserInput()
    + updateView()
  }
}

ControleurPrincipal ..> InterfaceUtilisateur : "Met à jour"
InterfaceUtilisateur ..> ControleurPrincipal : "Notifie (Actions Utilisateur)"
ControleurPrincipal ..> LogiqueMetier : "Manipule"
LogiqueMetier ..> ControleurPrincipal : "Notifie (Changements d'état)" (via observateur par ex.)

note "1. L'utilisateur interagit avec la Vue" as N1
note "2. La Vue notifie le Contrôleur" as N2
note "3. Le Contrôleur manipule le Modèle (Logique Métier et Données)" as N3
note "4. Le Modèle (si son état change) peut notifier le Contrôleur (ou la Vue via observateur)" as N4
note "5. Le Contrôleur met à jour la Vue avec les nouvelles données du Modèle" as N5

N1 -[hidden]down-> N2
N2 -[hidden]down-> N3
N3 -[hidden]down-> N4
N4 -[hidden]down-> N5
@enduml
```

### B. Injection de Dépendances (Dependency Injection - DI)

**Exemple :** Un `OrderService` qui dépend d'un `IPaymentService` et d'un `IInventoryService`.

**Sans DI (Accouplement Fort) - à éviter :**

```plantuml
@startuml
class OrderService_Sans_DI {
  - paymentService: ConcretePaymentService
  - inventoryService: ConcreteInventoryService
  + OrderService_Sans_DI() {
    ' Couplage fort: instanciation directe
    ' des dépendances concrètes.
    ' Difficile à tester et à maintenir.
    paymentService = new ConcretePaymentService()
    inventoryService = new ConcreteInventoryService()
  }
  + placeOrder(orderData)
}
class ConcretePaymentService
class ConcreteInventoryService

OrderService_Sans_DI --o ConcretePaymentService
OrderService_Sans_DI --o ConcreteInventoryService
@enduml
```

**Avec DI (via Constructeur) - préférable :**

```plantuml
@startuml
interface IPaymentService {
  + processPayment(amount)
}
interface IInventoryService {
  + checkStock(productId)
}

class OrderService_Avec_DI {
  - paymentService: IPaymentService
  - inventoryService: IInventoryService
  + OrderService_Avec_DI(paySvc: IPaymentService, invSvc: IInventoryService) {
    ' Les dépendances (abstractions) sont
    ' "injectées" via le constructeur.
    ' Couplage faible, meilleure testabilité.
    this.paymentService = paySvc
    this.inventoryService = invSvc
  }
  + placeOrder(orderData)
}

class StripePaymentService implements IPaymentService
class PaypalPaymentService implements IPaymentService

class WarehouseInventoryService implements IInventoryService

OrderService_Avec_DI ..> IPaymentService : dépend de
OrderService_Avec_DI ..> IInventoryService : dépend de

package "Conteneur DI / Main Application" as DI_Container {
  DI_Container --> OrderService_Avec_DI : Crée et injecte
  DI_Container --> StripePaymentService : Crée
  DI_Container --> WarehouseInventoryService : Crée
  note "Le conteneur DI (ou le code d'initialisation)\nconstruit les dépendances concrètes\net les injecte dans OrderService."
}
@enduml
```

---

Le candidat doit se rappeler que ces diagrammes sont des outils pour communiquer la conception de son projet. Il doit
choisir ceux qui sont les plus pertinents pour expliquer les aspects clés de son travail et les adapter à son contexte
spécifique. La qualité et la clarté sont plus importantes que la quantité.