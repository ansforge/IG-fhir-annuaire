# as-sp-pharmacy-licence - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **as-sp-pharmacy-licence**

## SearchParameter: as-sp-pharmacy-licence 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-pharmacy-licence | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsPharmacyLicenceSearchParameter |

 
Paramètre de recherche pour récupérer une pharmacie par son numéro de licence. 

## AsPharmacyLicenceSearchParameter

Paramètre `pharmacy-licence`:`string`

Paramètre de recherche pour récupérer une pharmacie par son numéro de licence.

| | |
| :--- | :--- |
| Ressource | [Organization](http://hl7.org/fhir/R4/organization.html) |
| Expression | `extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-pharmacy-licence').value` |
| Multiples | * multipleAnd: It's up to the server whether the parameter may repeat in order to specify multiple values that must all be true
* multipleOr: It's up to the server whether the parameter can have multiple values (separated by comma) where at least one must be true
 |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "as-sp-pharmacy-licence",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-pharmacy-licence",
  "version" : "1.1.0",
  "name" : "AsPharmacyLicenceSearchParameter",
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
  "description" : "Paramètre de recherche pour récupérer une pharmacie par son numéro de licence.",
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
  "code" : "pharmacy-licence",
  "base" : ["Organization"],
  "type" : "string",
  "expression" : "extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-pharmacy-licence').value"
}

```
