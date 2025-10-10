# as-sp-mailbox-mss - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **as-sp-mailbox-mss**

## SearchParameter: as-sp-mailbox-mss 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-mailbox-mss | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsMailboxMssSearchParameter |

 
Paramètre de recherche pour récupérer une organisation, un praticien ou une situation d’exercice par adresse MSSanté. 

## AsMailboxMssSearchParameter

Paramètre `mailbox-mss`:`string`

Paramètre de recherche pour récupérer une organisation, un praticien ou une situation d'exercice par adresse MSSanté.

| | |
| :--- | :--- |
| Ressources | [Organization](http://hl7.org/fhir/R4/organization.html),[Practitioner](http://hl7.org/fhir/R4/practitioner.html),[PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html) |
| Expression | `telecom.value` |
| Multiples | * multipleAnd: It's up to the server whether the parameter may repeat in order to specify multiple values that must all be true
* multipleOr: It's up to the server whether the parameter can have multiple values (separated by comma) where at least one must be true
 |
| Modifiers | Allowed: contains, exact |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "as-sp-mailbox-mss",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-mailbox-mss",
  "version" : "1.1.0",
  "name" : "AsMailboxMssSearchParameter",
  "status" : "active",
  "date" : "2025-10-10T07:08:46+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [
    {
      "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        },
        {
          "system" : "email",
          "value" : "monserviceclient.annuaire@esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "Paramètre de recherche pour récupérer une organisation, un praticien ou une situation d'exercice par adresse MSSanté.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "code" : "mailbox-mss",
  "base" : ["Organization", "Practitioner", "PractitionerRole"],
  "type" : "string",
  "expression" : "telecom.value",
  "modifier" : ["contains", "exact"]
}

```
