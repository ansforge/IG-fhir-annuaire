# AS Organization Pharmacy Licence Extension - Annuaire Santé v1.2.0-snapshot-2

## Extension: AS Organization Pharmacy Licence Extension 

Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la licence d’exploitation d’une officine.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [AS Organization Profile](StructureDefinition-as-organization.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.annuaire|current/StructureDefinition/StructureDefinition-as-ext-organization-pharmacy-licence.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-as-ext-organization-pharmacy-licence.csv), [Excel](../StructureDefinition-as-ext-organization-pharmacy-licence.xlsx), [Schematron](../StructureDefinition-as-ext-organization-pharmacy-licence.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-organization-pharmacy-licence",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-pharmacy-licence",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsOrganizationPharmacyLicenceExtension",
  "title" : "AS Organization Pharmacy Licence Extension",
  "status" : "draft",
  "date" : "2026-06-25T11:33:59+00:00",
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
  "description" : "Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la licence d’exploitation d’une officine.",
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
      "short" : "Numéro de la licence d'exploitation d’une officine (numeroLicence).",
      "definition" : "Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la licence d’exploitation d’une officine."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-pharmacy-licence"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
