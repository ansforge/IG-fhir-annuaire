# AS Donnée Restreinte Practitioner Profile - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AS Donnée Restreinte Practitioner Profile**

## Resource Profile: AS Donnée Restreinte Practitioner Profile 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dr-practitioner | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsDrPractitionerProfile |

 
Profil restreint créé à partir de as-practitioner dans le contexte des données en accès restreint de l’Annuaire Santé. 

**Usages:**

* Examples for this Profile: [Practitioner/334081](Practitioner-334081.md) and [Practitioner/3719500](Practitioner-3719500.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-dr-practitioner)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-as-dr-practitioner.csv), [Excel](StructureDefinition-as-dr-practitioner.xlsx), [Schematron](StructureDefinition-as-dr-practitioner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-dr-practitioner",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dr-practitioner",
  "version" : "1.1.0",
  "name" : "AsDrPractitionerProfile",
  "title" : "AS Donnée Restreinte Practitioner Profile",
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
  "description" : "Profil restreint créé à partir de as-practitioner dans le contexte des données en accès restreint de l’Annuaire Santé.",
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
      "identity" : "as-practitioner-role-to-mos-savoir-faire",
      "uri" : "https://mos.esante.gouv.fr",
      "name" : "AsPractitionerProfile to MOS - SavoirFaire"
    },
    {
      "identity" : "as-practitioner-role-to-mos-exercice-professionnel",
      "uri" : "https://mos.esante.gouv.fr",
      "name" : "AsPractitionerProfile to MOS - ExerciceProfessionnel"
    },
    {
      "identity" : "as-practitioner-role-to-mos-inscription-ordre",
      "uri" : "https://mos.esante.gouv.fr",
      "name" : "AsPractitionerProfile to MOS - InscriptionOrdre"
    },
    {
      "identity" : "as-practitioner-role-to-mos-diplome",
      "uri" : "https://mos.esante.gouv.fr",
      "name" : "AsPractitionerProfile to MOS - Diplome"
    },
    {
      "identity" : "as-practitioner-role-to-mos-professionnel",
      "uri" : "https://mos.esante.gouv.fr",
      "name" : "AsPractitionerProfile to MOS - Professionnel"
    },
    {
      "identity" : "as-practitioner-role-to-mos-autorisation-exercice",
      "uri" : "https://mos.esante.gouv.fr",
      "name" : "AsPractitionerProfile to MOS - AutorisationExercice"
    },
    {
      "identity" : "as-practitioner-role-to-mos-carte-professionnel",
      "uri" : "https://mos.esante.gouv.fr",
      "name" : "AsPractitionerProfile to MOS - CarteProfessionnel"
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
  "type" : "Practitioner",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Practitioner",
        "path" : "Practitioner"
      },
      {
        "id" : "Practitioner.meta.extension:as-ext-data-trace",
        "path" : "Practitioner.meta.extension",
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
        "id" : "Practitioner.meta.profile",
        "path" : "Practitioner.meta.profile",
        "min" : 2
      },
      {
        "id" : "Practitioner.meta.profile:fr-canonical",
        "path" : "Practitioner.meta.profile",
        "sliceName" : "fr-canonical",
        "min" : 1
      },
      {
        "id" : "Practitioner.meta.profile:as-dr-canonical",
        "path" : "Practitioner.meta.profile",
        "sliceName" : "as-dr-canonical",
        "min" : 1,
        "max" : "1",
        "patternCanonical" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dr-practitioner"
      },
      {
        "id" : "Practitioner.extension:as-ext-registration",
        "path" : "Practitioner.extension",
        "sliceName" : "as-ext-registration",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.extension:as-ext-frpractitioner-authorization",
        "path" : "Practitioner.extension",
        "sliceName" : "as-ext-frpractitioner-authorization",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.extension:as-ext-smartcard",
        "path" : "Practitioner.extension",
        "sliceName" : "as-ext-smartcard",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.extension:as-ext-smartcard.extension:oppositionDate",
        "path" : "Practitioner.extension.extension",
        "sliceName" : "oppositionDate",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.extension:as-ext-digital-certificate",
        "path" : "Practitioner.extension",
        "sliceName" : "as-ext-digital-certificate",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.extension:as-ext-digital-certificate.extension:domain",
        "path" : "Practitioner.extension.extension",
        "sliceName" : "domain",
        "max" : "0"
      },
      {
        "id" : "Practitioner.identifier",
        "path" : "Practitioner.identifier",
        "min" : 2
      },
      {
        "id" : "Practitioner.identifier:idNatPs",
        "path" : "Practitioner.identifier",
        "sliceName" : "idNatPs",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.identifier:rpps",
        "path" : "Practitioner.identifier",
        "sliceName" : "rpps",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.name",
        "path" : "Practitioner.name",
        "max" : "1"
      }
    ]
  }
}

```
