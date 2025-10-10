# AS Digital Certificate Extension - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AS Digital Certificate Extension**

## Extension: AS Digital Certificate Extension 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-digital-certificate | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsDigitalCertificateExtension |

Extension créée dans le cadre de l’Annuaire Santé pour décrire les certificats utilisés par les professionnels et les structures comme moyen d’identification.

**Context of Use**

This extension may be used on the following element(s):

* Element ID PractitionerRole
* Element ID Organization

**Usage info**

**Usages:**

* Use this Extension: [AS Organization Profile](StructureDefinition-as-organization.md) and [AS Practitioner Profile](StructureDefinition-as-practitioner.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-ext-digital-certificate)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-as-ext-digital-certificate.csv), [Excel](StructureDefinition-as-ext-digital-certificate.xlsx), [Schematron](StructureDefinition-as-ext-digital-certificate.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-digital-certificate",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-digital-certificate",
  "version" : "1.1.0",
  "name" : "AsDigitalCertificateExtension",
  "title" : "AS Digital Certificate Extension",
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
  "description" : "Extension créée dans le cadre de l'Annuaire Santé pour décrire les certificats utilisés par les professionnels et les structures comme moyen d'identification.",
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
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "PractitionerRole"
    },
    {
      "type" : "element",
      "expression" : "Organization"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "AS Digital Certificate Extension",
        "definition" : "Extension créée dans le cadre de l'Annuaire Santé pour décrire les certificats utilisés par les professionnels et les structures comme moyen d'identification."
      },
      {
        "id" : "Extension.extension:serialNumber",
        "path" : "Extension.extension",
        "sliceName" : "serialNumber",
        "short" : "numeroSerie : Numéro de série du certificat.\r\n format de codage des caractères en binaire codé en ASCII.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:serialNumber.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:serialNumber.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "serialNumber"
      },
      {
        "id" : "Extension.extension:serialNumber.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Extension.extension:issuer",
        "path" : "Extension.extension",
        "sliceName" : "issuer",
        "short" : "dNEmetteur : DN (Distinguished Name \r\n Nom distinctif) de l’autorité de certification (AC) émettrice du certificat.\r\n le format respecte le standard RFC-4514, avec un codage des caractères en UTF8",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:issuer.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:issuer.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "issuer"
      },
      {
        "id" : "Extension.extension:issuer.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Extension.extension:subject",
        "path" : "Extension.extension",
        "sliceName" : "subject",
        "short" : "dNSujet : DN (Distinguished Name - Nom distinctif) du porteur du certificat.\r\n codage des caractères en UTF8",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:subject.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:subject.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "subject"
      },
      {
        "id" : "Extension.extension:subject.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Extension.extension:validity",
        "path" : "Extension.extension",
        "sliceName" : "validity",
        "short" : "Période de validité du certificat.\r\nLa date est en UTC (avec translation de l'heure locale en heure UTC par ajout du décalage négatif ou retranchement du décalage positif).",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:validity.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:validity.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "validity"
      },
      {
        "id" : "Extension.extension:validity.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "Extension.extension:validity.value[x].start",
        "path" : "Extension.extension.value[x].start",
        "short" : "dateDebutValidite : Date et heure (en heure, minute, seconde) de début de validité du certificat."
      },
      {
        "id" : "Extension.extension:validity.value[x].end",
        "path" : "Extension.extension.value[x].end",
        "short" : "dateFinValidite : Date et heure (en heure, minute, seconde) de fin de validité du certificat."
      },
      {
        "id" : "Extension.extension:domain",
        "path" : "Extension.extension",
        "sliceName" : "domain",
        "short" : "domaine : Ce champ correspond au CN du DNSujet, il contient soit un <FQDN> pour les certificats de type serveur <SSL>, soit un nom applicatif pour les autres certificats.\r\n renseigné uniquement pour les certificats logiciels de portée Structure.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:domain.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:domain.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "domain"
      },
      {
        "id" : "Extension.extension:domain.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Extension.extension:keyUsage",
        "path" : "Extension.extension",
        "sliceName" : "keyUsage",
        "short" : "usage : La clé d’usage (Keyusage) qui détermine l’usage autorisé du certificat.\r\n codage des caractères en binaire codé en ASCII",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:keyUsage.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:keyUsage.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "keyUsage"
      },
      {
        "id" : "Extension.extension:keyUsage.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Extension.extension:value",
        "path" : "Extension.extension",
        "sliceName" : "value",
        "short" : "valeurBinaire : Valeur binaire du certificat.\r\n format .crt en hexadécimal, codé en ASCII",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:value.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:value.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "value"
      },
      {
        "id" : "Extension.extension:value.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Attachment"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-digital-certificate"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
