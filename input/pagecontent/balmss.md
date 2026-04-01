### Boîte aux lettres messagerie sécurisée de santé

<div style="background-color: #fff9e6; border-left: 4px solid #ff9800; padding: 10px; width: 65%">
Cette page s'adresse à tous les profils (métier et technique). Elle présente les types de BAL MSSanté et les requêtes FHIR permettant de les récupérer.
</div>

#### Présentation

Les boîtes aux lettres du service de messagerie sécurisée de santé (MSSanté) sont rattachées aux professionnels et aux structures présents dans l'Annuaire Santé.

#### Contexte et problématiques

##### Pourquoi l'API FHIR Annuaire Santé actuelle ne suffit-elle pas ?

L'API FHIR Annuaire Santé expose aujourd'hui les BAL MSSanté comme des éléments `telecom` imbriqués dans les ressources `Practitioner`, `PractitionerRole` et `Organization`. Cette modélisation présente plusieurs limites :

<div class="wysiwyg" markdown="1">
- **Pas de ressource dédiée aux BAL** : une BAL n'est pas une ressource FHIR de premier niveau. Il est impossible de récupérer directement « toutes les BAL », indépendamment de leur porteur, sans interroger plusieurs types de ressources.
- **Requêtes multiples obligatoires pour certains types** : les BAL PER sont portées à la fois par `Practitioner` et `PractitionerRole`, ce qui impose deux requêtes distinctes pour couvrir l'ensemble des BAL personnelles.
- **API en lecture seule** : aucune opération d'écriture (`PUT`, `PATCH`) n'est déclarée dans le CapabilityStatement actuel. La mise à jour d'une BAL (ex. liste rouge, description) n'est pas possible via l'API FHIR aujourd'hui.
- **Absence de discriminant clairement identifié pour cibler une BAL** : un professionnel ou une structure peut porter plusieurs BAL MSSanté dans son tableau `telecom`. Il n'existe pas aujourd'hui de discriminant officiellement défini pour identifier une BAL précise parmi d'autres au sein de cette liste. L'adresse (`telecom.value`) est le candidat naturel, mais d'autres attributs (typeBAL, opérateur, service de rattachement) pourraient également jouer ce rôle selon le contexte. Ce manque de convention explicite rend le ciblage d'une BAL spécifique ambigu lors d'une opération de mise à jour.
</div>

Ces limites motivent l'étude d'une approche alternative (voir Option 2 — CodeSystem dans la section "Transactions API").

##### Problématique des permissions

La gestion des droits d'accès et de modification des BAL soulève plusieurs questions non résolues à ce jour :

<div class="wysiwyg" markdown="1">
- **Accès aux données restreintes** : certaines métadonnées des BAL (responsable, téléphone) ne sont pas accessibles en données publiques. Leur consultation est soumise à habilitation.
- **Droit de modification** : qui est autorisé à modifier une BAL ?
  - L'opérateur MSSanté qui gère la BAL ?
  - Le professionnel de santé lui-même (pour ses BAL PER) ?
  - Le gestionnaire de la structure (pour les BAL ORG, APP, CAB) ?
- **BAL CAB et cotitularité** : une BAL CAB peut avoir plusieurs titulaires (un responsable et des cotitulaires). La définition des droits de modification doit préciser si tous les cotitulaires peuvent modifier la BAL ou seulement le responsable.
- **Liste rouge** : la possibilité de passer une BAL en liste rouge (interdisant sa publication) doit être encadrée pour éviter qu'un acteur non habilité ne masque des BAL sans autorisation.
</div>

Ces questions de permissions devront être traitées dans le cadre de la définition du modèle d'autorisation de l'API en écriture.

> **Note** : les problématiques décrites dans cette section ne sont pas des limitations inhérentes à FHIR. Le standard offre les mécanismes nécessaires (PATCH, SearchParameter, CodeSystem, modèles logiques...). La difficulté réside dans la clarification préalable du besoin métier : qui gère quoi, selon quelles règles, et avec quel niveau de granularité.

