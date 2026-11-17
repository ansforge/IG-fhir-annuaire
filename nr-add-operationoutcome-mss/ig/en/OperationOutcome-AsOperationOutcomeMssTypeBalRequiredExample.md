# Exemple OperationOutcome MSS - Type de BAL manquant (400) - Annuaire Santé v1.2.0-snapshot-3

## Example OperationOutcome: Exemple OperationOutcome MSS - Type de BAL manquant (400)

-------

**English**

-------

Profile: [AS OperationOutcome MSS](StructureDefinition-as-operationoutcome-mss.md)

### Issues

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Severity** | **Code** | **Details** |
| * | Error | Required element missing | L'attribut type est un champ obligatoire |



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "AsOperationOutcomeMssTypeBalRequiredExample",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-operationoutcome-mss"]
  },
  "issue" : [{
    "severity" : "error",
    "code" : "required",
    "details" : {
      "text" : "L'attribut type est un champ obligatoire"
    }
  }]
}

```
