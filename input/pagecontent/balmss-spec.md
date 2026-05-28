<div class="dragon" style="width: 65%">
<p><b>Spécification en cours de validation (trial-use)</b> — Les spécifications décrites dans cette page sont susceptibles d'évoluer avant leur publication officielle. Pour comprendre le contexte et les alternatives initialement envisagées, consulter la <a href="balmss-options.html">page de comparaison des options</a>.</p>
</div>

<div style="background-color: #f0f0f0; border-left: 4px solid #666; padding: 10px; width: 65%">
Cette page s'adresse aux développeurs et intégrateurs. Elle décrit les opérations FHIR à implémenter pour la gestion des BAL MSSanté.
</div>

**MSSanté** (Messagerie Sécurisée de Santé) est le service national de messagerie chiffrée pour les professionnels de santé. Une **BAL** (Boîte Aux Lettres) MSSanté est une adresse mail sécurisée rattachée à un professionnel, une situation d'exercice ou une structure de santé.

### Vue d'ensemble

Les BAL MSSanté sont modélisées comme éléments `telecom` au sein de leurs ressources porteuses (`Practitioner`, `PractitionerRole`, `Organization`). Les opérations de récupération s'appuient sur les paramètres de recherche FHIR existants ; les opérations d'écriture (`PATCH`) ciblent directement ces ressources porteuses.

L'API repose sur deux endpoints distincts :

- **Endpoint GET** — l'API FHIR Annuaire Santé existante (lecture seule), utilisée pour récupérer les ressources porteuses et leurs BAL.
- **Endpoint PATCH** — un endpoint en écriture, permettant aux opérateurs MSSanté de modifier les métadonnées des BAL via `PATCH FHIRPath` sur la ressource porteuse identifiée au préalable.

Les capacités de l'endpoint PATCH sont décrites dans le [CapabilityStatement AsMssServerCapabilityStatement](CapabilityStatement-AsMssServerCapabilityStatement.html).

Les opérateurs MSSanté accèdent, dans la même réponse, à l'ensemble des données du professionnel ou de la structure porteuse (identifiants, qualification, adresse, situation d'exercice, etc.), sans requête supplémentaire. Cela évite également tout risque d'identitovigilance lié à une réconciliation de données entre systèmes distincts.

### Modèle de données

