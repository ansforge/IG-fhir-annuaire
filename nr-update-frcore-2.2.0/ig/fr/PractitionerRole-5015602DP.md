# pp16dp-practitioner-role - Annuaire Santé v1.2.0-snapshot-2

## Exemple PractitionerRole: pp16dp-practitioner-role

-------

**French**

-------

version : 0.1; Dernière mise à jour : 2019-08-31 01:00:00+0100; Langue : fr; 

Information Source: [https://annuaire.esante.gouv.fr](https://annuaire.esante.gouv.fr)

Profils: [FR Core Practitioner Role](https://hl7.fr/ig/fhir/core/2.2.0/StructureDefinition-fr-core-practitioner-role.html) version : 2.2.0, [AS Donnée Publique PractitionerRole Profile](StructureDefinition-as-dp-practitionerrole.md) version : 1.2.0-snapshot-2

**identifier**: `https://rpps.esante.gouv.fr`/1001500032

**active**: true

**practitioner**: [Practitioner David CHATELIER ](Practitioner-3719500.md)

**organization**: [Organization PHARMACIE NOLOT](Organization-481677.md)

**code**: Activité de soin et de pharmacie, Libéral, indépendant, artisan, commerçant, Fonction non définie



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "5015602DP",
  "meta" : {
    "versionId" : "0.1",
    "lastUpdated" : "2019-08-31T01:00:00.000+01:00",
    "source" : "https://annuaire.esante.gouv.fr",
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role|2.2.0",
    "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-practitionerrole|1.2.0-snapshot-2"]
  },
  "language" : "fr",
  "identifier" : [{
    "system" : "https://rpps.esante.gouv.fr",
    "value" : "1001500032"
  }],
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/3719500"
  },
  "organization" : {
    "reference" : "Organization/481677"
  },
  "code" : [{
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R22-GenreActivite/FHIR/TRE-R22-GenreActivite",
      "code" : "GENR01"
    }]
  },
  {
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R23-ModeExercice/FHIR/TRE-R23-ModeExercice",
      "code" : "L"
    }]
  },
  {
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R21-Fonction/FHIR/TRE-R21-Fonction",
      "code" : "FON-AU"
    }]
  }]
}

```
