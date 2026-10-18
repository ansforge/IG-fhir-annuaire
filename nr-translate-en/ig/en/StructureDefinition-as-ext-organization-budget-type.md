# AS Organization Budget Type Extension - Annuaire Santé v1.2.0-snapshot-1

## Extension: AS Organization Budget Type Extension 

Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la nature du budget alloué à la structure.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [AS Organization Profile](StructureDefinition-as-organization.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.annuaire|current/StructureDefinition/StructureDefinition-as-ext-organization-budget-type.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-as-ext-organization-budget-type.csv), [Excel](../StructureDefinition-as-ext-organization-budget-type.xlsx), [Schematron](../StructureDefinition-as-ext-organization-budget-type.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-organization-budget-type",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-budget-type",
  "version" : "1.2.0-snapshot-1",
  "name" : "AsOrganizationBudgetTypeExtension",
  "title" : "AS Organization Budget Type Extension",
  "status" : "draft",
  "date" : "2026-06-18T12:48:39+00:00",
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
  "description" : "Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la nature du budget alloué à la structure.",
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
      "short" : "Nature du budget alloué à la structure (natureEtablissement).",
      "definition" : "Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la nature du budget alloué à la structure."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-budget-type"
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
