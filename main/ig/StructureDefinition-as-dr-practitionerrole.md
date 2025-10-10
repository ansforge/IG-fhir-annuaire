# AS Donnée Restreinte PractitionerRole Profile - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AS Donnée Restreinte PractitionerRole Profile**

## Resource Profile: AS Donnée Restreinte PractitionerRole Profile 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dr-practitionerrole | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsDrPractitionerRoleProfile |

 
Profil restreint créé à partir de as-practitionerrole dans le contexte des données en accès restreint de l’Annuaire Santé. 

**Usages:**

* Examples for this Profile: [PractitionerRole/1578230](PractitionerRole-1578230.md), [PractitionerRole/1738459](PractitionerRole-1738459.md) and [PractitionerRole/5015602](PractitionerRole-5015602.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-dr-practitionerrole)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-as-dr-practitionerrole.csv), [Excel](StructureDefinition-as-dr-practitionerrole.xlsx), [Schematron](StructureDefinition-as-dr-practitionerrole.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-dr-practitionerrole",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dr-practitionerrole",
  "version" : "1.1.0",
  "name" : "AsDrPractitionerRoleProfile",
  "title" : "AS Donnée Restreinte PractitionerRole Profile",
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
  "description" : "Profil restreint créé à partir de as-practitionerrole dans le contexte des données en accès restreint de l’Annuaire Santé.",
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
      "identity" : "as-practitioner-role-to-mos-situation-exercice",
      "uri" : "https://mos.esante.gouv.fr",
      "name" : "AsPractitionerRoleProfile to MOS - SituationExercice"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "servd",
      "uri" : "http://www.omg.org/spec/ServD/1.0/",
      "name" : "ServD"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "PractitionerRole",
        "path" : "PractitionerRole"
      },
      {
        "id" : "PractitionerRole.meta.extension:as-ext-data-trace",
        "path" : "PractitionerRole.meta.extension",
        "sliceName" : "as-ext-data-trace",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-data-trace"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.meta.profile",
        "path" : "PractitionerRole.meta.profile",
        "min" : 2
      },
      {
        "id" : "PractitionerRole.meta.profile:fr-canonical",
        "path" : "PractitionerRole.meta.profile",
        "sliceName" : "fr-canonical",
        "min" : 1
      },
      {
        "id" : "PractitionerRole.meta.profile:as-dr-canonical",
        "path" : "PractitionerRole.meta.profile",
        "sliceName" : "as-dr-canonical",
        "min" : 1,
        "max" : "1",
        "patternCanonical" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dr-practitionerrole"
      },
      {
        "id" : "PractitionerRole.extension:as-ext-practitionerrole-contracted",
        "path" : "PractitionerRole.extension",
        "sliceName" : "as-ext-practitionerrole-contracted",
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.extension:as-ext-practitionerrole-hascas",
        "path" : "PractitionerRole.extension",
        "sliceName" : "as-ext-practitionerrole-hascas",
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.extension:as-ext-practitionerrole-vitale-accepted",
        "path" : "PractitionerRole.extension",
        "sliceName" : "as-ext-practitionerrole-vitale-accepted",
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.identifier",
        "path" : "PractitionerRole.identifier",
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.identifier:idSituationExercice",
        "path" : "PractitionerRole.identifier",
        "sliceName" : "idSituationExercice",
        "max" : "1"
      },
      {
        "id" : "PractitionerRole.active",
        "path" : "PractitionerRole.active",
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.period",
        "path" : "PractitionerRole.period",
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.practitioner",
        "path" : "PractitionerRole.practitioner",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.organization",
        "path" : "PractitionerRole.organization",
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.code:genreActivite",
        "path" : "PractitionerRole.code",
        "sliceName" : "genreActivite",
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.code:modeExercice",
        "path" : "PractitionerRole.code",
        "sliceName" : "modeExercice",
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.code:typeActiviteLiberale",
        "path" : "PractitionerRole.code",
        "sliceName" : "typeActiviteLiberale",
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.code:statutProfessionnelSSA",
        "path" : "PractitionerRole.code",
        "sliceName" : "statutProfessionnelSSA",
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.code:statutHospitalier",
        "path" : "PractitionerRole.code",
        "sliceName" : "statutHospitalier",
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.code:fonction",
        "path" : "PractitionerRole.code",
        "sliceName" : "fonction",
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.code:metierPharmacien",
        "path" : "PractitionerRole.code",
        "sliceName" : "metierPharmacien",
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.specialty",
        "path" : "PractitionerRole.specialty",
        "max" : "0"
      },
      {
        "id" : "PractitionerRole.healthcareService",
        "path" : "PractitionerRole.healthcareService",
        "max" : "0",
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.telecom",
        "path" : "PractitionerRole.telecom",
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.availableTime",
        "path" : "PractitionerRole.availableTime",
        "max" : "0",
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.notAvailable",
        "path" : "PractitionerRole.notAvailable",
        "max" : "0",
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.availabilityExceptions",
        "path" : "PractitionerRole.availabilityExceptions",
        "max" : "0",
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.endpoint",
        "path" : "PractitionerRole.endpoint",
        "max" : "0",
        "mustSupport" : true
      }
    ]
  }
}

```
