# Exemple OperationOutcome MSS - Rattachement actif déjà existant lors d'une création (422) - Annuaire Santé v1.2.0-snapshot-3

## Example OperationOutcome: Exemple OperationOutcome MSS - Rattachement actif déjà existant lors d'une création (422)

-------

**English**

-------

Profile: [AS OperationOutcome MSS](StructureDefinition-as-operationoutcome-mss.md)

### Issues

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Severity** | **Code** | **Details** |
| * | Error | Edit Version Conflict | L'adresse mail structure@domain.mssante.fr avec le type APP existe déjà. |



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "AsOperationOutcomeMssAttachmentAlreadyExistsExample",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-operationoutcome-mss"]
  },
  "issue" : [{
    "severity" : "error",
    "code" : "conflict",
    "details" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/operation-outcome",
        "code" : "MSG_PARAM_NO_REPEAT"
      }],
      "text" : "L'adresse mail structure@domain.mssante.fr avec le type APP existe déjà."
    }
  }]
}

```
