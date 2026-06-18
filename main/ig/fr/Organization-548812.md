# pp19dr-organization-ej-cab - Annuaire Santé v1.2.0-snapshot-1

## Exemple Organization: pp19dr-organization-ej-cab

-------

**French**

-------

version : 0.1; Dernière mise à jour : 2019-09-01 01:00:00+0100; Langue : fr; 

Information Source: [https://annuaire.esante.gouv.fr](https://annuaire.esante.gouv.fr)

Profils: [FR Core Organization Profile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-organization.html), [AS Donnée Restreinte Organization Profile](StructureDefinition-as-dr-organization.md)

**Organization Period**: 2019-04-01 --> (en cours)

**identifier**: Identification nationale de structure définie par l’ANS dans le CI_SIS/410005531586003 (utilisation : official, ), Identifiant interne/REJ10000000800887 (utilisation : official, )

**active**: true

**type**: Entité légale, Cabinet de groupe

**name**: CABINET SAINT ANTOINE

**alias**: CABINET DE GROUPE



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "548812",
  "meta" : {
    "versionId" : "0.1",
    "lastUpdated" : "2019-09-01T01:00:00.000+01:00",
    "source" : "https://annuaire.esante.gouv.fr",
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization",
    "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dr-organization"]
  },
  "language" : "fr",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/organization-period",
    "valuePeriod" : {
      "start" : "2019-04-01"
    }
  }],
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
        "code" : "IDNST"
      }]
    },
    "system" : "urn:oid:1.2.250.1.71.4.2.2",
    "value" : "410005531586003"
  },
  {
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
        "code" : "INTRN"
      }]
    },
    "system" : "https://rppsrang.esante.gouv.fr",
    "value" : "REJ10000000800887"
  }],
  "active" : true,
  "type" : [{
    "extension" : [{
      "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-types",
      "valueCode" : "organizationType"
    }],
    "coding" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307",
      "code" : "LEGAL-ENTITY"
    }]
  },
  {
    "extension" : [{
      "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-types",
      "valueCode" : "secteurActiviteRASS"
    }],
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R02-SecteurActivite/FHIR/TRE-R02-SecteurActivite",
      "code" : "SA08"
    }]
  }],
  "name" : "CABINET SAINT ANTOINE",
  "alias" : ["CABINET DE GROUPE"]
}

```
