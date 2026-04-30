<div class="dragon" style="width: 65%">
<p><b>Fonctionnalité en cours de réflexion</b> — Les spécifications décrites dans cette page sont exploratoires et sujettes à évolution. Elles n'ont pas encore fait l'objet d'une décision d'implémentation.</p>
<p><b>TL;DR</b> — Cette page décrit les types de BAL MSSanté (PER, ORG, APP, CAB), leurs données associées et leurs modèles logiques. Elle présente trois approches pour les récupérer et les mettre à jour :</p>
<ul>
<li><b>Option 1</b> (approche actuelle) — recherche via <code>mailbox-mss-type</code> sur les ressources porteuses (<code>Practitioner</code>, <code>PractitionerRole</code>, <code>Organization</code>), avec possibilité de regrouper les appels via <code>_type</code> ou batch, et mise à jour par <code>PATCH</code> FHIRPath sur la ressource porteuse — de préférence en mode <b>PATCH conditionnel</b> (via <code>idNatPs</code>, <code>idNatStruct</code> ou <code>idSituationExercice</code>) pour éviter toute recherche préalable.</li>
<li><b>Option 2</b> (proposition d'évolution) — modélisation des BAL dans un <code>CodeSystem</code> dédié, offrant une ressource unique quel que soit le porteur, et mise à jour par <code>PATCH</code> sur le concept correspondant.</li>
<li><b>Option 3</b> (approche à éviter) — exposition des BAL via une API dédiée non standard, présentée ici avec ses arguments défavorables.</li>
</ul>
<p>La page aborde également les problématiques métier non résolues (permissions, discriminant, cycle de vie).</p>
</div>

<div style="background-color: #fff9e6; border-left: 4px solid #ff9800; padding: 10px; width: 65%">
Cette page s'adresse à tous les profils (métier et technique). Elle présente les types de BAL MSSanté et les requêtes FHIR permettant de les récupérer.
</div>

> Une spécification Swagger (OpenAPI 3.0) des endpoints décrits dans cette page est disponible : [openapi-balmss.yaml](openapi-balmss.yaml).

Les boîtes aux lettres du service de messagerie sécurisée de santé (MSSanté) sont rattachées aux professionnels et aux structures présents dans l'Annuaire Santé.

### Contexte et problématiques

#### Description du besoin

Les cas d'usage autour des BAL MSSanté sont de trois natures :

<div class="wysiwyg" markdown="1">
- **Récupération** : retrouver les adresses MSSanté rattachées à un professionnel, une situation d'exercice ou une structure — par exemple pour adresser un message sécurisé au bon destinataire ou alimenter un annuaire tiers.
- **Mise à jour** : modifier les métadonnées d'une BAL existante — par exemple passer en liste rouge, activer la dématérialisation ou mettre à jour la description d'une BAL organisationnelle.
- **Gestion des BAL préférentielles** : lorsqu'un professionnel ou une structure porte plusieurs BAL, indiquer laquelle doit être utilisée en priorité — par exemple désigner une BAL principale pour la réception des documents dématérialisés.
</div>

| Code | Libellé | Rattachement | Modèle logique |
|------|---------|--------------|----------------|
| `PER` | BAL personnelle | Identifiant RPPS (BAL générale du professionnel) ou RPPS + structure d'exercice (BAL spécifique à une situation d'exercice) | [AS BAL MSS PER](StructureDefinition-as-bal-mss-per.html) |
| `ORG` | BAL organisationnelle | Structure (EJ ou EG) | [AS BAL MSS ORG](StructureDefinition-as-bal-mss-org.html) |
| `APP` | BAL applicative | Structure (EJ ou EG) | [AS BAL MSS APP](StructureDefinition-as-bal-mss-app.html) |
| `CAB` | BAL de cabinet | 1..* identifiants RPPS (un responsable + 0 ou plusieurs cotitulaires) | [AS BAL MSS CAB](StructureDefinition-as-bal-mss-cab.html) |



#### Questions métier à approfondir — indépendantes de FHIR

Certains besoins fonctionnels autour des BAL ne sont pas encore suffisamment définis pour être modélisés, quelle que soit l'approche technique retenue

