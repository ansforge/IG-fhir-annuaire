# Exemple OperationOutcome MSS - Type de ressource incohérent entre l'URL et le body (400) - Annuaire Santé v1.2.0-snapshot-3

## Exemple OperationOutcome: Exemple OperationOutcome MSS - Type de ressource incohérent entre l'URL et le body (400)

-------

**French**

-------

Profil: [AS OperationOutcome MSS](StructureDefinition-as-operationoutcome-mss.md)

### Issues

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Severity** | **Code** | **Details** |
| * | Error | Invalid Content | Le type de ressource de la requête doit être identique à celui défini dans le body |



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "AsOperationOutcomeMssResourceTypeMismatchExample",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-operationoutcome-mss"]
  },
  "issue" : [{
    "severity" : "error",
    "code" : "invalid",
    "details" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/operation-outcome",
        "code" : "MSG_RESOURCE_TYPE_MISMATCH"
      }],
      "text" : "Le type de ressource de la requête doit être identique à celui défini dans le body"
    }
  }]
}

```
