# AS Data Trace Extension - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AS Data Trace Extension**

## Extension: AS Data Trace Extension 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-data-trace | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsDataTraceExtension |

Extension créée dans le cadre de l’Annuaire Santé pour tracer l’origine de la donnée (Autorité d’Enregistrement (AE) et Système d’Information (SI)). Des études complémentaires vont être initiées pour envisager l’usage de la ressource Provenance ou meta.source.

**Context of Use**

This extension may be used on the following element(s):

* Element ID Element

**Usage info**

**Usages:**

* Use this Extension: [AS Donnée Publique Device Profile](StructureDefinition-as-dp-device.md), [AS Donnée Publique HealthcareService Healthcare Activity Profile](StructureDefinition-as-dp-healthcareservice-healthcare-activity.md), [AS Donnée Publique HealthcareService Social Equipment Profile](StructureDefinition-as-dp-healthcareservice-social-equipment.md), [AS Donnée Publique Organization Profile](StructureDefinition-as-dp-organization.md)...Show 9 more,[AS Donnée Publique Practitioner Profile](StructureDefinition-as-dp-practitioner.md),[AS Donnée Publique PractitionerRole Profile](StructureDefinition-as-dp-practitionerrole.md),[AS Donnée Restreinte Device Profile](StructureDefinition-as-dr-device.md),[AS Donnée Restreinte HealthcareService Healthcare Activity Profile](StructureDefinition-as-dr-healthcareservice-healthcare-activity.md),[AS Donnée Restreinte HealthcareService Social Equipment Profile](StructureDefinition-as-dr-healthcareservice-social-equipment.md),[AS Donnée Restreinte Organization Profile](StructureDefinition-as-dr-organization.md),[AS Donnée Restreinte Person Profile](StructureDefinition-as-dr-person.md),[AS Donnée Restreinte Practitioner Profile](StructureDefinition-as-dr-practitioner.md)and[AS Donnée Restreinte PractitionerRole Profile](StructureDefinition-as-dr-practitionerrole.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-ext-data-trace)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-as-ext-data-trace.csv), [Excel](StructureDefinition-as-ext-data-trace.xlsx), [Schematron](StructureDefinition-as-ext-data-trace.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-data-trace",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-data-trace",
  "version" : "1.1.0",
  "name" : "AsDataTraceExtension",
  "title" : "AS Data Trace Extension",
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
  "description" : "Extension créée dans le cadre de l'Annuaire Santé pour tracer l'origine de la donnée (Autorité d'Enregistrement (AE) et Système d'Information (SI)). Des études complémentaires vont être initiées pour envisager l'usage de la ressource Provenance ou meta.source.",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Element"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "DataTrace : Informe sur l'origine de la donnée (Autorité d'Enregistrement (AE) et Système d'Information (SI).",
        "definition" : "Extension créée dans le cadre de l'Annuaire Santé pour tracer l'origine de la donnée (Autorité d'Enregistrement (AE) et Système d'Information (SI)). Des études complémentaires vont être initiées pour envisager l'usage de la ressource Provenance ou meta.source."
      },
      {
        "id" : "Extension.extension:autorite-enregistrement",
        "path" : "Extension.extension",
        "sliceName" : "autorite-enregistrement",
        "short" : "Autorité d'enregistrement de la ressource.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:autorite-enregistrement.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:autorite-enregistrement.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "autorite-enregistrement"
      },
      {
        "id" : "Extension.extension:autorite-enregistrement.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J83-AutoriteEnregistrement-RASS/FHIR/JDV-J83-AutoriteEnregistrement-RASS"
        }
      },
      {
        "id" : "Extension.extension:systeme-information",
        "path" : "Extension.extension",
        "sliceName" : "systeme-information",
        "short" : "Système d'information de la ressource.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:systeme-information.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:systeme-information.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "systeme-information"
      },
      {
        "id" : "Extension.extension:systeme-information.value[x]",
        "path" : "Extension.extension.value[x]",
        "short" : "RPPS | FINESS | MSS | CG",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/ValueSet/as-vs-type-systeme-information"
        }
      },
      {
        "id" : "Extension.extension:date-maj-ae",
        "path" : "Extension.extension",
        "sliceName" : "date-maj-ae",
        "short" : "Date de mise à jour de la ressource de l'autorité d'enregistrement. Cette date est différente de l'attribut lastUpdated dû au délai entre la mise à jour de la donnée au niveau de l'autorité d'enregistrement et la publication de la ressource technique au niveau de l'API FHIR.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:date-maj-ae.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:date-maj-ae.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "date-maj-ae"
      },
      {
        "id" : "Extension.extension:date-maj-ae.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-data-trace"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
