# AS ValueSet OrganizationTypes - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AS ValueSet OrganizationTypes**

## ValueSet: AS ValueSet OrganizationTypes 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/ValueSet/as-vs-organization-types | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsVsOrganizationTypes |

 
ValueSet définissant les types d’organisation 

 **References** 

* [AS Organization Types](StructureDefinition-as-ext-organization-types.md)

### Logical Definition (CLD)

* Include tous les codes définis dans [`https://interop.esante.gouv.fr/ig/fhir/annuaire/CodeSystem/as-cs-organization-types`](CodeSystem-as-cs-organization-types.md) version 📦1.1.0

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "as-vs-organization-types",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/ValueSet/as-vs-organization-types",
  "version" : "1.1.0",
  "name" : "AsVsOrganizationTypes",
  "title" : "AS ValueSet OrganizationTypes",
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
  "description" : "ValueSet définissant les types d'organisation",
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
  "compose" : {
    "include" : [
      {
        "system" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/CodeSystem/as-cs-organization-types"
      }
    ]
  }
}

```
