# Exemple OperationOutcome MSS - Format d'adresse BAL invalide (400) - Annuaire Santé v1.2.0-snapshot-3

## Example OperationOutcome: Exemple OperationOutcome MSS - Format d'adresse BAL invalide (400)

-------

**English**

-------

Profile: [AS OperationOutcome MSS](StructureDefinition-as-operationoutcome-mss.md)

### Issues

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Severity** | **Code** | **Details** |
| * | Error | Element value invalid | L'adresse email renseignée n'a pas un format valide. |



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "AsOperationOutcomeMssBadEmailFormatExample",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-operationoutcome-mss"]
  },
  "issue" : [{
    "severity" : "error",
    "code" : "value",
    "details" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/operation-outcome",
        "code" : "MSG_BAD_FORMAT"
      }],
      "text" : "L'adresse email renseignée n'a pas un format valide."
    }
  }]
}

```
