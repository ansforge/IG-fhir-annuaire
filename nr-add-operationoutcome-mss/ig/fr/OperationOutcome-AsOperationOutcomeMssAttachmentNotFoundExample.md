# Exemple OperationOutcome MSS - Rattachement actif inexistant, modification ou suppression (404) - Annuaire Santé v1.2.0-snapshot-3

## Exemple OperationOutcome: Exemple OperationOutcome MSS - Rattachement actif inexistant, modification ou suppression (404)

-------

**French**

-------

Profil: [AS OperationOutcome MSS](StructureDefinition-as-operationoutcome-mss.md)

### Issues

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Severity** | **Code** | **Details** |
| * | Error | Not Found | Aucun rattachement actif n'existe entre l'adresse mail MSSanté indiquée dans le body et l'identifiant métier indiqué dans la requête |



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "AsOperationOutcomeMssAttachmentNotFoundExample",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-operationoutcome-mss"]
  },
  "issue" : [{
    "severity" : "error",
    "code" : "not-found",
    "details" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/operation-outcome",
        "code" : "MSG_NO_EXIST"
      }],
      "text" : "Aucun rattachement actif n'existe entre l'adresse mail MSSanté indiquée dans le body et l'identifiant métier indiqué dans la requête"
    }
  }]
}

```
