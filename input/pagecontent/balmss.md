### Boîte aux lettres messagerie sécurisée de santé

<div style="background-color: #fff9e6; border-left: 4px solid #ff9800; padding: 10px; width: 65%">
Cette page s'adresse à tous les profils (métier et technique). Elle présente les types de BAL MSSanté et les requêtes FHIR permettant de les récupérer.
</div>

#### Présentation

Les boîtes aux lettres du service de messagerie sécurisée de santé (MSSanté) sont rattachées aux professionnels et aux structures présents dans l'Annuaire Santé. Elles sont modélisées dans les ressources FHIR via l'élément `telecom` (profil [AS Mailbox MSS](StructureDefinition-as-mailbox-mss.html)), enrichi d'une extension portant les métadonnées de la BAL.

#### Types de BAL

Le type de BAL est porté par l'extension `as-ext-mailbox-mss-metadata`, dans le sous-élément `type`, lié au jeu de valeurs [JDV-J139-TypeBAL-RASS](https://mos.esante.gouv.fr/NOS/JDV_J139-TypeBAL-RASS/FHIR/JDV-J139-TypeBAL-RASS).

| Code | Libellé | Rattachement | Ressource(s) porteuse(s) |
|------|---------|--------------|--------------------------|
| `PER` | BAL personnelle | Identifiant RPPS (BAL générale du professionnel) ou RPPS + structure d'exercice (BAL spécifique à une situation d'exercice) | `Practitioner` (RPPS seul), `PractitionerRole` (RPPS + structure) |
| `ORG` | BAL organisationnelle | Structure (EJ ou EG) | `Organization` |
| `APP` | BAL applicative | Structure (EJ ou EG) | `Organization` |
| `CAB` | BAL de cabinet *(en cours de travaux)* | 1..* identifiants RPPS (un responsable + 0 ou plusieurs cotitulaires) | `Practitioner` |

#### Récupérer toutes les BAL d'un type

Le paramètre de recherche [`mailbox-mss-type`](SearchParameter-as-sp-mailbox-mss-type.html) permet de filtrer les ressources par type de BAL MSSanté. Il est de type `token` et disponible sur `Organization`, `Practitioner` et `PractitionerRole`.

##### BAL personnelles (PER)

Une BAL PER peut être :
<div class="wysiwyg" markdown="1">
- associée à un **identifiant RPPS uniquement** (BAL générale du professionnel) → portée par `Practitioner`
- associée à un **identifiant RPPS + une structure d'exercice** (BAL spécifique à une situation d'exercice) → portée par `PractitionerRole`
</div>

```
GET [base]/Practitioner?mailbox-mss-type=https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie|PER
GET [base]/PractitionerRole?mailbox-mss-type=https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie|PER
```

##### BAL organisationnelles (ORG)

Les BAL ORG sont associées à une structure (EJ ou EG) et portées par la ressource `Organization`.

```
GET [base]/Organization?mailbox-mss-type=https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie|ORG
```

##### BAL applicatives (APP)

Les BAL APP sont associées à une structure (EJ ou EG) et portées par la ressource `Organization`.

```
GET [base]/Organization?mailbox-mss-type=https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie|APP
GET [base]/PractitionerRole?mailbox-mss-type=https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie|APP
```

##### BAL de cabinet (CAB) *(en cours de travaux)*

<blockquote class="stu-note">
<p>La prise en charge des BAL CAB est en cours de travaux. Les spécifications ci-dessous sont susceptibles d'évoluer.</p>
</blockquote>

Les BAL CAB sont associées à un ou plusieurs identifiants RPPS : un responsable de la BAL et, optionnellement, des cotitulaires. Elles sont portées par la ressource `Practitioner`.

```
GET [base]/Practitioner?mailbox-mss-type=https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie|CAB
```

#### Paramètres de recherche associés

| Paramètre | Type | Description |
|-----------|------|-------------|
| [`mailbox-mss-type`](SearchParameter-as-sp-mailbox-mss-type.html) | token | Filtre par type de BAL (`PER`, `ORG`, `APP`, `CAB`) |
| [`mailbox-mss`](SearchParameter-as-sp-mailbox-mss.html) | string | Filtre par adresse MSSanté (supporte les modificateurs `:contains` et `:exact`) |
