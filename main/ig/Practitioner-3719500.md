# pp16dr-practitioner - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **pp16dr-practitioner**

## Example Practitioner: pp16dr-practitioner

version: 0.1; Dernière mise à jour : 2019-08-31 01:00:00+0100; Langue : fr; 

Information Source: [https://annuaire.sante.fr](https://annuaire.sante.fr)

Profils: [FR Core Practitioner Profile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-practitioner.html), [AS Donnée Restreinte Practitioner Profile](StructureDefinition-as-dr-practitioner.md)

> **AS Registration Extension**
* isFirst: false
* registeringOrganization: Ordre des pharmaciens
* period: 2019-01-15 --> (ongoing)
* status: Définitif

**identifier**: Identifiant National de Professionnel de Santé/810102727017 (use: official, ), N° RPPS/10102727017 (use: official, )

**active**: true

**name**: David CHATELIER 

**telecom**: [davidchatelier@pro.mssante.fr](mailto:davidchatelier@pro.mssante.fr), [davidchatelier@orange.fr](mailto:davidchatelier@orange.fr)

**address**: null 58400 LA-CHARITE-SUR-LOIRE 58400 99100 

**gender**: Male

**birthDate**: 1976-07-17

> **qualification****code**:DE Pharmacien**period**: 2019-01-08 --> (ongoing)

> **qualification****code**:Pharmacien

**communication**: français



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "3719500",
  "meta" : {
    "versionId" : "0.1",
    "lastUpdated" : "2019-08-31T01:00:00.000+01:00",
    "source" : "https://annuaire.sante.fr",
    "profile" : [
      "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner",
      "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dr-practitioner"
    ]
  },
  "language" : "fr",
  "extension" : [
    {
      "extension" : [
        {
          "url" : "isFirst",
          "valueBoolean" : false
        },
        {
          "url" : "registeringOrganization",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://mos.esante.gouv.fr/NOS/TRE_R60-AutoriteEnregistrement/FHIR/TRE-R60-AutoriteEnregistrement",
                "code" : "CNOP"
              }
            ]
          }
        },
        {
          "url" : "period",
          "valuePeriod" : {
            "start" : "2019-01-15"
          }
        },
        {
          "url" : "status",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://mos.esante.gouv.fr/NOS/TRE_R33-StatutInscription/FHIR/TRE-R33-StatutInscription",
                "code" : "D"
              }
            ]
          }
        }
      ],
      "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-registration"
    }
  ],
  "identifier" : [
    {
      "use" : "official",
      "type" : {
        "coding" : [
          {
            "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
            "code" : "IDNPS"
          }
        ]
      },
      "system" : "urn:oid:1.2.250.1.71.4.2.1",
      "value" : "810102727017"
    },
    {
      "use" : "official",
      "type" : {
        "coding" : [
          {
            "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
            "code" : "RPPS"
          }
        ]
      },
      "system" : "https://rpps.esante.gouv.fr",
      "value" : "10102727017"
    }
  ],
  "active" : true,
  "name" : [
    {
      "use" : "usual",
      "family" : "CHATELIER",
      "given" : ["David"],
      "prefix" : ["M"]
    }
  ],
  "telecom" : [
    {
      "extension" : [
        {
          "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point-email-type",
          "valueCoding" : {
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie",
            "code" : "MSSANTE"
          }
        },
        {
          "extension" : [
            {
              "url" : "type",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "https://mos.esante.gouv.fr/NOS/TRE_R257-TypeBAL/FHIR/TRE-R257-TypeBAL",
                    "code" : "PER"
                  }
                ]
              }
            }
          ],
          "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-mailbox-mss-metadata"
        }
      ],
      "system" : "email",
      "value" : "davidchatelier@pro.mssante.fr",
      "rank" : 1
    },
    {
      "system" : "email",
      "value" : "davidchatelier@orange.fr"
    }
  ],
  "address" : [
    {
      "extension" : [
        {
          "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code",
          "valueCoding" : {
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_R13-Commune/FHIR/TRE-R13-Commune",
            "code" : "58059"
          }
        }
      ],
      "_line" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
              "valueString" : "10"
            },
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType",
              "valueString" : "PL"
            },
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase",
              "valueString" : "DES PECHEURS"
            }
          ]
        }
      ],
      "city" : "58400 LA-CHARITE-SUR-LOIRE",
      "postalCode" : "58400",
      "country" : "99100"
    }
  ],
  "gender" : "male",
  "birthDate" : "1976-07-17",
  "qualification" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_R48-DiplomeEtatFrancais/FHIR/TRE-R48-DiplomeEtatFrancais",
            "code" : "DE01"
          },
          {
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_R14-TypeDiplome/FHIR/TRE-R14-TypeDiplome",
            "code" : "DE"
          }
        ]
      },
      "period" : {
        "start" : "2019-01-08"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante",
            "code" : "21"
          },
          {
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_R09-CategorieProfessionnelle/FHIR/TRE-R09-CategorieProfessionnelle",
            "code" : "C"
          }
        ]
      }
    }
  ],
  "communication" : [
    {
      "coding" : [
        {
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_G00-Langue/FHIR/TRE-G00-Langue",
          "code" : "fr"
        }
      ]
    }
  ]
}

```
