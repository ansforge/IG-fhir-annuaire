# Gestion des erreurs BAL MSSanté - Annuaire Santé v1.2.0-snapshot-3

## Gestion des erreurs BAL MSSanté

### Gestion des erreurs de l'API BAL MSSanté

Lorsqu'une requête de création, de modification ou de suppression de BAL MSSanté (`PATCH` sur `Practitioner`, `PractitionerRole` ou `Organization` avec une ressource `Parameters`) est refusée, le serveur retourne une ressource `OperationOutcome` conforme au profil [AS OperationOutcome MSS](StructureDefinition-as-operationoutcome-mss.md).

> Les messages d'erreur sont en cours de revue et ne sont pas définitifs. Les codes d'erreur du compte-rendu (CR) de la rétrocompatibilité V1 sont en cours de définition pour une partie des contrôles.

### Structure d'une anomalie

| | |
| :--- | :--- |
| `issue.severity` | `error`pour tous les contrôles bloquants |
| `issue.code` | Type d'anomalie (valeur du ValueSet[IssueType](http://hl7.org/fhir/ValueSet/issue-type)) |
| `issue.details.coding` | Optionnel : code du CodeSystem[operation-outcome](http://terminology.hl7.org/CodeSystem/operation-outcome)(ex.`MSG_PARAM_INVALID`) |
| `issue.details.text` | Message en français décrivant l'anomalie |

### Contrôles sur la requête (HTTP 400)

| | | |
| :--- | :--- | :--- |
| Longueur maximale dépassée (adresse BAL 256, identifiant PP 256, identifiant PM 32, service de rattachement 160, responsable 160, description 160) | `too-long` | `MSG_PARAM_INVALID` |
| Le type de ressource de l'URL est différent de celui du body | `invalid` | `MSG_RESOURCE_TYPE_MISMATCH` |
| Type de BAL absent | `required` | - |
| Type de BAL hors valeurs attendues (PER, CAB, ORG, APP) | `code-invalid` | `MSG_PARAM_INVALID` |
| Adresse BAL absente du body ou du`path` | `required` | - |
| Format d'adresse BAL invalide (`xxx@<domaine>.mssante.fr`ou`xxx@interop-mssante.apicrypt.org`) | `value` | `MSG_BAD_FORMAT` |
| Indicateur liste rouge absent | `required` | - |
| Indicateur liste rouge non booléen | `value` | `MSG_BAD_FORMAT` |
| Identifiant métier absent de l'URL | `required` | `MSG_PARAM_INVALID` |
| Responsable absent (BAL ORG et APP, création) ou description absente (BAL ORG et APP) | `required` | - |
| `rank`différent d'un entier supérieur ou égal à 1 | `invalid` | `MSG_PARAM_INVALID` |

### Contrôles sur les données

| | | | |
| :--- | :--- | :--- | :--- |
| Compte MSS actif inexistant | modification, suppression | `not-found` | 404 |
| Type de BAL différent de celui du compte existant | création, modification | `business-rule` | 422 |
| Rattachement actif déjà existant | création | `conflict`(`MSG_PARAM_NO_REPEAT`) | 422 |
| Rattachement actif inexistant | modification, suppression | `not-found`(`MSG_NO_EXIST`) | 404 |
| Adresse du`path`différente de celle du`valueContactPoint` | modification | `business-rule` | - |

### Exemples

| | |
| :--- | :--- |
| Exemple | Description |
| [Exemple OperationOutcome MSS - Rattachement actif déjà existant lors d'une création (422)](OperationOutcome-AsOperationOutcomeMssAttachmentAlreadyExistsExample.md) | Rattachement actif déjà existant lors d'une création (422) |
| [Exemple OperationOutcome MSS - Rattachement actif inexistant, modification ou suppression (404)](OperationOutcome-AsOperationOutcomeMssAttachmentNotFoundExample.md) | Rattachement actif inexistant, modification ou suppression (404) |
| [Exemple OperationOutcome MSS - Format d'adresse BAL invalide (400)](OperationOutcome-AsOperationOutcomeMssBadEmailFormatExample.md) | Format d'adresse BAL invalide (400) |
| [Exemple OperationOutcome MSS - Compte MSS inexistant ou inactif, modification ou suppression (404)](OperationOutcome-AsOperationOutcomeMssMssAccountNotFoundExample.md) | Compte MSS inexistant ou inactif, modification ou suppression (404) |
| [Exemple OperationOutcome MSS - Type de ressource incohérent entre l'URL et le body (400)](OperationOutcome-AsOperationOutcomeMssResourceTypeMismatchExample.md) | Type de ressource incohérent entre l'URL et le body (400) |
| [Exemple OperationOutcome MSS - Longueur maximale dépassée (400)](OperationOutcome-AsOperationOutcomeMssTooLongExample.md) | Longueur maximale dépassée (400) |
| [Exemple OperationOutcome MSS - Type de BAL différent de celui du compte existant (422)](OperationOutcome-AsOperationOutcomeMssTypeBalImmutableExample.md) | Type de BAL différent de celui du compte existant (422) |
| [Exemple OperationOutcome MSS - Type de BAL manquant (400)](OperationOutcome-AsOperationOutcomeMssTypeBalRequiredExample.md) | Type de BAL manquant (400) |

