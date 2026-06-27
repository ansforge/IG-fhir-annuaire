# AS Donnée Restreinte Person Profile - Annuaire Santé v1.2.0-snapshot-2

## Profil de ressource: AS Donnée Restreinte Person Profile 

 
Profil restreint créé à partir de as-person dans le contexte des données en accès restreint de l’Annuaire Santé. 

**Utilisations:**

* Exemples pour ce/t/te Profil: [Person/pp16dr-person](Person-pp16dr-person.md) and [Person/pp19dr-person](Person-pp19dr-person.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-dr-person)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsPersonProfile](StructureDefinition-as-person.md) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsPersonProfile](StructureDefinition-as-person.md) 

** Résumé **

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))
 Must-Support : 11 éléments
 Interdit : 1 élément

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-data-trace|1.2.0-snapshot-2](StructureDefinition-as-ext-data-trace.md)
* [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-person-statut-etat-civil|1.2.0-snapshot-2](StructureDefinition-as-ext-person-statut-etat-civil.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Person.meta.profile

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [AsPersonProfile](StructureDefinition-as-person.md) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsPersonProfile](StructureDefinition-as-person.md) 

** Résumé **

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))
 Must-Support : 11 éléments
 Interdit : 1 élément

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-data-trace|1.2.0-snapshot-2](StructureDefinition-as-ext-data-trace.md)
* [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-person-statut-etat-civil|1.2.0-snapshot-2](StructureDefinition-as-ext-person-statut-etat-civil.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Person.meta.profile

 

Autres représentations du profil : [CSV](../StructureDefinition-as-dr-person.csv), [Excel](../StructureDefinition-as-dr-person.xlsx), [Schematron](../StructureDefinition-as-dr-person.sch) 



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
  "date" : "2026-06-27T10:35:23+00:00",
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
