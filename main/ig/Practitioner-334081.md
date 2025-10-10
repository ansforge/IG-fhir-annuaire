# pp19dr-practitioner - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **pp19dr-practitioner**

## Example Practitioner: pp19dr-practitioner

version: 0.1; Dernière mise à jour : 2019-09-05 01:00:00+0100; Langue : fr; 

Information Source: [https://annuaire.sante.fr](https://annuaire.sante.fr)

Profils: [FR Core Practitioner Profile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-practitioner.html), [AS Donnée Restreinte Practitioner Profile](StructureDefinition-as-dr-practitioner.md)

> **AS Registration Extension**
* isFirst: true
* registeringOrganization: Ordre des médecins
* period: 2019-03-10 --> (ongoing)

> **AS Registration Extension**
* isFirst: false
* status: Définitif
* period: 2019-03-30 --> (ongoing)

**identifier**: Identifiant National de Professionnel de Santé/810003461033 (use: official, ), N° RPPS/10003461033 (use: official, )

**active**: true

**name**: Arthur Saucier 

**telecom**: ph: 0603590791, [jeromebonnet@hotmail.fr](mailto:jeromebonnet@hotmail.fr)

**address**: null 92140 CLAMART 92140 99100 

**gender**: Male

**birthDate**: 1995-01-08

> **qualification****code**:DE Docteur en médecine**period**: 2019-03-10 --> (ongoing)

> **qualification****code**:Médecin

**communication**: français



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "334081",
  "meta" : {
    "versionId" : "0.1",
    "lastUpdated" : "2019-09-05T01:00:00.000+01:00",
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
          "valueBoolean" : true
        },
        {
          "url" : "registeringOrganization",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://mos.esante.gouv.fr/NOS/TRE_R60-AutoriteEnregistrement/FHIR/TRE-R60-AutoriteEnregistrement",
                "code" : "CNOM"
              }
            ]
          }
        },
        {
          "url" : "period",
          "valuePeriod" : {
            "start" : "2019-03-10"
          }
        }
      ],
      "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-registration"
    },
    {
      "extension" : [
        {
          "url" : "isFirst",
          "valueBoolean" : false
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
        },
        {
          "url" : "period",
          "valuePeriod" : {
            "start" : "2019-03-30"
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
      "value" : "810003461033"
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
      "value" : "10003461033"
    }
  ],
  "active" : true,
  "name" : [
    {
      "use" : "usual",
      "family" : "Saucier",
      "given" : ["Arthur"],
      "prefix" : ["M"]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "0603590791",
      "rank" : 1
    },
    {
      "system" : "email",
      "value" : "jeromebonnet@hotmail.fr"
    }
  ],
  "address" : [
    {
      "extension" : [
        {
          "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code",
          "valueCoding" : {
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_R13-Commune/FHIR/TRE-R13-Commune",
            "code" : "92023"
          }
        }
      ],
      "_line" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
              "valueString" : "79"
            },
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType",
              "valueString" : "AV"
            },
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase",
              "valueString" : "HENRI BARBUSSE"
            }
          ]
        }
      ],
      "city" : "92140 CLAMART",
      "postalCode" : "92140",
      "country" : "99100"
    }
  ],
  "gender" : "male",
  "birthDate" : "1995-01-08",
  "qualification" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_R48-DiplomeEtatFrancais/FHIR/TRE-R48-DiplomeEtatFrancais",
            "code" : "DE05"
          },
          {
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_R14-TypeDiplome/FHIR/TRE-R14-TypeDiplome",
            "code" : "DE"
          }
        ]
      },
      "period" : {
        "start" : "2019-03-10"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante",
            "code" : "10"
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