Les BAL sont modélisées via l'élément `telecom` (profil [AS Mailbox MSS](StructureDefinition-as-mailbox-mss.html)), enrichi de l'extension `as-ext-mailbox-mss-metadata`. Le type de BAL est lié au jeu de valeurs [JDV-J139-TypeBAL-RASS](https://mos.esante.gouv.fr/NOS/JDV_J139-TypeBAL-RASS/FHIR/JDV-J139-TypeBAL-RASS).

| Code | Ressource(s) porteuse(s) |
|------|--------------------------|
| `PER` | `Practitioner` (RPPS seul), `PractitionerRole` (RPPS + structure) |
| `ORG` | `Organization` |
| `APP` | `Organization` |
| `CAB` | `Practitioner` |

Le discriminant d'une BAL est son adresse mail (`ContactPoint.value`), qui l'identifie de façon unique au sein d'une ressource porteuse. Lorsqu'un professionnel ou une structure porte plusieurs BAL, la BAL préférentielle peut être désignée via le champ `rank` du type `ContactPoint` (entier, 1 = priorité la plus haute).

| Donnée | PER | ORG | APP | CAB | Chemin FHIR |
|--------|:---:|:---:|:---:|:---:|-------------|
| Adresse BAL | X | X | X | X | `telecom.value` |
| Type de BAL | X | X | X | X | `telecom.extension[as-mailbox-mss-metadata].extension[type]` |
| Dématérialisation | X | X | X | X | `telecom.extension[as-mailbox-mss-metadata].extension[digitization]` |
| Liste rouge | X | X | X | X | `telecom.extension[as-mailbox-mss-metadata].extension[listeRouge]` |
| Description | | X | X | X | `telecom.extension[as-mailbox-mss-metadata].extension[description]` |
| Service de rattachement | | X | X | | `telecom.extension[as-mailbox-mss-metadata].extension[service]` |
| Responsable | | X | X | X | `telecom.extension[as-mailbox-mss-metadata].extension[responsible]` |
| Téléphone | | X | X | | `telecom.extension[as-mailbox-mss-metadata].extension[phone]` |
| BAL préférentielle | X | X | X | X | `telecom.rank` (1 = priorité la plus haute) |
| Identifiant PP (RPPS) | X | | | X | `Practitioner.identifier` / `PractitionerRole.identifier` |
| Identifiant national de structure | | X | X | | `Organization.identifier` |
| Responsable (RPPS) | | | | X | `telecom.extension[as-mailbox-mss-metadata].extension[responsible]` |
| Cotitulaires (RPPS) | | | | X | *(en cours de modélisation)* |

### Récupération

Les BAL sont exposées comme éléments `telecom` imbriqués dans les ressources `Practitioner`, `PractitionerRole` et `Organization`. Le paramètre de recherche [`mailbox-mss-type`](SearchParameter-as-sp-mailbox-mss-type.html) filtre les ressources par type de BAL. Il est de type `token` et disponible sur `Organization`, `Practitioner` et `PractitionerRole`.

#### BAL personnelles (PER)

Une BAL PER peut être associée à un identifiant RPPS uniquement (`Practitioner`) ou à un RPPS + structure d'exercice (`PractitionerRole`) :

```http
GET [base]/Practitioner?mailbox-mss-type=https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie|PER
GET [base]/PractitionerRole?mailbox-mss-type=https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie|PER
```

Ces deux requêtes peuvent être regroupées en un seul appel via le paramètre `_type` :

```http
GET [base]?_type=Practitioner,PractitionerRole&mailbox-mss-type=https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie|PER
```

Le serveur répond avec un `Bundle` de type `searchset` contenant des ressources `Practitioner` et `PractitionerRole` correspondant au filtre.

Le paramètre `_elements` permet de limiter la réponse aux seuls champs utiles :

```http
GET [base]?_type=Practitioner,PractitionerRole&mailbox-mss-type=https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie|PER&_elements=identifier,telecom
```

Il est également possible de regrouper les deux requêtes via un batch FHIR :

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

**Exemples de réponse :**

- [Bundle searchset BAL PER — réponse complète](Bundle-as-bundle-bal-per-full.html)
- [Bundle searchset BAL PER — réponse restreinte (`_elements=identifier,telecom`)](Bundle-as-bundle-bal-per-elements.html)

#### BAL organisationnelles (ORG)

```http
GET [base]/Organization?mailbox-mss-type=https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie|ORG
```

#### BAL applicatives (APP)

```http
GET [base]/Organization?mailbox-mss-type=https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie|APP
```

#### BAL de cabinet (CAB)

<blockquote class="stu-note">
<p>La prise en charge des BAL CAB est en cours de travaux. Les spécifications ci-dessous sont susceptibles d'évoluer.</p>
</blockquote>

```http
GET [base]/Practitioner?mailbox-mss-type=https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie|CAB
```

#### Paramètres de recherche

| Paramètre | Type | Description |
|-----------|------|-------------|
| [`mailbox-mss-type`](SearchParameter-as-sp-mailbox-mss-type.html) | token | Filtre par type de BAL (`PER`, `ORG`, `APP`, `CAB`) |
| [`mailbox-mss`](SearchParameter-as-sp-mailbox-mss.html) | string | Filtre par adresse MSSanté (supporte les modificateurs `:contains` et `:exact`) |

### Mise à jour

<blockquote class="stu-note">
<p>L'API Annuaire Santé est actuellement en lecture seule. Cette section décrit le comportement attendu pour la mise à jour des BAL, en vue d'une future ouverture en écriture.</p>
</blockquote>

Une BAL étant modélisée comme un élément `telecom` au sein de sa ressource porteuse, sa mise à jour s'effectue par un `PATCH` ciblé sur cette ressource. L'opération `PUT` (remplacement complet de la ressource) est déconseillée car elle expose à des écrasements non intentionnels des autres données du professionnel ou de la structure.

L'approche retenue est le **FHIR Patch** (format `application/fhir+json`), qui utilise une ressource `Parameters` avec des opérations FHIRPath. Il permet de cibler précisément l'élément `telecom` à modifier grâce à l'adresse de la BAL.

La ressource porteuse et son identifiant sont à récupérer au préalable via une recherche sur `mailbox-mss`.

#### Champs modifiables

Les métadonnées portées par l'extension `as-ext-mailbox-mss-metadata` peuvent être mises à jour :

| Champ | Extension | PER | ORG | APP | CAB |
|-------|-----------|-----|-----|-----|-----|
| Dématérialisation | `digitization` | X | X | X | X |
| Liste rouge | `listeRouge` | X | X | X | X |
| Description | `description` | | X | X | X |
| Service de rattachement | `service` | | X | X | |
| Responsable | `responsible` | | X | X | X |

L'adresse de la BAL (`telecom.value`) et le type (`typeBAL`) ne sont pas modifiables.

#### Exemple — mise à jour de la liste rouge d'une BAL PER

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

#### Exemple — mise à jour simultanée de plusieurs attributs d'une BAL PER

Pour modifier plusieurs attributs en une seule requête, on remplace le `ContactPoint` entier via un `replace` sur l'élément `telecom` ciblé :

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
        { "name": "path", "valueString": "Practitioner.telecom.where(value = 'prenom.nom@domain.mssante.fr')" },
        { "name": "value", "valueContactPoint": {
          "system": "email",
          "value": "prenom.nom@domain.mssante.fr",
          "extension": [{
            "url": "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-mailbox-mss-metadata",
            "extension": [
              { "url": "type", "valueCode": "PER" },
              { "url": "digitization", "valueBoolean": true },
              { "url": "listeRouge", "valueBoolean": true }
            ]
          }]
        }}
      ]
    }
  ]
}
```

#### Exemple — mise à jour de la description d'une BAL ORG

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

#### Conditional PATCH

Le conditional PATCH permet de cibler la ressource porteuse directement via son identifiant métier, sans avoir à récupérer préalablement son ID logique FHIR.

| Ressource | Identifiant | Exemple de requête |
|-----------|-------------|-------------------|
| `Practitioner` | `idnatps` (ex. RPPS) | `PATCH [base]/Practitioner?identifier=<system>\|<idnatps>` |
| `PractitionerRole` | `idSituationExercice` | `PATCH [base]/PractitionerRole?identifier=<system>\|<idSituationExercice>` |
| `Organization` | `idnatstruct` (ex. FINESS géographique) | `PATCH [base]/Organization?identifier=<system>\|<idnatstruct>` |

Le corps de la requête est identique au PATCH par ID. Le serveur retourne `412 Precondition Failed` si le critère correspond à plusieurs ressources, et `404 Not Found` si aucune ressource ne correspond.

##### Exemple — mise à jour de la liste rouge d'une BAL PER via conditional PATCH

```http
PATCH [base]/Practitioner?identifier=urn:oid:1.2.250.1.71.4.2.1|800012345678
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

