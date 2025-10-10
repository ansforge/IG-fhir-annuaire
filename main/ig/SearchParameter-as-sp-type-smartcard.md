# as-sp-type-smartcard - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **as-sp-type-smartcard**

## SearchParameter: as-sp-type-smartcard 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-type-smartcard | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsTypeSmartCardSearchParameter |

 
Paramètre de recherche pour récupérer les situations d’exercice d’un professionnel par type de carte CPx. 

## AsTypeSmartCardSearchParameter

Paramètre `type-smartcard`:`token`

Paramètre de recherche pour récupérer les situations d'exercice d'un professionnel par type de carte CPx.

| | |
| :--- | :--- |
| Ressource | [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html) |
| Expression | `extension.where(url='https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitionerrole-smartcard').extension.where(url='type').value` |
| Multiples | * multipleAnd: It's up to the server whether the parameter may repeat in order to specify multiple values that must all be true
* multipleOr: It's up to the server whether the parameter can have multiple values (separated by comma) where at least one must be true
 |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "as-sp-type-smartcard",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-type-smartcard",
  "version" : "1.1.0",
  "name" : "AsTypeSmartCardSearchParameter",
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
  "description" : "Paramètre de recherche pour récupérer les situations d'exercice d'un professionnel par type de carte CPx.",
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
  "code" : "type-smartcard",
  "base" : ["PractitionerRole"],
  "type" : "token",
  "expression" : "extension.where(url='https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitionerrole-smartcard').extension.where(url='type').value"
}

```
