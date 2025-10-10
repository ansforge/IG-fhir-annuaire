# pp19dp-practitioner - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **pp19dp-practitioner**

## Example Practitioner: pp19dp-practitioner

version: 0.1; Dernière mise à jour : 2019-09-05 01:00:00+0100; Langue : fr; 

Information Source: [https://annuaire.sante.fr](https://annuaire.sante.fr)

Profils: [FR Core Practitioner Profile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-practitioner.html), [AS Donnée Publique Practitioner Profile](StructureDefinition-as-dp-practitioner.md)

**identifier**: Identifiant National de Professionnel de Santé/810003461033 (use: official, ), N° RPPS/10003461033 (use: official, )

**active**: true

**name**: Arthur Saucier 

**telecom**: [jeromebonnet@pro.mssante.fr](mailto:jeromebonnet@pro.mssante.fr)

> **qualification****code**:DE Docteur en médecine

> **qualification****code**:Médecin



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "334081DP",
  "meta" : {
    "versionId" : "0.1",
    "lastUpdated" : "2019-09-05T01:00:00.000+01:00",
    "source" : "https://annuaire.sante.fr",
    "profile" : [
      "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner",
      "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-practitioner"
    ]
  },
  "language" : "fr",
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
      "extension" : [
        {
          "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point-email-type",
          "valueCoding" : {
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie",
            "code" : "MSSANTE"
          }
        }
      ],
      "system" : "email",
      "value" : "jeromebonnet@pro.mssante.fr"
    }
  ],
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
  ]
}

```