> Les questions listées ci-dessous sont des problématiques **métier et organisationnelles**. Elles ne sont pas liées au standard FHIR, qui dispose de tous les mécanismes nécessaires pour les implémenter une fois les réponses connues (`PATCH`, `SearchParameter`, `CodeSystem`, modèles logiques...). La difficulté réside dans la clarification préalable du besoin : qui gère quoi, selon quelles règles, et avec quel niveau de granularité.

<div class="wysiwyg" markdown="1">
- **Cas d'usage et profil des consommateurs** : quel type d'acteur souhaiterait requêter les BAL MSSanté de façon dédiée, indépendamment de leur porteur ? Pour quel cas d'usage concret (supervision, synchronisation, routage, alimentation d'un annuaire tiers...) ? Et en quoi l'API FHIR existante — qui expose déjà les BAL via les ressources porteuses — ne suffit-elle pas à couvrir ce besoin ?
- **Cas d'usage de la mise à jour** : quels acteurs ont besoin de modifier des BAL via l'API ? Pour quels attributs et avec quelle fréquence ? L'API actuelle en lecture seule couvre-t-elle les besoins ou une ouverture en écriture est-elle nécessaire ?
- **BAL préférentielle** : lorsqu'un professionnel ou une structure porte plusieurs BAL, comment désigner celle à utiliser en priorité ? FHIR dispose d'un mécanisme natif pour cela : le champ `rank` du type `ContactPoint` (entier, 1 = priorité la plus haute). La question reste donc **métier** : y a-t-il une convention établie pour renseigner ce rang dans le contexte MSSanté, et qui en est responsable ?
- **Discriminant d'identification d'une BAL** : un professionnel ou une structure peut porter plusieurs BAL MSSanté. Le discriminant retenu est l'adresse mail elle-même (`ContactPoint.value`), qui identifie une BAL de façon unique.
- **Gouvernance et droits de modification** : qui est autorisé à modifier une BAL ? L'opérateur MSSanté ? L'établissement ? Le professionnel lui-même ? Les règles d'habilitation ne sont pas définies.
- **Opérateurs multiples** : plusieurs opérateurs MSSanté peuvent coexister. Comment gérer les conflits ou les modifications simultanées sur une même BAL ? Qui fait autorité ?
- **Source de vérité** : l'Annuaire Santé est-il la source de vérité des BAL, ou un reflet d'une gestion opérée ailleurs ? La réponse conditionne le modèle d'écriture.
- **Cycle de vie** : quelles sont les règles de création, de suspension et de suppression d'une BAL ? Ces états sont-ils à modéliser dans l'API ?
- **Traçabilité** : les modifications doivent-elles être auditées ? Avec quel niveau de détail (qui, quand, quelle valeur avant/après) ?
</div>

Ces questions devront être traitées dans le cadre de la définition du modèle d'autorisation et de gouvernance de l'API en écriture, préalablement à toute implémentation.

#### Limites de l'API FHIR Annuaire Santé actuelle

L'API FHIR Annuaire Santé expose aujourd'hui les BAL MSSanté comme des éléments `telecom` imbriqués dans les ressources `Practitioner`, `PractitionerRole` et `Organization`. Cette modélisation présente plusieurs limites techniques :

<div class="wysiwyg" markdown="1">
- **BAL imbriquées dans des ressources porteuses hétérogènes** : les BAL ne sont pas des ressources FHIR de premier niveau — elles sont imbriquées dans `Practitioner`, `PractitionerRole` ou `Organization` selon leur type. Les BAL PER sont en outre portées indifféremment par `Practitioner` (RPPS seul) ou `PractitionerRole` (RPPS + structure), ce qui peut nécessiter plusieurs requêtes pour couvrir l'ensemble d'un type. FHIR offre cependant des mécanismes pour atténuer cette contrainte (`_type`, batch).
- **API en lecture seule** : nécessité de développer les opérations d'écriture (`PUT`, `PATCH`)
</div>

### Modélisation FHIR actuelle (API Annuaire Santé)

