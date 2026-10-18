# pp19dr-practitioner-role-sal - Annuaire Santé v1.2.0-snapshot-2

## Example PractitionerRole: pp19dr-practitioner-role-sal

-------

**English**

-------

version: 0.1; Last updated: 2019-09-05 01:00:00+0100; Language: fr; 

Information Source: [https://annuaire.esante.gouv.fr](https://annuaire.esante.gouv.fr)

Profiles: [FR Core Practitioner Role](https://hl7.fr/ig/fhir/core/2.2.0/StructureDefinition-fr-core-practitioner-role.html) version: 2.2.0, [AS Donnée Restreinte PractitionerRole Profile](StructureDefinition-as-dr-practitionerrole.md) version: 1.2.0-snapshot-2

**identifier**: `https://annuaire.sante.fr`/F58000880311022013

**active**: true

**period**: 2019-06-30 --> (ongoing)

**practitioner**: [Practitioner Arthur Saucier ](Practitioner-334081.md)

**organization**: [Organization CH EURE-SEINE](Organization-158480.md)

**code**: Activité de soin et de pharmacie, Salarié, Fonction non définie



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "1578230",
  "meta" : {
    "versionId" : "0.1",
    "lastUpdated" : "2019-09-05T01:00:00.000+01:00",
    "source" : "https://annuaire.esante.gouv.fr",
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role|2.2.0",
    "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dr-practitionerrole|1.2.0-snapshot-2"]
  },
  "language" : "fr",
  "identifier" : [{
    "system" : "https://annuaire.sante.fr",
    "value" : "F58000880311022013"
  }],
  "active" : true,
  "period" : {
    "start" : "2019-06-30"
  },
  "practitioner" : {
    "reference" : "Practitioner/334081"
  },
  "organization" : {
    "reference" : "Organization/158480"
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
      "code" : "S"
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
