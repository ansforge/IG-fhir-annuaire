# pp19dp-organization-ej-cab - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **pp19dp-organization-ej-cab**

## Example Organization: pp19dp-organization-ej-cab

version: 0.1; Dernière mise à jour : 2019-09-01 01:00:00+0100; Langue : fr; 

Information Source: [https://annuaire.sante.fr](https://annuaire.sante.fr)

Profils: [FR Core Organization Profile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-organization.html), [AS Donnée Publique Organization Profile](StructureDefinition-as-dp-organization.md)

**Organization Period**: 2019-04-01 --> (ongoing)

**identifier**: Identification nationale de structure définie par l’ANS dans le CI_SIS/410005531586003 (use: official, ), Identifiant interne/https://rppsrang.esante.gouv.fr (use: official, )

**active**: true

**type**: Entité légale, Cabinet de groupe

**name**: CABINET SAINT ANTOINE

**alias**: CABINET DE GROUPE



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "548812DP",
  "meta" : {
    "versionId" : "0.1",
    "lastUpdated" : "2019-09-01T01:00:00.000+01:00",
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
        "start" : "2019-04-01"
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
      "value" : "410005531586003"
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
      "value" : "https://rppsrang.esante.gouv.fr"
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
          "code" : "SA08"
        }
      ]
    }
  ],
  "name" : "CABINET SAINT ANTOINE",
  "alias" : ["CABINET DE GROUPE"]
}

```