Les BAL sont modélisées via l'élément `telecom` (profil [AS Mailbox MSS](StructureDefinition-as-mailbox-mss.html)), enrichi de l'extension `as-ext-mailbox-mss-metadata` portant les métadonnées de la BAL. Le type de BAL est lié au jeu de valeurs [JDV-J139-TypeBAL-RASS](https://mos.esante.gouv.fr/NOS/JDV_J139-TypeBAL-RASS/FHIR/JDV-J139-TypeBAL-RASS).

| Code | Ressource(s) porteuse(s) |
|------|--------------------------|
| `PER` | `Practitioner` (RPPS seul), `PractitionerRole` (RPPS + structure) |
| `ORG` | `Organization` |
| `APP` | `Organization` |
| `CAB` | `Practitioner` |

Le tableau suivant liste les données associées à chaque type de BAL et leur correspondance dans le modèle FHIR. Les chemins sont relatifs à l'élément `telecom` (profil [AS Mailbox MSS](StructureDefinition-as-mailbox-mss.html)) ; les identifiants porteurs sont portés par la ressource elle-même.

| Donnée | PER | ORG | APP | CAB | Chemin FHIR (modélisation actuelle de l'API Annuaire Santé) |
|--------|:---:|:---:|:---:|:---:|-------------|
| Adresse BAL | X | X | X | X | `telecom.value` |
| Type de BAL | X | X | X | X | `telecom.extension[as-mailbox-mss-metadata].extension[type]` |
| Dématérialisation | X | X | X | X | `telecom.extension[as-mailbox-mss-metadata].extension[digitization]` |
| Liste rouge | X | X | X | X | `telecom.extension[as-mailbox-mss-metadata].extension[listeRouge]` |
| Description | | X | X | X | `telecom.extension[as-mailbox-mss-metadata].extension[description]` |
| Service de rattachement | | X | X | | `telecom.extension[as-mailbox-mss-metadata].extension[service]` |
| Responsable | | X | X | X | `telecom.extension[as-mailbox-mss-metadata].extension[responsible]` |
| Téléphone | | X | X | | `telecom.extension[as-mailbox-mss-metadata].extension[phone]` |
| Identifiant PP (RPPS) | X | | | X | `Practitioner.identifier` / `PractitionerRole.identifier` |
| Identifiant national de structure | | X | X | | `Organization.identifier` |
| Responsable (RPPS) | | | | X | `telecom.extension[as-mailbox-mss-metadata].extension[responsible]` |
| Cotitulaires (RPPS) | | | | X | *(en cours de modélisation)* |

### Option 1 — Recherche sur les ressources porteuses (approche actuelle)

Les BAL sont exposées comme éléments `telecom` imbriqués dans les ressources `Practitioner`, `PractitionerRole` et `Organization`. Le paramètre de recherche [`mailbox-mss-type`](SearchParameter-as-sp-mailbox-mss-type.html), ajouté le 25/03/2026 dans la [PR #296](https://github.com/ansforge/IG-fhir-annuaire/pull/296) et non encore implémenté, filtre les ressources par type de BAL. Il est de type `token` et disponible sur `Organization`, `Practitioner` et `PractitionerRole`.

Un avantage clé de cette approche est que les opérateurs MSSanté accèdent, dans la même réponse, à l'ensemble des données du professionnel ou de la structure porteuse (identifiants, qualification, adresse, situation d'exercice, etc.), sans requête supplémentaire. Cela permet également d'éviter tout risque d'identitovigilance lié à une réconciliation de données entre systèmes distincts.

#### Récupération

L'inconvénient de cette approche est que les BAL sont portées par plusieurs types de ressources distincts. Pour les BAL PER notamment, deux requêtes sont nécessaires (sur `Practitioner` et `PractitionerRole`). Il est possible de les regrouper en un seul appel via `_type` ou via une requête batch.

##### BAL personnelles (PER)

Une BAL PER peut être associée à un identifiant RPPS uniquement (`Practitioner`) ou à un RPPS + structure d'exercice (`PractitionerRole`) :

```http
GET [base]/Practitioner?mailbox-mss-type=https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie|PER
GET [base]/PractitionerRole?mailbox-mss-type=https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie|PER
```

Ces deux requêtes peuvent être regroupées en un seul appel via le paramètre `_type`, qui permet d'interroger plusieurs types de ressources simultanément sur le point d'entrée de base :

```http
GET [base]?_type=Practitioner,PractitionerRole&mailbox-mss-type=https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie|PER
```

Le serveur répond avec un `Bundle` de type `searchset` contenant des ressources `Practitioner` et `PractitionerRole` correspondant au filtre.

Le paramètre `_elements` — déjà implémenté sur le serveur — permet de limiter la réponse aux seuls champs utiles. Pour ne récupérer que les données MSSanté (adresse et métadonnées), on peut restreindre aux éléments `telecom` et `identifier` (pour identifier le porteur) :

```http
GET [base]?_type=Practitioner,PractitionerRole&mailbox-mss-type=https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie|PER&_elements=identifier,telecom
```

Le serveur retourne uniquement les champs `identifier` et `telecom` dans chaque ressource, réduisant significativement le volume de données transférées.

**Exemple de réponse — Bundle complet**

La réponse suivante illustre un `Bundle` de type `searchset` contenant deux ressources `Practitioner` ayant une BAL PER (données fictives) :

- [Bundle searchset BAL PER — réponse complète](Bundle-as-bundle-bal-per-full.html)
- Ressources incluses : [Practitioner DUPONT](Practitioner-as-practitioner-bal-per-dupont.html), [Practitioner MARTIN](Practitioner-as-practitioner-bal-per-martin.html)

**Exemple de réponse — Bundle restreint (`_elements=identifier,telecom`)**

Avec le paramètre `_elements=identifier,telecom`, seuls les champs `identifier` et `telecom` sont retournés. Le serveur ajoute `meta.tag = SUBSETTED` pour signaler que la ressource est incomplète :

- [Bundle searchset BAL PER — réponse restreinte](Bundle-as-bundle-bal-per-elements.html)
- Ressources incluses : [Practitioner DUPONT (restreint)](Practitioner-as-practitioner-bal-per-dupont-elements.html), [Practitioner MARTIN (restreint)](Practitioner-as-practitioner-bal-per-martin-elements.html)

Il est également possible de les regrouper via un batch FHIR :

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

##### BAL organisationnelles (ORG)

```http
GET [base]/Organization?mailbox-mss-type=https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie|ORG
```

##### BAL applicatives (APP)

```http
GET [base]/Organization?mailbox-mss-type=https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie|APP
```

##### BAL de cabinet (CAB)

<blockquote class="stu-note">
<p>La prise en charge des BAL CAB est en cours de travaux. Les spécifications ci-dessous sont susceptibles d'évoluer.</p>
</blockquote>

```http
GET [base]/Practitioner?mailbox-mss-type=https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie|CAB
```

##### Paramètres de recherche associés

| Paramètre | Type | Description |
|-----------|------|-------------|
| [`mailbox-mss-type`](SearchParameter-as-sp-mailbox-mss-type.html) | token | Filtre par type de BAL (`PER`, `ORG`, `APP`, `CAB`) |
| [`mailbox-mss`](SearchParameter-as-sp-mailbox-mss.html) | string | Filtre par adresse MSSanté (supporte les modificateurs `:contains` et `:exact`) |

#### Mise à jour

<blockquote class="stu-note">
<p>L'API Annuaire Santé est actuellement en lecture seule. Cette section décrit le comportement attendu pour la mise à jour des BAL, en vue d'une future ouverture en écriture.</p>
</blockquote>

Une BAL étant modélisée comme un élément `telecom` au sein de sa ressource porteuse, sa mise à jour s'effectue par un `PATCH` ciblé sur cette ressource. L'opération `PUT` (remplacement complet de la ressource) est déconseillée car elle expose à des écrasements non intentionnels des autres données du professionnel ou de la structure.

L'approche retenue est le **FHIR Patch** (format `application/fhir+json`), qui utilise une ressource `Parameters` avec des opérations FHIRPath. Il permet de cibler précisément l'élément `telecom` à modifier grâce à l'adresse de la BAL.

Deux façons de cibler la ressource porteuse sont possibles : par identifiant logique (nécessite une recherche préalable) ou, en option recommandée, par **PATCH conditionnel**.

##### PATCH conditionnel (recommandé)

Le PATCH conditionnel FHIR permet de cibler la ressource porteuse directement via un critère de recherche dans l'URL, sans avoir à récupérer son identifiant logique au préalable. Le corps de la requête est identique à celui du PATCH classique.

Les opérateurs MSSanté disposent déjà des identifiants métier de leurs abonnés — le PATCH conditionnel leur permet de mettre à jour une BAL en une seule requête, sans recherche intermédiaire. Les identifiants recommandés sont :

| Type de BAL | Ressource porteuse | Identifiant recommandé | Paramètre de recherche |
|-------------|-------------------|------------------------|------------------------|
| PER (RPPS seul) | `Practitioner` | `idNatPs` | `identifier=urn:oid:1.2.250.1.71.4.2.1\|[idNatPs]` |
| PER (RPPS + structure) | `PractitionerRole` | `idSituationExercice` | `identifier=https://rpps.esante.gouv.fr\|[idSitExerc]` |
| ORG / APP | `Organization` | `idNatStruct` | `identifier=urn:oid:1.2.250.1.71.4.2.2\|[idNatStruct]` |
| CAB | `Practitioner` | `idNatPs` (RPPS du responsable) | `identifier=urn:oid:1.2.250.1.71.4.2.1\|[idNatPs]` |

Si le critère de recherche retourne exactement une ressource, le serveur applique le PATCH. S'il retourne zéro ou plusieurs ressources, le serveur répond respectivement par un `404` ou un `412`.

**Exemple — mise à jour de la liste rouge d'une BAL PER (PATCH conditionnel par idNatPs)**

```json
PATCH [base]/Practitioner?identifier=urn:oid:1.2.250.1.71.4.2.1|810009647990
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

**Exemple — mise à jour d'une BAL PER sur une situation d'exercice (PATCH conditionnel par idSituationExercice)**

```json
PATCH [base]/PractitionerRole?identifier=https://rpps.esante.gouv.fr|1014196210
Content-Type: application/fhir+json

{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "operation",
      "part": [
        { "name": "type", "valueCode": "replace" },
        { "name": "path", "valueString": "PractitionerRole.telecom.where(value = 'prenom.nom@domain.mssante.fr').extension('https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-mailbox-mss-metadata').extension('digitization').value" },
        { "name": "value", "valueBoolean": true }
      ]
    }
  ]
}
```

**Exemple — mise à jour de la description d'une BAL ORG (PATCH conditionnel par idNatStruct)**

```json
PATCH [base]/Organization?identifier=urn:oid:1.2.250.1.71.4.2.2|410101788189003
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

