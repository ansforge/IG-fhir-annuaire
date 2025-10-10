# pp19dp-organization-eg-cab - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **pp19dp-organization-eg-cab**

## Example Organization: pp19dp-organization-eg-cab

version: 0.1; Dernière mise à jour : 2019-09-01 01:00:00+0100; Langue : fr; 

Information Source: [https://annuaire.sante.fr](https://annuaire.sante.fr)

Profils: [FR Core Organization Profile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-organization.html), [AS Donnée Publique Organization Profile](StructureDefinition-as-dp-organization.md)

**Organization Period**: 2019-06-01 --> (ongoing)

**identifier**: Identification nationale de structure définie par l’ANS dans le CI_SIS/1754567860 (use: official, ), FINESS d'entité géographique/754567860 (use: official, ), Identifiant interne/F754567860 (use: official, )

**active**: true

**type**: Entité géographique, Etablissement public de santé, Activités hospitalières

**name**: CH EURE-SEINE

**telecom**: ph: 0450636363, fax: 0450455933

**address**: null PARIS 75014 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "158480DP",
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
        "start" : "2019-06-01"
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
      "value" : "1754567860"
    },
    {
      "use" : "official",
      "type" : {
        "coding" : [
          {
            "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
            "code" : "FINEG"
          }
        ]
      },
      "system" : "https://finess.esante.gouv.fr",
      "value" : "754567860"
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
      "value" : "F754567860"
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
          "code" : "GEOGRAPHICAL-ENTITY"
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
          "code" : "SA01"
        }
      ]
    },
    {
      "extension" : [
        {
          "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-types",
          "valueCode" : "activiteINSEE"
        }
      ],
      "coding" : [
        {
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R75-InseeNAFrev2Niveau5/FHIR/TRE-R75-InseeNAFrev2Niveau5",
          "code" : "86.10Z"
        }
      ]
    }
  ],
  "name" : "CH EURE-SEINE",
  "telecom" : [
    {
      "system" : "phone",
      "value" : "0450636363",
      "rank" : 1
    },
    {
      "system" : "fax",
      "value" : "0450455933"
    }
  ],
  "address" : [
    {
      "extension" : [
        {
          "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code",
          "valueCoding" : {
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_R13-Commune/FHIR/TRE-R13-Commune",
            "code" : "75114"
          }
        }
      ],
      "_line" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
              "valueString" : "96"
            },
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType",
              "valueString" : "R"
            },
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase",
              "valueString" : "DIDOT"
            }
          ]
        }
      ],
      "city" : "PARIS",
      "postalCode" : "75014"
    }
  ]
}

```
