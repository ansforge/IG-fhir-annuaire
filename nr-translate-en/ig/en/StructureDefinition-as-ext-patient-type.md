# AS Patient Type Extension - Annuaire Santé v1.2.0-snapshot-1

## Extension: AS Patient Type Extension 

Extension créée dans le cadre de l'Annuaire Santé pour décrire un ensemble de personnes qui répondent à des critères leur permettant de bénéficier de la discipline décrite.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [AS HealthcareService Social Equipment Profile](StructureDefinition-as-healthcareservice-social-equipment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.annuaire|current/StructureDefinition/StructureDefinition-as-ext-patient-type.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-as-ext-patient-type.csv), [Excel](../StructureDefinition-as-ext-patient-type.xlsx), [Schematron](../StructureDefinition-as-ext-patient-type.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-patient-type",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-patient-type",
  "version" : "1.2.0-snapshot-1",
  "name" : "AsPatientTypeExtension",
  "title" : "AS Patient Type Extension",
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
  "description" : "Extension créée dans le cadre de l'Annuaire Santé pour décrire un ensemble de personnes qui répondent à des critères leur permettant de  bénéficier de la discipline décrite.",
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
    "expression" : "HealthcareService"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "AS Patient Type Extension",
      "definition" : "Extension créée dans le cadre de l'Annuaire Santé pour décrire un ensemble de personnes qui répondent à des critères leur permettant de  bénéficier de la discipline décrite."
    },
    {
      "id" : "Extension.extension:authorizedAgeRange",
      "path" : "Extension.extension",
      "sliceName" : "authorizedAgeRange",
      "short" : "Age de la clientèle autorisée.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:authorizedAgeRange.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:authorizedAgeRange.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "authorizedAgeRange"
    },
    {
      "id" : "Extension.extension:authorizedAgeRange.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Range"
      }]
    },
    {
      "id" : "Extension.extension:installedAgeRange",
      "path" : "Extension.extension",
      "sliceName" : "installedAgeRange",
      "short" : "Age de la clientèle installée.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:installedAgeRange.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:installedAgeRange.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "installedAgeRange"
    },
    {
      "id" : "Extension.extension:installedAgeRange.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Range"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-patient-type"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