#### Description métier

| Code | Libellé | Rattachement | Données associées | Modèle logique |
|------|---------|--------------|-------------------|----------------|
| `PER` | BAL personnelle | Identifiant RPPS (BAL générale du professionnel) ou RPPS + structure d'exercice (BAL spécifique à une situation d'exercice) | Adresse, identifiant PP, dématérialisation, liste rouge | [AS BAL MSS PER](StructureDefinition-as-bal-mss-per.html) |
| `ORG` | BAL organisationnelle | Structure (EJ ou EG) | Adresse, identifiant national de structure, service de rattachement, responsable, description, dématérialisation, liste rouge | [AS BAL MSS ORG](StructureDefinition-as-bal-mss-org.html) |
| `APP` | BAL applicative | Structure (EJ ou EG) | Adresse, identifiant national de structure, service de rattachement, responsable, description, dématérialisation, liste rouge | [AS BAL MSS APP](StructureDefinition-as-bal-mss-app.html) |
| `CAB` | BAL de cabinet *(en cours de travaux)* | 1..* identifiants RPPS (un responsable + 0 ou plusieurs cotitulaires) | Adresse, description, responsable (RPPS), cotitulaires (RPPS), dématérialisation, liste rouge | [AS BAL MSS CAB](StructureDefinition-as-bal-mss-cab.html) |

#### Modélisation FHIR actuelle (API Annuaire Santé)

