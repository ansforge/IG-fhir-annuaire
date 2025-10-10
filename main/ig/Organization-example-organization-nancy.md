# example-organization-nancy - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **example-organization-nancy**

## Example Organization: example-organization-nancy

Profil: [AS Organization Profile](StructureDefinition-as-organization.md)

**identifier**: Identification nationale de structure définie par l’ANS dans le CI_SIS/1540002698 (use: official, ), FINESS d'entité géographique/540002698

**active**: true

**name**: CHRU NANCY - HOPITAUX DE BRABOIS

**telecom**: ph: 0383153030, fax: 0383153522, [direction.generale@chu-nancy.fr](mailto:direction.generale@chu-nancy.fr), [exemple.address@address.mssante.fr](mailto:exemple.address@address.mssante.fr)

**address**: R DU MORVAN, 54511 VANDOEUVRE LES NANCY CEDEX VANDOEUVRE LES NANCY CEDEX 54511 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "example-organization-nancy",
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
      "value" : "1540002698"
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
      "value" : "540002698"
    }
  ],
  "active" : true,
  "name" : "CHRU NANCY - HOPITAUX DE BRABOIS",
  "telecom" : [
    {
      "system" : "phone",
      "value" : "0383153030",
      "rank" : 1
    },
    {
      "system" : "fax",
      "value" : "0383153522"
    },
    {
      "system" : "email",
      "value" : "direction.generale@chu-nancy.fr"
    },
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
                    "code" : "ORG"
                  }
                ]
              }
            },
            {
              "url" : "description",
              "valueString" : "Description-mss"
            },
            {
              "url" : "digitization",
              "valueBoolean" : true
            },
            {
              "url" : "listeRouge",
              "valueBoolean" : false
            }
          ],
          "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-mailbox-mss-metadata"
        }
      ],
      "system" : "email",
      "value" : "exemple.address@address.mssante.fr"
    }
  ],
  "address" : [
    {
      "extension" : [
        {
          "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code",
          "valueCoding" : {
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_R13-Commune/FHIR/TRE-R13-Commune",
            "code" : "54547"
          }
        }
      ],
      "line" : ["R DU MORVAN, 54511 VANDOEUVRE LES NANCY CEDEX"],
      "_line" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType",
              "valueString" : "R"
            },
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase",
              "valueString" : "DU MORVAN"
            }
          ]
        }
      ],
      "city" : "VANDOEUVRE LES NANCY CEDEX",
      "district" : "52",
      "postalCode" : "54511"
    }
  ]
}

```
