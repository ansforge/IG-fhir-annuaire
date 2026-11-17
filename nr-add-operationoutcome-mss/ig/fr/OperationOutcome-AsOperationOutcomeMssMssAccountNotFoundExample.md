# Exemple OperationOutcome MSS - Compte MSS inexistant ou inactif, modification ou suppression (404) - Annuaire Santé v1.2.0-snapshot-3

## Exemple OperationOutcome: Exemple OperationOutcome MSS - Compte MSS inexistant ou inactif, modification ou suppression (404)

-------

**French**

-------

Profil: [AS OperationOutcome MSS](StructureDefinition-as-operationoutcome-mss.md)

### Issues

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Severity** | **Code** | **Details** |
| * | Error | Not Found | Le compte MSS à modifier n'existe pas parmi les comptes MSS actifs |



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "AsOperationOutcomeMssMssAccountNotFoundExample",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-operationoutcome-mss"]
  },
  "issue" : [{
    "severity" : "error",
    "code" : "not-found",
    "details" : {
      "text" : "Le compte MSS à modifier n'existe pas parmi les comptes MSS actifs"
    }
  }]
}

```