### Création

<blockquote class="stu-note">
<p>L'API Annuaire Santé est actuellement en lecture seule. Cette section décrit le comportement attendu pour la création de BAL, en vue d'une future ouverture en écriture.</p>
</blockquote>

L'ajout d'une nouvelle BAL s'effectue par un `PATCH` sur la ressource porteuse avec une opération `insert` dans le tableau `telecom`. La ressource porteuse doit être identifiée au préalable (par son identifiant ou via une recherche).

#### Exemple — ajout d'une BAL PER sur un Practitioner

```json
PATCH [base]/Practitioner/[id]
Content-Type: application/fhir+json

{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "operation",
      "part": [
        { "name": "type", "valueCode": "insert" },
        { "name": "path", "valueString": "Practitioner.telecom" },
        { "name": "index", "valueInteger": 0 },
        { "name": "value", "valueContactPoint": {
          "system": "email",
          "value": "prenom.nom@domain.mssante.fr",
          "extension": [{
            "url": "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-mailbox-mss-metadata",
            "extension": [
              { "url": "type", "valueCode": "PER" },
              { "url": "digitization", "valueBoolean": false },
              { "url": "listeRouge", "valueBoolean": false }
            ]
          }]
        }}
      ]
    }
  ]
}
```

### Suppression

<blockquote class="stu-note">
<p>L'API Annuaire Santé est actuellement en lecture seule. Cette section décrit le comportement attendu pour la suppression de BAL, en vue d'une future ouverture en écriture.</p>
</blockquote>

