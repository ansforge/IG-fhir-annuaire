# pp19dp-practitioner-role-lib - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **pp19dp-practitioner-role-lib**

## Example PractitionerRole: pp19dp-practitioner-role-lib

version: 0.1; Dernière mise à jour : 2019-09-05 01:00:00+0100; Langue : fr; 

Information Source: [https://annuaire.sante.fr](https://annuaire.sante.fr)

Profils: [FR Core Practitioner Role](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-practitioner-role.html), [AS Donnée Publique PractitionerRole Profile](StructureDefinition-as-dp-practitionerrole.md)

**identifier**: `https://annuaire.sante.fr`/1010399870

**active**: true

**practitioner**: [Practitioner Arthur Saucier](Practitioner-334081.md)

**organization**: [Organization CABINET SAINT ANTOINE](Organization-548812.md)

**code**: Activité de soin et de pharmacie, Libéral, indépendant, artisan, commerçant, Fonction non définie



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "1738459DP",
  "meta" : {
    "versionId" : "0.1",
    "lastUpdated" : "2019-09-05T01:00:00.000+01:00",
    "source" : "https://annuaire.sante.fr",
    "profile" : [
      "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role",
      "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-practitionerrole"
    ]
  },
  "language" : "fr",
  "identifier" : [
    {
      "system" : "https://annuaire.sante.fr",
      "value" : "1010399870"
    }
  ],
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/334081"
  },
  "organization" : {
    "reference" : "Organization/548812"
  },
  "code" : [
    {
      "coding" : [
        {
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R22-GenreActivite/FHIR/TRE-R22-GenreActivite",
          "code" : "GENR01"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R23-ModeExercice/FHIR/TRE-R23-ModeExercice",
          "code" : "L"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R21-Fonction/FHIR/TRE-R21-Fonction",
          "code" : "FON-AU"
        }
      ]
    }
  ]
}

```
