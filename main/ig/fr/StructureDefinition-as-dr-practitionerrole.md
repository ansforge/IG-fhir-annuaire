# AS Donnée Restreinte PractitionerRole Profile - Annuaire Santé v1.2.0-snapshot-2

## Profil de ressource: AS Donnée Restreinte PractitionerRole Profile 

 
Profil restreint créé à partir de as-practitionerrole dans le contexte des données en accès restreint de l’Annuaire Santé. 

**Utilisations:**

* Exemples pour ce/t/te Profil: [PractitionerRole/1578230](PractitionerRole-1578230.md), [PractitionerRole/1738459](PractitionerRole-1738459.md) and [PractitionerRole/5015602](PractitionerRole-5015602.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-dr-practitionerrole)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsPractitionerRoleProfile](StructureDefinition-as-practitionerrole.md) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsPractitionerRoleProfile](StructureDefinition-as-practitionerrole.md) 

** Résumé **

Obligatoire : 1 élément(2 éléments obligatoire(s) imbriqué(s))
 Must-Support : 22 éléments
 Interdit : 6 éléments

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-data-trace|1.2.0-snapshot-2](StructureDefinition-as-ext-data-trace.md)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [AsPractitionerRoleProfile](StructureDefinition-as-practitionerrole.md) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsPractitionerRoleProfile](StructureDefinition-as-practitionerrole.md) 

** Résumé **

Obligatoire : 1 élément(2 éléments obligatoire(s) imbriqué(s))
 Must-Support : 22 éléments
 Interdit : 6 éléments

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-data-trace|1.2.0-snapshot-2](StructureDefinition-as-ext-data-trace.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-as-dr-practitionerrole.csv), [Excel](../StructureDefinition-as-dr-practitionerrole.xlsx), [Schematron](../StructureDefinition-as-dr-practitionerrole.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-dr-practitionerrole",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dr-practitionerrole",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsDrPractitionerRoleProfile",
  "title" : "AS Donnée Restreinte PractitionerRole Profile",
  "status" : "draft",
  "date" : "2026-06-23T09:20:47+00:00",
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
  "description" : "Profil restreint créé à partir de as-practitionerrole dans le contexte des données en accès restreint de l’Annuaire Santé.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "as-practitioner-role-to-mos-situation-exercice",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerRoleProfile to MOS - SituationExercice"
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole|1.2.0-snapshot-2",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole"
    },
    {
      "id" : "PractitionerRole.meta.extension:as-ext-data-trace",
      "path" : "PractitionerRole.meta.extension",
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
      "id" : "PractitionerRole.meta.source",
      "path" : "PractitionerRole.meta.source",
      "patternUri" : "https://annuaire.esante.gouv.fr"
    },
    {
      "id" : "PractitionerRole.meta.profile",
      "path" : "PractitionerRole.meta.profile",
      "min" : 2
    },
    {
      "id" : "PractitionerRole.meta.profile:fr-canonical",
      "path" : "PractitionerRole.meta.profile",
      "sliceName" : "fr-canonical",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.meta.profile:as-dr-canonical",
      "path" : "PractitionerRole.meta.profile",
      "sliceName" : "as-dr-canonical",
      "min" : 1,
      "max" : "1",
      "patternCanonical" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dr-practitionerrole|1.2.0-snapshot-2"
    },
    {
      "id" : "PractitionerRole.extension:as-ext-practitionerrole-contracted",
      "path" : "PractitionerRole.extension",
      "sliceName" : "as-ext-practitionerrole-contracted",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.extension:as-ext-practitionerrole-hascas",
      "path" : "PractitionerRole.extension",
      "sliceName" : "as-ext-practitionerrole-hascas",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.extension:as-ext-practitionerrole-vitale-accepted",
      "path" : "PractitionerRole.extension",
      "sliceName" : "as-ext-practitionerrole-vitale-accepted",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.identifier",
      "path" : "PractitionerRole.identifier",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.identifier:idSituationExercice",
      "path" : "PractitionerRole.identifier",
      "sliceName" : "idSituationExercice",
      "max" : "1"
    },
    {
      "id" : "PractitionerRole.active",
      "path" : "PractitionerRole.active",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.period",
      "path" : "PractitionerRole.period",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code:genreActivite",
      "path" : "PractitionerRole.code",
      "sliceName" : "genreActivite",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code:modeExercice",
      "path" : "PractitionerRole.code",
      "sliceName" : "modeExercice",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code:typeActiviteLiberale",
      "path" : "PractitionerRole.code",
      "sliceName" : "typeActiviteLiberale",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code:statutProfessionnelSSA",
      "path" : "PractitionerRole.code",
      "sliceName" : "statutProfessionnelSSA",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code:statutHospitalier",
      "path" : "PractitionerRole.code",
      "sliceName" : "statutHospitalier",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code:fonction",
      "path" : "PractitionerRole.code",
      "sliceName" : "fonction",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code:metierPharmacien",
      "path" : "PractitionerRole.code",
      "sliceName" : "metierPharmacien",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.specialty",
      "path" : "PractitionerRole.specialty",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.healthcareService",
      "path" : "PractitionerRole.healthcareService",
      "max" : "0",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.telecom",
      "path" : "PractitionerRole.telecom",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.availableTime",
      "path" : "PractitionerRole.availableTime",
      "max" : "0",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.notAvailable",
      "path" : "PractitionerRole.notAvailable",
      "max" : "0",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.availabilityExceptions",
      "path" : "PractitionerRole.availabilityExceptions",
      "max" : "0",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.endpoint",
      "path" : "PractitionerRole.endpoint",
      "max" : "0",
      "mustSupport" : true
    }]
  }
}

```
