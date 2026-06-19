# AS Installation Extension - Annuaire Santé v1.2.0-snapshot-2

## Extension: AS Installation Extension 

Extension créée dans le cadre de l'Annuaire Santé pour décrire les dates d'installation des équipements (HealthcareService) sanitaires, sociaux, médico-sociaux et d'enseignements

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [AS HealthcareService Social Equipment Profile](StructureDefinition-as-healthcareservice-social-equipment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.annuaire|current/StructureDefinition/StructureDefinition-as-ext-installation.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-as-ext-installation.csv), [Excel](../StructureDefinition-as-ext-installation.xlsx), [Schematron](../StructureDefinition-as-ext-installation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-installation",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-installation",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsInstallationExtension",
  "title" : "AS Installation Extension",
  "status" : "draft",
  "date" : "2026-06-19T13:53:04+00:00",
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
  "description" : "Extension créée dans le cadre de l'Annuaire Santé pour décrire les dates d'installation des équipements (HealthcareService) sanitaires, sociaux, médico-sociaux et d'enseignements",
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
  },
  {
    "type" : "element",
    "expression" : "Device"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "AS Installation Extension",
      "definition" : "Extension créée dans le cadre de l'Annuaire Santé pour décrire les dates d'installation des équipements (HealthcareService) sanitaires, sociaux, médico-sociaux et d'enseignements"
    },
    {
      "id" : "Extension.extension:dateFirstInstallation",
      "path" : "Extension.extension",
      "sliceName" : "dateFirstInstallation",
      "short" : "Date de première installation.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:dateFirstInstallation.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:dateFirstInstallation.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "dateFirstInstallation"
    },
    {
      "id" : "Extension.extension:dateFirstInstallation.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Extension.extension:dateLastInstallation",
      "path" : "Extension.extension",
      "sliceName" : "dateLastInstallation",
      "short" : "dateDerniereInstallation : Date à laquelle le dernier constat d’installation des places est réalisé.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:dateLastInstallation.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:dateLastInstallation.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "dateLastInstallation"
    },
    {
      "id" : "Extension.extension:dateLastInstallation.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Extension.extension:deletedInstallation",
      "path" : "Extension.extension",
      "sliceName" : "deletedInstallation",
      "short" : "suppressionImplantation ou suppressionInstallation : Indicateur de suppression de l’installation.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:deletedInstallation.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:deletedInstallation.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "deletedInstallation"
    },
    {
      "id" : "Extension.extension:deletedInstallation.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-installation"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
