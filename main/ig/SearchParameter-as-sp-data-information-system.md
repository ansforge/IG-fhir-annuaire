# as-sp-data-information-system - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **as-sp-data-information-system**

## SearchParameter: as-sp-data-information-system 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-data-information-system | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsDataInformationSystemSearchParameter |

 
Paramètre de recherche pour récupérer une ressource par système d’information de provenance des données. 

## AsDataInformationSystemSearchParameter

Paramètre `data-information-system`:`token`

Paramètre de recherche pour récupérer une ressource par système d'information de provenance des données.

| | |
| :--- | :--- |
| Ressources | [Organization](http://hl7.org/fhir/R4/organization.html),[Practitioner](http://hl7.org/fhir/R4/practitioner.html),[PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html),[Device](http://hl7.org/fhir/R4/device.html),[HealthcareService](http://hl7.org/fhir/R4/healthcareservice.html) |
| Expression | `extension.where(url='https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-data-trace').extension.where(url='systeme-information').value` |
| Multiples | * multipleAnd: It's up to the server whether the parameter may repeat in order to specify multiple values that must all be true
* multipleOr: It's up to the server whether the parameter can have multiple values (separated by comma) where at least one must be true
 |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "as-sp-data-information-system",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-data-information-system",
  "version" : "1.1.0",
  "name" : "AsDataInformationSystemSearchParameter",
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
  "description" : "Paramètre de recherche pour récupérer une ressource par système d'information de provenance des données.",
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
  "code" : "data-information-system",
  "base" : [
    "Organization",
    "Practitioner",
    "PractitionerRole",
    "Device",
    "HealthcareService"
  ],
  "type" : "token",
  "expression" : "extension.where(url='https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-data-trace').extension.where(url='systeme-information').value"
}

```