##### PATCH par identifiant logique

Lorsque l'identifiant logique de la ressource porteuse est déjà connu, il peut être utilisé directement. La ressource porteuse peut sinon être récupérée au préalable via une recherche sur `mailbox-mss`.

##### Champs modifiables

Les métadonnées portées par l'extension `as-ext-mailbox-mss-metadata` peuvent être mises à jour :

| Champ | Extension | PER | ORG | APP | CAB |
|-------|-----------|-----|-----|-----|-----|
| Dématérialisation | `digitization` | X | X | X | X |
| Liste rouge | `listeRouge` | X | X | X | X |
| Description | `description` | | X | X | X |
| Service de rattachement | `service` | | X | X | |
| Responsable | `responsible` | | X | X | X |

L'adresse de la BAL (`telecom.value`) et le type (`typeBAL`) ne sont pas modifiables.

##### Exemple — mise à jour de la liste rouge d'une BAL PER

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

##### Exemple — mise à jour simultanée de plusieurs attributs d'une BAL PER

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

##### Exemple — mise à jour de la description d'une BAL ORG

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

#### Création

<blockquote class="stu-note">
<p>L'API Annuaire Santé est actuellement en lecture seule. Cette section décrit le comportement attendu pour la création de BAL, en vue d'une future ouverture en écriture.</p>
</blockquote>

