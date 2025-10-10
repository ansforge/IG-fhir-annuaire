# AS Donnée Publique PractitionerRole Profile - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AS Donnée Publique PractitionerRole Profile**

## Resource Profile: AS Donnée Publique PractitionerRole Profile 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-practitionerrole | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsDpPractitionerRoleProfile |

 
Profil public applicatif créé à partir du profil générique as-practitionerrole dans le contexte des données en libre accès de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement. 

**Usages:**

* Examples for this Profile: [PractitionerRole/1578230DP](PractitionerRole-1578230DP.md), [PractitionerRole/1738459DP](PractitionerRole-1738459DP.md) and [PractitionerRole/5015602DP](PractitionerRole-5015602DP.md)
* CapabilityStatements using this Profile: [CapabilityStatement[https://interop.esante.gouv.fr/ig/fhir/annuaire/CapabilityStatement/AsServerDPCapabilityStatement|1.1.0]](CapabilityStatement-AsServerDPCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-dp-practitionerrole)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-as-dp-practitionerrole.csv), [Excel](StructureDefinition-as-dp-practitionerrole.xlsx), [Schematron](StructureDefinition-as-dp-practitionerrole.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-dp-practitionerrole",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-practitionerrole",
  "version" : "1.1.0",
  "name" : "AsDpPractitionerRoleProfile",
  "title" : "AS Donnée Publique PractitionerRole Profile",
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
  "description" : "Profil public applicatif créé à partir du profil générique as-practitionerrole dans le contexte des données en libre accès de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement.",
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
        "id" : "PractitionerRole.meta.profile:as-dp-canonical",
        "path" : "PractitionerRole.meta.profile",
        "sliceName" : "as-dp-canonical",
        "min" : 1,
        "max" : "1",
        "patternCanonical" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-practitionerrole"
      },
      {
        "id" : "PractitionerRole.extension:as-ext-practitionerrole-contracted",
        "path" : "PractitionerRole.extension",
        "sliceName" : "as-ext-practitionerrole-contracted",
        "max" : "0"
      },
      {
        "id" : "PractitionerRole.extension:as-ext-practitionerrole-hascas",
        "path" : "PractitionerRole.extension",
        "sliceName" : "as-ext-practitionerrole-hascas",
        "max" : "0"
      },
      {
        "id" : "PractitionerRole.extension:as-ext-practitionerrole-vitale-accepted",
        "path" : "PractitionerRole.extension",
        "sliceName" : "as-ext-practitionerrole-vitale-accepted",
        "max" : "0"
      },
      {
        "id" : "PractitionerRole.identifier",
        "path" : "PractitionerRole.identifier",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.identifier:idSituationExercice",
        "path" : "PractitionerRole.identifier",
        "sliceName" : "idSituationExercice",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.active",
        "path" : "PractitionerRole.active",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.period",
        "path" : "PractitionerRole.period",
        "max" : "0",
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
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            },
            {
              "type" : "exists",
              "path" : "extension('https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point-email-type')"
            }
          ],
          "rules" : "closed"
        },
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.telecom:mailbox-mss",
        "path" : "PractitionerRole.telecom",
        "sliceName" : "mailbox-mss"
      },
      {
        "id" : "PractitionerRole.telecom:mailbox-mss.extension:as-mailbox-mss-metadata",
        "path" : "PractitionerRole.telecom.extension",
        "sliceName" : "as-mailbox-mss-metadata"
      },
      {
        "id" : "PractitionerRole.telecom:mailbox-mss.extension:as-mailbox-mss-metadata.extension:responsible",
        "path" : "PractitionerRole.telecom.extension.extension",
        "sliceName" : "responsible",
        "max" : "0"
      },
      {
        "id" : "PractitionerRole.telecom:mailbox-mss.extension:as-mailbox-mss-metadata.extension:phone",
        "path" : "PractitionerRole.telecom.extension.extension",
        "sliceName" : "phone",
        "max" : "0"
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
