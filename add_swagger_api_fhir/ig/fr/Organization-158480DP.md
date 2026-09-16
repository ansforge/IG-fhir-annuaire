# pp19dp-organization-eg-cab - Annuaire Santé v1.2.0-snapshot-3

## Exemple Organization: pp19dp-organization-eg-cab

-------

**French**

-------

version : 0.1; Dernière mise à jour : 2019-09-01 01:00:00+0100; Langue : fr; 

Information Source: [https://annuaire.esante.gouv.fr](https://annuaire.esante.gouv.fr)

Profils: [FR Core Organization Profile](https://hl7.fr/ig/fhir/core/2.2.0/StructureDefinition-fr-core-organization.html) version : 2.2.0, [AS Donnée Publique Organization Profile](StructureDefinition-as-dp-organization.md) version : 1.2.0-snapshot-3

**Organization Period**: 2019-06-01 --> (en cours)

**identifier**: Identification nationale de structure définie par l’ANS dans le CI_SIS/1754567860 (utilisation : official, ), FINESS d'entité géographique/754567860 (utilisation : official, ), N° RPPS Rang/F754567860 (utilisation : official, )

**active**: true

**type**: Entité géographique, Etablissement public de santé

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
    "source" : "https://annuaire.esante.gouv.fr",
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0",
    "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-organization|1.2.0-snapshot-2"]
  },
  "language" : "fr",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/organization-period",
    "valuePeriod" : {
      "start" : "2019-06-01"
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
    "value" : "1754567860"
  },
  {
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
        "code" : "FINEG"
      }]
    },
    "system" : "https://finess.esante.gouv.fr",
    "value" : "754567860"
  },
  {
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
        "code" : "RPPSRG"
      }]
    },
    "system" : "https://rppsrang.esante.gouv.fr",
    "value" : "F754567860"
  }],
  "active" : true,
  "type" : [{
    "extension" : [{
      "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-types",
      "valueCode" : "organizationType"
    }],
    "coding" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307",
      "code" : "GEOGRAPHICAL-ENTITY"
    }]
  },
  {
    "extension" : [{
      "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-types",
      "valueCode" : "secteurActiviteRASS"
    }],
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R02-SecteurActivite/FHIR/TRE-R02-SecteurActivite",
      "code" : "SA01"
    }]
  }],
  "name" : "CH EURE-SEINE",
  "telecom" : [{
    "system" : "phone",
    "value" : "0450636363",
    "rank" : 1
  },
  {
    "system" : "fax",
    "value" : "0450455933"
  }],
  "address" : [{
    "extension" : [{
      "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code",
      "valueCoding" : {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R13-Commune/FHIR/TRE-R13-Commune",
        "code" : "75114"
      }
    }],
    "_line" : [{
      "extension" : [{
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
      }]
    }],
    "city" : "PARIS",
    "postalCode" : "75014"
  }]
}

```
