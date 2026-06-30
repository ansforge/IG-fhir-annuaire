# AS Organization Authorization Deadline Extension - Annuaire Santé v1.2.0-snapshot-2

## Extension: AS Organization Authorization Deadline Extension 

Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la caducité de l'autorisation sanitaire.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [AS Organization Profile](StructureDefinition-as-organization.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.annuaire|current/StructureDefinition/StructureDefinition-as-ext-organization-authorization-deadline.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-as-ext-organization-authorization-deadline.csv), [Excel](../StructureDefinition-as-ext-organization-authorization-deadline.xlsx), [Schematron](../StructureDefinition-as-ext-organization-authorization-deadline.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-organization-authorization-deadline",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-authorization-deadline",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsOrganizationAuthorizationDeadlineExtension",
  "title" : "AS Organization Authorization Deadline Extension",
  "status" : "draft",
  "date" : "2026-06-30T07:38:14+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    },
    {
      "system" : "email",
      "value" : "monserviceclient.annuaire@esante.gouv.fr"
    }]
  }],
  "description" : "Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la caducité de l'autorisation sanitaire.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Organization"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "AS Organization Authorization Deadline Extension",
      "definition" : "Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la caducité de l'autorisation sanitaire."
    },
    {
      "id" : "Extension.extension:endDate",
      "path" : "Extension.extension",
      "sliceName" : "endDate",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:endDate.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:endDate.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "endDate"
    },
    {
      "id" : "Extension.extension:endDate.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Extension.extension:indicator",
      "path" : "Extension.extension",
      "sliceName" : "indicator",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:indicator.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:indicator.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "indicator"
    },
    {
      "id" : "Extension.extension:indicator.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-authorization-deadline"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
