# AS Donnée Publique Practitioner Profile - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AS Donnée Publique Practitioner Profile**

## Resource Profile: AS Donnée Publique Practitioner Profile 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-practitioner | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsDpPractitionerProfile |

 
Profil public applicatif créé à partir du profil générique as-practitioner dans le contexte des données en libre accès de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement. 

**Usages:**

* Examples for this Profile: [Practitioner/334081DP](Practitioner-334081DP.md) and [Practitioner/3719500DP](Practitioner-3719500DP.md)
* CapabilityStatements using this Profile: [CapabilityStatement[https://interop.esante.gouv.fr/ig/fhir/annuaire/CapabilityStatement/AsServerDPCapabilityStatement|1.1.0]](CapabilityStatement-AsServerDPCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-dp-practitioner)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-as-dp-practitioner.csv), [Excel](StructureDefinition-as-dp-practitioner.xlsx), [Schematron](StructureDefinition-as-dp-practitioner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-dp-practitioner",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-practitioner",
  "version" : "1.1.0",
  "name" : "AsDpPractitionerProfile",
  "title" : "AS Donnée Publique Practitioner Profile",
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
  "description" : "Profil public applicatif créé à partir du profil générique as-practitioner dans le contexte des données en libre accès de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement.",
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
        "id" : "Practitioner.meta.profile:as-dp-canonical",
        "path" : "Practitioner.meta.profile",
        "sliceName" : "as-dp-canonical",
        "min" : 1,
        "max" : "1",
        "patternCanonical" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-practitioner"
      },
      {
        "id" : "Practitioner.extension:as-ext-registration",
        "path" : "Practitioner.extension",
        "sliceName" : "as-ext-registration",
        "max" : "0",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.extension:as-ext-frpractitioner-authorization",
        "path" : "Practitioner.extension",
        "sliceName" : "as-ext-frpractitioner-authorization",
        "max" : "0",
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
        "max" : "0"
      },
      {
        "id" : "Practitioner.extension:as-ext-digital-certificate",
        "path" : "Practitioner.extension",
        "sliceName" : "as-ext-digital-certificate",
        "max" : "0",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.identifier",
        "path" : "Practitioner.identifier",
        "min" : 2
      },
      {
        "id" : "Practitioner.identifier.period",
        "path" : "Practitioner.identifier.period",
        "max" : "0"
      },
      {
        "id" : "Practitioner.identifier.assigner",
        "path" : "Practitioner.identifier.assigner",
        "max" : "0"
      },
      {
        "id" : "Practitioner.identifier:idNatPs",
        "path" : "Practitioner.identifier",
        "sliceName" : "idNatPs",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.identifier:idNatPs.period",
        "path" : "Practitioner.identifier.period",
        "max" : "0"
      },
      {
        "id" : "Practitioner.identifier:idNatPs.assigner",
        "path" : "Practitioner.identifier.assigner",
        "max" : "0"
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
        "id" : "Practitioner.identifier:rpps.period",
        "path" : "Practitioner.identifier.period",
        "max" : "0"
      },
      {
        "id" : "Practitioner.identifier:rpps.assigner",
        "path" : "Practitioner.identifier.assigner",
        "max" : "0"
      },
      {
        "id" : "Practitioner.active",
        "path" : "Practitioner.active",
        "min" : 1
      },
      {
        "id" : "Practitioner.name",
        "path" : "Practitioner.name",
        "max" : "1"
      },
      {
        "id" : "Practitioner.name.period",
        "path" : "Practitioner.name.period",
        "max" : "0"
      },
      {
        "id" : "Practitioner.telecom",
        "path" : "Practitioner.telecom",
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
        }
      },
      {
        "id" : "Practitioner.telecom:mailbox-mss",
        "path" : "Practitioner.telecom",
        "sliceName" : "mailbox-mss"
      },
      {
        "id" : "Practitioner.telecom:mailbox-mss.extension:as-mailbox-mss-metadata",
        "path" : "Practitioner.telecom.extension",
        "sliceName" : "as-mailbox-mss-metadata"
      },
      {
        "id" : "Practitioner.telecom:mailbox-mss.extension:as-mailbox-mss-metadata.extension:responsible",
        "path" : "Practitioner.telecom.extension.extension",
        "sliceName" : "responsible",
        "max" : "0"
      },
      {
        "id" : "Practitioner.telecom:mailbox-mss.extension:as-mailbox-mss-metadata.extension:phone",
        "path" : "Practitioner.telecom.extension.extension",
        "sliceName" : "phone",
        "max" : "0"
      },
      {
        "id" : "Practitioner.telecom:mailbox-mss.extension:as-mailbox-mss-metadata.extension:listeRouge",
        "path" : "Practitioner.telecom.extension.extension",
        "sliceName" : "listeRouge",
        "max" : "0"
      },
      {
        "id" : "Practitioner.address",
        "path" : "Practitioner.address",
        "max" : "0"
      },
      {
        "id" : "Practitioner.qualification",
        "path" : "Practitioner.qualification"
      },
      {
        "id" : "Practitioner.qualification.period",
        "path" : "Practitioner.qualification.period",
        "max" : "0"
      },
      {
        "id" : "Practitioner.qualification:degree",
        "path" : "Practitioner.qualification",
        "sliceName" : "degree"
      },
      {
        "id" : "Practitioner.qualification:degree.extension:as-ext-education-level",
        "path" : "Practitioner.qualification.extension",
        "sliceName" : "as-ext-education-level",
        "max" : "0"
      },
      {
        "id" : "Practitioner.qualification:degree.period",
        "path" : "Practitioner.qualification.period",
        "max" : "0"
      },
      {
        "id" : "Practitioner.qualification:degree.issuer",
        "path" : "Practitioner.qualification.issuer",
        "max" : "0"
      },
      {
        "id" : "Practitioner.qualification:exercicePro",
        "path" : "Practitioner.qualification",
        "sliceName" : "exercicePro"
      },
      {
        "id" : "Practitioner.qualification:exercicePro.period",
        "path" : "Practitioner.qualification.period",
        "max" : "0"
      },
      {
        "id" : "Practitioner.qualification:savoirFaire",
        "path" : "Practitioner.qualification",
        "sliceName" : "savoirFaire"
      },
      {
        "id" : "Practitioner.qualification:savoirFaire.period",
        "path" : "Practitioner.qualification.period",
        "max" : "0"
      },
      {
        "id" : "Practitioner.communication",
        "path" : "Practitioner.communication",
        "max" : "0"
      }
    ]
  }
}

```
