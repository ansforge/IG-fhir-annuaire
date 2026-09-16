# pp19dp-practitioner-role-sal - Annuaire Santé v1.2.0-snapshot-3

## Exemple PractitionerRole: pp19dp-practitioner-role-sal

-------

**French**

-------

version : 0.1; Dernière mise à jour : 2019-09-05 01:00:00+0100; Langue : fr; 

Information Source: [https://annuaire.esante.gouv.fr](https://annuaire.esante.gouv.fr)

Profils: [FR Core Practitioner Role](https://hl7.fr/ig/fhir/core/2.2.0/StructureDefinition-fr-core-practitioner-role.html) version : 2.2.0, [AS Donnée Publique PractitionerRole Profile](StructureDefinition-as-dp-practitionerrole.md) version : 1.2.0-snapshot-3

**identifier**: `https://rpps.esante.gouv.fr`/F58000880311022013

**active**: true

**practitioner**: [Practitioner Arthur Saucier ](Practitioner-334081.md)

**organization**: [Organization CH EURE-SEINE](Organization-158480.md)

**code**: Activité de soin et de pharmacie, Salarié, Fonction non définie



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "1578230DP",
  "meta" : {
    "versionId" : "0.1",
    "lastUpdated" : "2019-09-05T01:00:00.000+01:00",
    "source" : "https://annuaire.esante.gouv.fr",
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role|2.2.0",
    "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-practitionerrole|1.2.0-snapshot-2"]
  },
  "language" : "fr",
  "identifier" : [{
    "system" : "https://rpps.esante.gouv.fr",
    "value" : "F58000880311022013"
  }],
  "active" : true,
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
