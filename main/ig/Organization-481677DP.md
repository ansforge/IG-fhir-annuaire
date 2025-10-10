# pp16dp-organization - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **pp16dp-organization**

## Example Organization: pp16dp-organization

version: 0.1; Dernière mise à jour : 2019-09-02 01:00:00+0100; Langue : fr; 

Information Source: [https://annuaire.sante.fr](https://annuaire.sante.fr)

Profils: [FR Core Organization Profile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-organization.html), [AS Donnée Publique Organization Profile](StructureDefinition-as-dp-organization.md)

**Organization Period**: 2019-09-02 --> (ongoing)

**identifier**: Identification nationale de structure définie par l’ANS dans le CI_SIS/1580008803 (use: official, ), FINESS d'entité juridique/580008803 (use: official, ), Identifiant interne/F58000880311022013 (use: official, )

**active**: true

**type**: Entité légale, Pharmacie d'officine

**name**: PHARMACIE NOLOT



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "481677DP",
  "meta" : {
    "versionId" : "0.1",
    "lastUpdated" : "2019-09-02T01:00:00.000+01:00",
    "source" : "https://annuaire.sante.fr",
    "profile" : [
      "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization",
      "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-organization"
    ]
  },
  "language" : "fr",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/organization-period",
      "valuePeriod" : {
        "start" : "2019-09-02"
      }
    }
  ],
  "identifier" : [
    {
      "use" : "official",
      "type" : {
        "coding" : [
          {
            "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
            "code" : "IDNST"
          }
        ]
      },
      "system" : "urn:oid:1.2.250.1.71.4.2.2",
      "value" : "1580008803"
    },
    {
      "use" : "official",
      "type" : {
        "coding" : [
          {
            "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
            "code" : "FINEJ"
          }
        ]
      },
      "system" : "https://finess.esante.gouv.fr",
      "value" : "580008803"
    },
    {
      "use" : "official",
      "type" : {
        "coding" : [
          {
            "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
            "code" : "INTRN"
          }
        ]
      },
      "system" : "https://rppsrang.esante.gouv.fr",
      "value" : "F58000880311022013"
    }
  ],
  "active" : true,
  "type" : [
    {
      "extension" : [
        {
          "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-types",
          "valueCode" : "organizationType"
        }
      ],
      "coding" : [
        {
          "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307",
          "code" : "LEGAL-ENTITY"
        }
      ]
    },
    {
      "extension" : [
        {
          "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-types",
          "valueCode" : "secteurActiviteRASS"
        }
      ],
      "coding" : [
        {
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R02-SecteurActivite/FHIR/TRE-R02-SecteurActivite",
          "code" : "SA33"
        }
      ]
    }
  ],
  "name" : "PHARMACIE NOLOT"
}

```