La suppression d'une BAL s'effectue par un `PATCH` sur la ressource porteuse avec une opération `delete` ciblant le `telecom` via son adresse. La ressource porteuse doit être identifiée au préalable.

#### Exemple — suppression d'une BAL PER

```json
PATCH [base]/Practitioner/[id]
Content-Type: application/fhir+json

{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "operation",
      "part": [
        { "name": "type", "valueCode": "delete" },
        { "name": "path", "valueString": "Practitioner.telecom.where(value = 'prenom.nom@domain.mssante.fr')" }
      ]
    }
  ]
}
```

### Opérations combinées

<blockquote class="stu-note">
<p>L'API Annuaire Santé est actuellement en lecture seule. Cette section décrit le comportement attendu pour les opérations combinées sur les BAL, en vue d'une future ouverture en écriture.</p>
</blockquote>

Il est possible de regrouper plusieurs opérations dans une seule requête `PATCH`, en incluant plusieurs paramètres `operation` dans la ressource `Parameters`. Les opérations sont appliquées séquentiellement, dans l'ordre où elles apparaissent.

#### Contexte — Practitioner avec 3 BAL MSSanté

Un professionnel de santé (RPPS `800012345678`) dispose de trois BAL PER. La ressource ci-dessous est volontairement raccourcie (identifiants, nom, qualification omis) :

```json
{
  "resourceType": "Practitioner",
  "id": "pract-800012345678",
  "identifier": [
    { "system": "urn:oid:1.2.250.1.71.4.2.1", "value": "800012345678" }
  ],
  "telecom": [
    {
      "system": "email",
      "value": "jean.dupont@domain.mssante.fr",
      "rank": 1,
      "extension": [{
        "url": "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-mailbox-mss-metadata",
        "extension": [
          { "url": "type", "valueCode": "PER" },
          { "url": "digitization", "valueBoolean": true },
          { "url": "listeRouge", "valueBoolean": false }
        ]
      }]
    },
    {
      "system": "email",
      "value": "jean.dupont.pro@domain.mssante.fr",
      "extension": [{
        "url": "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-mailbox-mss-metadata",
        "extension": [
          { "url": "type", "valueCode": "PER" },
          { "url": "digitization", "valueBoolean": false },
          { "url": "listeRouge", "valueBoolean": false }
        ]
      }]
    },
    {
      "system": "email",
      "value": "jean.dupont.ancien@domain.mssante.fr",
      "extension": [{
        "url": "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-mailbox-mss-metadata",
        "extension": [
          { "url": "type", "valueCode": "PER" },
          { "url": "digitization", "valueBoolean": false },
          { "url": "listeRouge", "valueBoolean": false }
        ]
      }]
    }
  ]
}
```

L'opérateur souhaite, en une seule requête :

1. Passer `jean.dupont.pro@domain.mssante.fr` en liste rouge (`listeRouge` : `false` → `true`)
2. Supprimer `jean.dupont.ancien@domain.mssante.fr`

La BAL préférentielle `jean.dupont@domain.mssante.fr` reste inchangée.

#### Exemple — PATCH combinant mise en liste rouge et suppression

```json
PATCH [base]/Practitioner/pract-800012345678
Content-Type: application/fhir+json

{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "operation",
      "part": [
        { "name": "type", "valueCode": "replace" },
        { "name": "path", "valueString": "Practitioner.telecom.where(value = 'jean.dupont.pro@domain.mssante.fr').extension('https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-mailbox-mss-metadata').extension('listeRouge').value" },
        { "name": "value", "valueBoolean": true }
      ]
    },
    {
      "name": "operation",
      "part": [
        { "name": "type", "valueCode": "delete" },
        { "name": "path", "valueString": "Practitioner.telecom.where(value = 'jean.dupont.ancien@domain.mssante.fr')" }
      ]
    }
  ]
}
```

Le serveur retourne `200 OK` avec la ressource mise à jour. Le `Practitioner` ne contient plus que deux BAL : `jean.dupont@domain.mssante.fr` (inchangée, toujours préférentielle) et `jean.dupont.pro@domain.mssante.fr` (désormais en liste rouge).
