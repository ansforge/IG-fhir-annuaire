# as-sp-address-line - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **as-sp-address-line**

## SearchParameter: as-sp-address-line 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-address-line | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsAddressLineSearchParameter |

 
Recherche sur la version textuelle de l’adresse 

## AsAddressLineSearchParameter

Paramètre `address-line`:`string`

Recherche sur la version textuelle de l'adresse

| | |
| :--- | :--- |
| Ressource | [Organization](http://hl7.org/fhir/R4/organization.html) |
| Expression | `address.line` |
| Multiples | * multipleAnd: It's up to the server whether the parameter may repeat in order to specify multiple values that must all be true
* multipleOr: It's up to the server whether the parameter can have multiple values (separated by comma) where at least one must be true
 |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "as-sp-address-line",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-address-line",
  "version" : "1.1.0",
  "name" : "AsAddressLineSearchParameter",
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
  "description" : "Recherche sur la version textuelle de l'adresse",
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
  "code" : "address-line",
  "base" : ["Organization"],
  "type" : "string",
  "expression" : "address.line"
}

```
