# AS Donnée Restreinte Person Profile - Annuaire Santé v1.2.0-snapshot-2

## Resource Profile: AS Donnée Restreinte Person Profile 

 
Profil restreint créé à partir de as-person dans le contexte des données en accès restreint de l’Annuaire Santé. 

**Usages:**

* Examples for this Profile: [Person/pp16dr-person](Person-pp16dr-person.md) and [Person/pp19dr-person](Person-pp19dr-person.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.annuaire|current/StructureDefinition/StructureDefinition-as-dr-person.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-as-dr-person.csv), [Excel](../StructureDefinition-as-dr-person.xlsx), [Schematron](../StructureDefinition-as-dr-person.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-dr-person",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dr-person",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsDrPersonProfile",
  "title" : "AS Donnée Restreinte Person Profile",
  "status" : "draft",
  "date" : "2026-06-26T10:31:58+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    },
    {
      "system" : "email",
      "value" : "monserviceclient.annuaire@esante.gouv.fr"
    }]
  }],
  "description" : "Profil restreint créé à partir de as-person dans le contexte des données en accès restreint de l’Annuaire Santé.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "as-person-to-mos-personne-physique",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPersonProfile to MOS - PersonnePhysique"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Person",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-person|1.2.0-snapshot-2",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Person",
      "path" : "Person"
    },
    {
      "id" : "Person.meta.extension:as-ext-data-trace",
      "path" : "Person.meta.extension",
      "sliceName" : "as-ext-data-trace",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-data-trace|1.2.0-snapshot-2"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Person.meta.source",
      "path" : "Person.meta.source",
      "patternUri" : "https://annuaire.esante.gouv.fr"
    },
    {
      "id" : "Person.meta.profile",
      "path" : "Person.meta.profile",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this"
        }],
        "description" : "Slice based on the canonical url value",
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Person.meta.profile:as-dr-canonical",
      "path" : "Person.meta.profile",
      "sliceName" : "as-dr-canonical",
      "min" : 1,
      "max" : "1",
      "patternCanonical" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dr-person|1.2.0-snapshot-2"
    },
    {
      "id" : "Person.extension:as-ext-person-birth-place",
      "path" : "Person.extension",
      "sliceName" : "as-ext-person-birth-place",
      "mustSupport" : true
    },
    {
      "id" : "Person.extension:as-ext-person-deceased-date-time",
      "path" : "Person.extension",
      "sliceName" : "as-ext-person-deceased-date-time",
      "mustSupport" : true
    },
    {
      "id" : "Person.extension:as-ext-person-statut-etat-civil",
      "path" : "Person.extension",
      "sliceName" : "as-ext-person-statut-etat-civil",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-person-statut-etat-civil|1.2.0-snapshot-2"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Person.name",
      "path" : "Person.name",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Person.telecom",
      "path" : "Person.telecom",
      "mustSupport" : true
    },
    {
      "id" : "Person.gender",
      "path" : "Person.gender",
      "mustSupport" : true
    },
    {
      "id" : "Person.birthDate",
      "path" : "Person.birthDate",
      "mustSupport" : true
    },
    {
      "id" : "Person.photo",
      "path" : "Person.photo",
      "max" : "0",
      "mustSupport" : true
    },
    {
      "id" : "Person.active",
      "path" : "Person.active",
      "mustSupport" : true
    },
    {
      "id" : "Person.link:as-practitioner-exercice-professionnel",
      "path" : "Person.link",
      "sliceName" : "as-practitioner-exercice-professionnel",
      "mustSupport" : true
    }]
  }
}

```
