# example-organization-fictive - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **example-organization-fictive**

## Example Organization: example-organization-fictive

Profil: [AS Organization Profile](StructureDefinition-as-organization.md)

**identifier**: Identification nationale de structure définie par l’ANS dans le CI_SIS/1458174839 (use: official, ), FINESS d'entité géographique/458174839

**active**: true

**name**: Hôpital fictif

**alias**: Hôpital fictif pour le guide d'implémentation de l'annuaire

**telecom**: ph: 0248391028, fax: 0248391029, [direction@hopital-fictif.fr](mailto:direction@hopital-fictif.fr)

**address**: R DE LA LIBERTE, 18000 BOURGES BOURGES 18000 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "example-organization-fictive",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization"
    ]
  },
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
      "value" : "1458174839"
    },
    {
      "type" : {
        "coding" : [
          {
            "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
            "code" : "FINEG"
          }
        ]
      },
      "system" : "https://finess.esante.gouv.fr",
      "value" : "458174839"
    }
  ],
  "active" : true,
  "name" : "Hôpital fictif",
  "alias" : [
    "Hôpital fictif pour le guide d'implémentation de l'annuaire"
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "0248391028",
      "rank" : 1
    },
    {
      "system" : "fax",
      "value" : "0248391029"
    },
    {
      "system" : "email",
      "value" : "direction@hopital-fictif.fr"
    }
  ],
  "address" : [
    {
      "extension" : [
        {
          "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code",
          "valueCoding" : {
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_R13-Commune/FHIR/TRE-R13-Commune",
            "code" : "18000"
          }
        }
      ],
      "line" : ["R DE LA LIBERTE, 18000 BOURGES"],
      "_line" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType",
              "valueString" : "R"
            },
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase",
              "valueString" : "DE LA LIBERTE"
            }
          ]
        }
      ],
      "city" : "BOURGES",
      "district" : "18",
      "postalCode" : "18000"
    }
  ]
}

```
