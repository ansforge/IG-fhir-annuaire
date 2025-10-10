# AS Address Extended Datatype Profile - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AS Address Extended Datatype Profile**

## Data Type Profile: AS Address Extended Datatype Profile 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-address-extended | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsAddressExtendedProfile |

 
Datatype profile créé à partir de FrAddress dans le contexte de l’Annuaire Santé pour slicer Address.line. 

**Usages:**

* Use this DataType Profile: [AS Person Birth Place Extension](StructureDefinition-as-ext-person-birth-place.md), [AS Organization Profile](StructureDefinition-as-organization.md) and [AS Practitioner Profile](StructureDefinition-as-practitioner.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-address-extended)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-as-address-extended.csv), [Excel](StructureDefinition-as-address-extended.xlsx), [Schematron](StructureDefinition-as-address-extended.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-address-extended",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-address-extended",
  "version" : "1.1.0",
  "name" : "AsAddressExtendedProfile",
  "title" : "AS Address Extended Datatype Profile",
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
  "description" : "Datatype profile créé à partir de FrAddress dans le contexte de l'Annuaire Santé pour slicer  Address.line.",
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
      "identity" : "as-address-extended-to-mos-exercice-professionnel",
      "uri" : "https://mos.esante.gouv.fr",
      "name" : "AsAddressExtendedProfile to MOS - Adresse"
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
      "identity" : "vcard",
      "uri" : "http://w3.org/vcard",
      "name" : "vCard Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Address",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Address",
        "path" : "Address",
        "mapping" : [
          {
            "identity" : "as-address-extended-to-mos-exercice-professionnel",
            "map" : "Adresse"
          }
        ]
      },
      {
        "id" : "Address.extension:inseeCode",
        "path" : "Address.extension",
        "sliceName" : "inseeCode",
        "mapping" : [
          {
            "identity" : "as-address-extended-to-mos-exercice-professionnel",
            "map" : "Adresse.COGCommune"
          }
        ]
      },
      {
        "id" : "Address.line.extension",
        "path" : "Address.line.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Address.line.extension:careOf",
        "path" : "Address.line.extension",
        "sliceName" : "careOf",
        "short" : "pointRemise (Adresse)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-careOf"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "as-address-extended-to-mos-exercice-professionnel",
            "map" : "Adresse.complementPointGeographique"
          }
        ]
      },
      {
        "id" : "Address.line.extension:additionalLocator",
        "path" : "Address.line.extension",
        "sliceName" : "additionalLocator",
        "short" : "complementPointGeographique (Adresse)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "as-address-extended-to-mos-exercice-professionnel",
            "map" : "Adresse.complementPointGeographique"
          }
        ]
      },
      {
        "id" : "Address.line.extension:houseNumber",
        "path" : "Address.line.extension",
        "sliceName" : "houseNumber",
        "short" : "numeroVoie(Adresse)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "as-address-extended-to-mos-exercice-professionnel",
            "map" : "Adresse.numeroVoie"
          }
        ]
      },
      {
        "id" : "Address.line.extension:buildingNumberSuffix",
        "path" : "Address.line.extension",
        "sliceName" : "buildingNumberSuffix",
        "short" : "(Adresse)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-buildingNumberSuffix"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "as-address-extended-to-mos-exercice-professionnel",
            "map" : "Adresse.extension"
          }
        ]
      },
      {
        "id" : "Address.line.extension:streetNameType",
        "path" : "Address.line.extension",
        "sliceName" : "streetNameType",
        "short" : "typeVoie (Adresse)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "as-address-extended-to-mos-exercice-professionnel",
            "map" : "Adresse.typeVoie"
          }
        ]
      },
      {
        "id" : "Address.line.extension:streetNameType.value[x]",
        "path" : "Address.line.extension.value[x]",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J103-TypeVoie-RASS/FHIR/JDV-J103-TypeVoie-RASS"
        }
      },
      {
        "id" : "Address.line.extension:postBox",
        "path" : "Address.line.extension",
        "sliceName" : "postBox",
        "short" : "mentionDistribution (Adresse)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-postBox"
            ]
          }
        ]
      },
      {
        "id" : "Address.line.extension:streetNameBase",
        "path" : "Address.line.extension",
        "sliceName" : "streetNameBase",
        "short" : "libelleVoie (Adresse)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "as-address-extended-to-mos-exercice-professionnel",
            "map" : "Adresse.libelleVoie"
          }
        ]
      },
      {
        "id" : "Address.line.extension:lieuDit",
        "path" : "Address.line.extension",
        "sliceName" : "lieuDit",
        "short" : "lieuDit (Adresse) : Lieu qui porte un nom rappelant une particularité topographique ou historique.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-lieu-dit"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "as-address-extended-to-mos-exercice-professionnel",
            "map" : "Adresse.lieuDit"
          },
          {
            "identity" : "as-address-extended-to-mos-exercice-professionnel",
            "map" : "Adresse.lieuDit"
          }
        ]
      },
      {
        "id" : "Address.city",
        "path" : "Address.city",
        "mapping" : [
          {
            "identity" : "as-address-extended-to-mos-exercice-professionnel",
            "map" : "Adresse.localite"
          }
        ]
      },
      {
        "id" : "Address.district",
        "path" : "Address.district",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J258-Departement/FHIR/JDV-J258-Departement"
        }
      },
      {
        "id" : "Address.postalCode",
        "path" : "Address.postalCode",
        "mapping" : [
          {
            "identity" : "as-address-extended-to-mos-exercice-professionnel",
            "map" : "Adresse.codePostal"
          }
        ]
      },
      {
        "id" : "Address.country",
        "path" : "Address.country",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J256-Pays/FHIR/JDV-J256-Pays"
        }
      }
    ]
  }
}

```