L'ajout d'une nouvelle BAL s'effectue par un `PATCH` sur la ressource porteuse avec une opération `insert` dans le tableau `telecom`. La ressource porteuse doit être identifiée au préalable (par son identifiant ou via une recherche).

##### Exemple — ajout d'une BAL PER sur un Practitioner

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

#### Suppression

<blockquote class="stu-note">
<p>L'API Annuaire Santé est actuellement en lecture seule. Cette section décrit le comportement attendu pour la suppression de BAL, en vue d'une future ouverture en écriture.</p>
</blockquote>

La suppression d'une BAL s'effectue par un `PATCH` sur la ressource porteuse avec une opération `delete` ciblant le `telecom` via son adresse. La ressource porteuse doit être identifiée au préalable.

##### Exemple — suppression d'une BAL PER

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

### Option 2 — `CodeSystem` avec properties (proposition d'évolution)

Un [`CodeSystem`](https://hl7.org/fhir/R4/codesystem.html) dédié aux BAL MSSanté permettrait de regrouper toutes les BAL dans une ressource unique et homogène. Chaque concept représente une BAL (code = adresse MSSanté), et les `property` portent les métadonnées ainsi que la référence au porteur.

Les properties à définir seraient au minimum :

| Property | Type | Description |
|----------|------|-------------|
| `typeBAL` | `code` | Type de BAL : `PER`, `ORG`, `APP`, `CAB` |
| `porteur` | `string` | Identifiant du porteur (RPPS ou identifiant de structure) |
| `typePorteur` | `code` | Nature du porteur : `Practitioner`, `PractitionerRole`, `Organization` |
| `responsible` | `string` | Responsable de la BAL (pour les types CAB) |

<div class="wysiwyg" markdown="1">
**Avantages :**

- Ressource unique pour toutes les BAL, quel que soit le porteur
- Structure extensible via les properties (responsable, cotitulaires pour CAB, etc.)
- Sémantique claire : le CodeSystem est un registre de référence des BAL
- Possibilité de définir un `ValueSet` par type de BAL (ex. `ValueSet/balmss-per`, `ValueSet/balmss-org`...), permettant de récupérer en une requête l'ensemble des BAL d'un type via `ValueSet/$expand`

**Points de vigilance :**

- La recherche FHIR standard ne supporte pas le filtrage par `property` sur un `CodeSystem` ; une opération personnalisée ou une exposition via `ValueSet/$expand` avec filtres serait nécessaire
- Un CodeSystem est conçu pour la terminologie, pas pour des données d'instance ; ce détournement d'usage doit être documenté et assumé
</div>

#### Récupération de l'ensemble des bal MSS

La récupération de toutes les BAL d'un type s'effectuerait via l'opération [`ValueSet/$expand`](https://hl7.org/fhir/R4/valueset-operation-expand.html), en définissant un `ValueSet` par type de BAL (ex. `ValueSet/balmss-per`, `ValueSet/balmss-org`...) dont le `compose` filtre les concepts du `CodeSystem` par la property `typeBAL`. Un seul appel suffit alors pour récupérer l'ensemble des BAL d'un type donné.

L'opération [`CodeSystem/$lookup`](https://hl7.org/fhir/R4/codesystem-operation-lookup.html) répond à un besoin différent : elle permet de consulter les propriétés d'une BAL dont on connaît déjà l'adresse (le code), par exemple pour vérifier son statut liste rouge ou son responsable.

Exemple de structure du CodeSystem :

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

#### Mise à jour d'informations relatives à la BAL MSS

Dans l'approche CodeSystem, la BAL est un concept identifié par son adresse. La mise à jour d'une property s'effectue par un `PATCH` FHIRPath ciblant le concept via son code. Toutes les mises à jour portent sur une seule ressource (`CodeSystem/balmss`), sans avoir à identifier la ressource porteuse au préalable.

<blockquote class="stu-note">
<p>Le support du PATCH sur les éléments imbriqués d'un <code>CodeSystem</code> reste à valider selon l'implémentation du serveur.</p>
</blockquote>

##### Exemple — mise à jour de la liste rouge

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

##### Exemple — ajout d'un cotitulaire sur une BAL CAB

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

#### Création

<blockquote class="stu-note">
<p>L'API Annuaire Santé est actuellement en lecture seule. Cette section décrit le comportement attendu pour la création de BAL, en vue d'une future ouverture en écriture.</p>
</blockquote>

L'ajout d'une nouvelle BAL s'effectue par un `PATCH` sur `CodeSystem/balmss` avec une opération `insert` dans le tableau `concept`. Toutes les créations portent sur la même ressource, sans avoir à identifier une ressource porteuse au préalable.

##### Exemple — ajout d'une BAL PER

```json
PATCH [base]/CodeSystem/balmss
Content-Type: application/fhir+json

{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "operation",
      "part": [
        { "name": "type", "valueCode": "insert" },
        { "name": "path", "valueString": "CodeSystem.concept" },
        { "name": "index", "valueInteger": 0 },
        { "name": "value", "part": [
          { "name": "code", "valueCode": "prenom.nom@domain.mssante.fr" },
          { "name": "display", "valueString": "BAL de M. Nom" },
          { "name": "property", "part": [
            { "name": "code", "valueCode": "typeBAL" },
            { "name": "valueCode", "valueCode": "PER" }
          ]},
          { "name": "property", "part": [
            { "name": "code", "valueCode": "porteur" },
            { "name": "valueString", "valueString": "800012345678" }
          ]},
          { "name": "property", "part": [
            { "name": "code", "valueCode": "typePorteur" },
            { "name": "valueCode", "valueCode": "Practitioner" }
          ]}
        ]}
      ]
    }
  ]
}
```

#### Suppression

<blockquote class="stu-note">
<p>L'API Annuaire Santé est actuellement en lecture seule. Cette section décrit le comportement attendu pour la suppression de BAL, en vue d'une future ouverture en écriture.</p>
</blockquote>

La suppression d'une BAL s'effectue par un `PATCH` sur `CodeSystem/balmss` avec une opération `delete` ciblant le concept via son code (l'adresse de la BAL).

##### Exemple — suppression d'une BAL PER

```json
PATCH [base]/CodeSystem/balmss
Content-Type: application/fhir+json

{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "operation",
      "part": [
        { "name": "type", "valueCode": "delete" },
        { "name": "path", "valueString": "CodeSystem.concept.where(code = 'prenom.nom@domain.mssante.fr')" }
      ]
    }
  ]
}
```

### Option 3 — API dédiée MSS non FHIR (endpoint custom)

Cette approche consiste à exposer les BAL MSSanté via une API REST dédiée, indépendante de l'API FHIR Annuaire Santé, avec des endpoints et un modèle de données propres (non normés FHIR). La variante FHIR de cette architecture — avec une base MSS dédiée et une API FHIR secondaire pour les opérateurs — est illustrée ci-dessous.

<!-- Diagramme généré depuis input/images-source/balmss-architecture-api-dediee.plantuml -->
<p style="width:100%">{% include balmss-architecture-api-dediee.svg %}</p>

<p><img src="balmss-architecture-api-dediee.png" alt="Architecture avec une base MSS dédiée — API FHIR Annuaire en lecture et API FHIR MSS dédiée en écriture (PATCH) pour les opérateurs" style="width:100%" /></p>

<div class="wysiwyg" markdown="1">
**Arguments contre :**

- **Rupture avec les standards FHIR et la stratégie ANS** : l'ensemble de l'Annuaire Santé est exposé via une API FHIR normée, alignée sur le CI-SIS et les travaux européens (EEDS). Créer une API parallèle non standard pour les seules BAL MSS fragmente l'écosystème et crée une incohérence architecturale majeure.

- **Duplication de la surface de maintenance** : une API custom viendrait s'ajouter à l'API FHIR existante, sans la remplacer — les ressources porteuses (`Practitioner`, `PractitionerRole`, `Organization`) continueraient d'exposer les BAL via `telecom`. L'ANS devrait maintenir deux surfaces d'exposition parallèles pour les mêmes données.

- **Aucun gain fonctionnel démontré** : les besoins identifiés (récupération par type, mise à jour ciblée, consultation par adresse) peuvent tous être couverts par les Options 1 ou 2, dans le cadre FHIR standard. Une API custom ne résout pas les problématiques métier non résolues (gouvernance, droits, discriminant) — elle les déplace simplement dans un autre système.

- **Complexité d'implémentation élevée pour une valeur marginale** : la conception, la documentation, la sécurisation et le versionning d'une API custom représentent un investissement significatif, sans réutilisation des briques existantes (validation FHIR, authentification SMART on FHIR, outils de publication IG...).

- **Interopérabilité dégradée pour les consommateurs** : les acteurs qui consomment déjà l'API FHIR Annuaire Santé devraient intégrer un second système hétérogène. Cela va à l'encontre de l'objectif de rationalisation des interfaces porté par l'ANS.

- **Non aligné avec la réglementation européenne** : le règlement EEDS et les travaux d'interopérabilité transfrontaliers reposent sur des API FHIR standardisées. Une API custom pour les BAL MSS ne pourrait pas s'inscrire dans ces cadres réglementaires.
</div>

### Comparaison des trois approches

> Ce tableau est provisoire. Il devra être mis à jour au fur et à mesure des décisions fonctionnelles (gouvernance, droits de modification, cas d'usage confirmés).

| Critère | Option 1 — Ressources porteuses | Option 2 — CodeSystem | Option 3 — API custom |
|---------|----------------------------------|----------------------|----------------------|
| **Modèle de données** | BAL imbriquée dans la ressource porteuse via l'attribut `telecom` — usage standard et conforme au modèle FHIR | BAL comme concept autonome dans un `CodeSystem` dédié — usage dérivé : `CodeSystem` est réservé aux terminologies ; l'utiliser pour des données d'instance sort du cadre prévu par le standard et peut poser des problèmes d'interopérabilité avec les outils terminologiques | Modèle propriétaire défini hors standard FHIR — aucune réutilisabilité, aucune validation par les outils de l'écosystème |
| **Récupération de toutes les BAL d'un type** | Requiert d'interroger plusieurs types de ressources ; il existe des solutions pour répondre à ce besoin via un seul appel (`_type` ou batch) | Un seul appel via `ValueSet/$expand` | Un seul appel sur l'endpoint dédié — gain obtenu au prix d'une rupture de cohérence architecturale (ROR, EEDS, MonEspaceSanté, DMP) |
| **Consultation d'une BAL par adresse** | Recherche via `mailbox-mss` sur la ou les ressource•s porteuse•s | `CodeSystem/$lookup` sur le code (adresse) | Requête propriétaire sur l'endpoint dédié |
| **Mise à jour** | `PATCH` FHIRPath sur la ressource porteuse — en **PATCH conditionnel** (via `idNatPs`, `idNatStruct` ou `idSituationExercice`, recommandé) ou par identifiant logique (nécessite une recherche préalable) | `PATCH` FHIRPath sur `CodeSystem/balmss` directement | Opération propriétaire — à concevoir et documenter intégralement |
| **Création** | `PATCH` FHIRPath (`insert`) sur `Practitioner.telecom` / `PractitionerRole.telecom` / `Organization.telecom` — nécessite d'identifier la ressource porteuse au préalable | `PATCH` FHIRPath (`insert`) sur `CodeSystem.concept` directement — sans identifier de ressource porteuse | Opération propriétaire — à concevoir et documenter intégralement |
| **Suppression** | `PATCH` FHIRPath (`delete`) sur `telecom.where(value = '[adresse]')` de la ressource porteuse — nécessite d'identifier la ressource porteuse au préalable | `PATCH` FHIRPath (`delete`) sur `CodeSystem.concept.where(code = '[adresse]')` directement — sans identifier de ressource porteuse | Opération propriétaire — à concevoir et documenter intégralement |
| **Évolution du modèle de données** | Les ressources porteuses disposent déjà d'un modèle riche (éléments natifs FHIR + extensions existantes) ; de nouvelles données peuvent s'appuyer sur des éléments déjà définis ou des extensions dédiées, sans remettre en cause l'approche | Limité aux properties du `CodeSystem` — pas adapté pour des données structurées ou des références vers d'autres ressources FHIR ; tout besoin dépassant ce cadre nécessiterait de repenser l'approche | Libre mais non normé — chaque évolution est à concevoir, versioner et documenter sans filet standard |
| **Complexité d'implémentation côté serveur** | Modérée — l'API FHIR Annuaire Santé est déjà implémentée ; le support de `_type` représente un coût marginal, mais le `PATCH` FHIRPath sur les ressources porteuses reste à développer | Élevée — nécessite la création et l'exposition de nouveaux endpoints (`CodeSystem`, `ValueSet`), une implémentation spécifique de `$expand` avec filtres sur properties, et la validation du PATCH sur éléments imbriqués | Très élevée — conception, sécurisation, documentation et versionning d'une API entièrement custom, sans réutilisation des briques FHIR existantes |
| **Maturité / risque** | Approche actuelle, 90% des fonctionnalités déjà implémentées | Proposition d'évolution, non implémentée — nécessite de créer de nouveaux endpoints (`CodeSystem`, `ValueSet`) non évolutifs | Approche écartée — coût élevé, rupture de cohérence, aucun avantage fonctionnel démontré par rapport aux Options 1 ou 2 |
