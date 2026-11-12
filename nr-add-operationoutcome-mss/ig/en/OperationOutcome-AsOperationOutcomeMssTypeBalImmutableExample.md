# Exemple OperationOutcome MSS - Type de BAL différent de celui du compte existant (422) - Annuaire Santé v1.2.0-snapshot-3

## Example OperationOutcome: Exemple OperationOutcome MSS - Type de BAL différent de celui du compte existant (422)

-------

**English**

-------

Profile: [AS OperationOutcome MSS](StructureDefinition-as-operationoutcome-mss.md)

### Issues

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Severity** | **Code** | **Details** |
| * | Error | Business Rule Violation | Le type de BAL d'un compte MSS ne peut pas être modifié |



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "AsOperationOutcomeMssTypeBalImmutableExample",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-operationoutcome-mss"]
  },
  "issue" : [{
    "severity" : "error",
    "code" : "business-rule",
    "details" : {
      "text" : "Le type de BAL d'un compte MSS ne peut pas être modifié"
    }
  }]
}

```