Les BAL sont modélisées via l'élément `telecom` (profil [AS Mailbox MSS](StructureDefinition-as-mailbox-mss.html)), enrichi de l'extension `as-ext-mailbox-mss-metadata` portant les métadonnées de la BAL. Le type de BAL est lié au jeu de valeurs [JDV-J139-TypeBAL-RASS](https://mos.esante.gouv.fr/NOS/JDV_J139-TypeBAL-RASS/FHIR/JDV-J139-TypeBAL-RASS).

| Code | Ressource(s) porteuse(s) |
|------|--------------------------|
| `PER` | `Practitioner` (RPPS seul), `PractitionerRole` (RPPS + structure) |
| `ORG` | `Organization` |
| `APP` | `Organization` |
| `CAB` | `Practitioner` |

#### Transactions API

##### Récupérer toutes les BAL d'un type

Deux approches sont envisagées.

###### Option 1 — Recherche sur les ressources porteuses (approche actuelle)

Le paramètre de recherche [`mailbox-mss-type`](SearchParameter-as-sp-mailbox-mss-type.html) filtre les ressources par type de BAL. Il est de type `token` et disponible sur `Organization`, `Practitioner` et `PractitionerRole`.

L'inconvénient de cette approche est que les BAL sont portées par plusieurs types de ressources distincts. Pour les BAL PER notamment, deux requêtes sont nécessaires (sur `Practitioner` et `PractitionerRole`). Il est possible de les regrouper en un seul appel via une requête batch (voir ci-dessous).

**BAL personnelles (PER)**

Une BAL PER peut être associée à un identifiant RPPS uniquement (`Practitioner`) ou à un RPPS + structure d'exercice (`PractitionerRole`) :

```http
GET [base]/Practitioner?mailbox-mss-type=https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie|PER
GET [base]/PractitionerRole?mailbox-mss-type=https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie|PER
```

Ces deux requêtes peuvent être regroupées en un seul appel HTTP via un batch FHIR :

```json
POST [base]
Content-Type: application/fhir+json

{
  "resourceType": "Bundle",
  "type": "batch",
  "entry": [
    {
      "request": {
        "method": "GET",
        "url": "Practitioner?mailbox-mss-type=https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie|PER"
      }
    },
    {
      "request": {
        "method": "GET",
        "url": "PractitionerRole?mailbox-mss-type=https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie|PER"
      }
    }
  ]
}
```

Le serveur répond avec un `Bundle` de type `batch-response` contenant un entry par requête, chacune portant un `Bundle` de type `searchset`.

**BAL organisationnelles (ORG)**

```http
GET [base]/Organization?mailbox-mss-type=https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie|ORG
```

**BAL applicatives (APP)**

```http
GET [base]/Organization?mailbox-mss-type=https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie|APP
```

**BAL de cabinet (CAB)** *(en cours de travaux)*

<blockquote class="stu-note">
<p>La prise en charge des BAL CAB est en cours de travaux. Les spécifications ci-dessous sont susceptibles d'évoluer.</p>
</blockquote>

```http
GET [base]/Practitioner?mailbox-mss-type=https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie|CAB
```

###### Option 2 — `CodeSystem` avec properties (proposition d'évolution)

Un [`CodeSystem`](https://hl7.org/fhir/R4/codesystem.html) dédié aux BAL MSSanté permettrait de regrouper toutes les BAL dans une ressource unique et homogène. Chaque concept représente une BAL (code = adresse MSSanté), et les `property` portent les métadonnées ainsi que la référence au porteur.

Exemple de structure :

```json
{
  "resourceType": "CodeSystem",
  "url": "https://interop.esante.gouv.fr/ig/fhir/annuaire/CodeSystem/balmss",
  "concept": [
    {
      "code": "prenom.nom@domain.mssante.fr",
      "display": "BAL de M. Nom",
      "property": [
        { "code": "typeBAL", "valueCode": "PER" },
        { "code": "porteur", "valueString": "800012345678" }
      ]
    }
  ]
}
```

Les properties à définir seraient au minimum :

| Property | Type | Description |
|----------|------|-------------|
| `typeBAL` | `code` | Type de BAL : `PER`, `ORG`, `APP`, `CAB` |
| `porteur` | `string` | Identifiant du porteur (RPPS ou identifiant de structure) |
| `typePorteur` | `code` | Nature du porteur : `Practitioner`, `PractitionerRole`, `Organization` |
| `responsible` | `string` | Responsable de la BAL (pour les types CAB) |

La récupération de toutes les BAL d'un type s'effectuerait via l'opération [`$lookup`](https://hl7.org/fhir/R4/codesystem-operation-lookup.html) ou une opération personnalisée de filtrage par property.

<div class="wysiwyg" markdown="1">
**Avantages :**

- Ressource unique pour toutes les BAL, quel que soit le porteur
- Structure extensible via les properties (responsable, cotitulaires pour CAB, etc.)
- Sémantique claire : le CodeSystem est un registre de référence des BAL

**Points de vigilance :**

- La recherche FHIR standard ne supporte pas le filtrage par `property` sur un `CodeSystem` ; une opération personnalisée ou une exposition via `ValueSet/$expand` avec filtres serait nécessaire
- Un CodeSystem est conçu pour la terminologie, pas pour des données d'instance ; ce détournement d'usage doit être documenté et assumé
</div>

###### Paramètres de recherche associés

| Paramètre | Type | Description |
|-----------|------|-------------|
| [`mailbox-mss-type`](SearchParameter-as-sp-mailbox-mss-type.html) | token | Filtre par type de BAL (`PER`, `ORG`, `APP`, `CAB`) |
| [`mailbox-mss`](SearchParameter-as-sp-mailbox-mss.html) | string | Filtre par adresse MSSanté (supporte les modificateurs `:contains` et `:exact`) |

##### Mettre à jour une BAL

<blockquote class="stu-note">
<p>L'API Annuaire Santé est actuellement en lecture seule. Cette section décrit le comportement attendu pour la mise à jour des BAL, en vue d'une future ouverture en écriture.</p>
</blockquote>

###### Option 1 — PATCH sur la ressource porteuse (approche actuelle)

Une BAL étant modélisée comme un élément `telecom` au sein de sa ressource porteuse, sa mise à jour s'effectue par un `PATCH` ciblé sur cette ressource. L'opération `PUT` (remplacement complet de la ressource) est déconseillée car elle expose à des écrasements non intentionnels des autres données du professionnel ou de la structure.

L'approche retenue est le **FHIR Patch** (format `application/fhir+json`), qui utilise une ressource `Parameters` avec des opérations FHIRPath. Il permet de cibler précisément l'élément `telecom` à modifier grâce à l'adresse de la BAL.

**Champs modifiables**

Les métadonnées portées par l'extension `as-ext-mailbox-mss-metadata` peuvent être mises à jour :

| Champ | Extension | PER | ORG | APP | CAB |
|-------|-----------|-----|-----|-----|-----|
| Dématérialisation | `digitization` | X | X | X | X |
| Liste rouge | `listeRouge` | X | X | X | X |
| Description | `description` | | X | X | X |
| Service de rattachement | `service` | | X | X | |
| Responsable | `responsible` | | X | X | X |

L'adresse de la BAL (`telecom.value`) et le type (`typeBAL`) ne sont pas modifiables.

**Exemple — mise à jour de la liste rouge d'une BAL PER**

```json
PATCH [base]/Practitioner/[id]
Content-Type: application/fhir+json

{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "operation",
      "part": [
        { "name": "type", "valueCode": "replace" },
        { "name": "path", "valueString": "Practitioner.telecom.where(value = 'prenom.nom@domain.mssante.fr').extension('https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-mailbox-mss-metadata').extension('listeRouge').value" },
        { "name": "value", "valueBoolean": true }
      ]
    }
  ]
}
```

**Exemple — mise à jour de la description d'une BAL ORG**

```json
PATCH [base]/Organization/[id]
Content-Type: application/fhir+json

{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "operation",
      "part": [
        { "name": "type", "valueCode": "replace" },
        { "name": "path", "valueString": "Organization.telecom.where(value = 'structure@domain.mssante.fr').extension('https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-mailbox-mss-metadata').extension('description').value" },
        { "name": "value", "valueString": "BAL principale de la structure" }
      ]
    }
  ]
}
```

La ressource porteuse et son identifiant sont à récupérer au préalable via une recherche sur `mailbox-mss` (voir section précédente).

###### Option 2 — Mise à jour via `CodeSystem`

Dans l'approche CodeSystem, la BAL est un concept identifié par son adresse. La mise à jour d'une property s'effectue par un `PATCH` FHIRPath ciblant le concept via son code.

**Exemple — mise à jour de la liste rouge**

```json
PATCH [base]/CodeSystem/balmss
Content-Type: application/fhir+json

{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "operation",
      "part": [
        { "name": "type", "valueCode": "replace" },
        { "name": "path", "valueString": "CodeSystem.concept.where(code = 'prenom.nom@domain.mssante.fr').property.where(code = 'listeRouge').valueBoolean" },
        { "name": "value", "valueBoolean": true }
      ]
    }
  ]
}
```

**Exemple — ajout d'un cotitulaire sur une BAL CAB**

L'ajout d'un cotitulaire est une opération `add` sur le tableau `property` du concept :

```json
PATCH [base]/CodeSystem/balmss
Content-Type: application/fhir+json

{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "operation",
      "part": [
        { "name": "type", "valueCode": "add" },
        { "name": "path", "valueString": "CodeSystem.concept.where(code = 'cabinet@domain.mssante.fr')" },
        { "name": "name", "valueString": "property" },
        { "name": "value", "part": [
          { "name": "code", "valueCode": "cotitulaire" },
          { "name": "valueString", "valueString": "800012345679" }
        ]}
      ]
    }
  ]
}
```

Par rapport à l'option 1, cette approche présente un avantage : toutes les mises à jour portent sur une seule ressource (`CodeSystem/balmss`), sans avoir à identifier la ressource porteuse au préalable. En revanche, le support du PATCH sur les éléments imbriqués d'un `CodeSystem` reste à valider selon l'implémentation du serveur.
