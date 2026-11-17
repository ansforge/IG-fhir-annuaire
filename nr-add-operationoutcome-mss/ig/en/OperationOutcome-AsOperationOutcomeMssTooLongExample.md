# Exemple OperationOutcome MSS - Longueur maximale dépassée (400) - Annuaire Santé v1.2.0-snapshot-3

## Example OperationOutcome: Exemple OperationOutcome MSS - Longueur maximale dépassée (400)

-------

**English**

-------

Profile: [AS OperationOutcome MSS](StructureDefinition-as-operationoutcome-mss.md)

### Issues

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Severity** | **Code** | **Details** |
| * | Error | Content Too Long | La valeur de l'attribut 'responsable' dépasse la longueur maximale autorisée (160 caractères) |



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "AsOperationOutcomeMssTooLongExample",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-operationoutcome-mss"]
  },
  "issue" : [{
    "severity" : "error",
    "code" : "too-long",
    "details" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/operation-outcome",
        "code" : "MSG_PARAM_INVALID"
      }],
      "text" : "La valeur de l'attribut 'responsable' dépasse la longueur maximale autorisée (160 caractères)"
    }
  }]
}

```
