# AS Donnée Restreinte Practitioner Profile - Annuaire Santé v1.2.0-snapshot-2

## Profil de ressource: AS Donnée Restreinte Practitioner Profile 

 
Profil restreint créé à partir de as-practitioner dans le contexte des données en accès restreint de l’Annuaire Santé. 

**Utilisations:**

* Exemples pour ce/t/te Profil: [Practitioner/334081](Practitioner-334081.md) and [Practitioner/3719500](Practitioner-3719500.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-dr-practitioner)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsPractitionerProfile](StructureDefinition-as-practitioner.md) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsPractitionerProfile](StructureDefinition-as-practitioner.md) 

** Résumé **

Obligatoire : 2 éléments(2 éléments obligatoire(s) imbriqué(s))
 Must-Support : 12 éléments
 Interdit : 1 élément

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-data-trace|1.2.0-snapshot-2](StructureDefinition-as-ext-data-trace.md)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [AsPractitionerProfile](StructureDefinition-as-practitioner.md) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsPractitionerProfile](StructureDefinition-as-practitioner.md) 

** Résumé **

Obligatoire : 2 éléments(2 éléments obligatoire(s) imbriqué(s))
 Must-Support : 12 éléments
 Interdit : 1 élément

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-data-trace|1.2.0-snapshot-2](StructureDefinition-as-ext-data-trace.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-as-dr-practitioner.csv), [Excel](../StructureDefinition-as-dr-practitioner.xlsx), [Schematron](../StructureDefinition-as-dr-practitioner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-dr-practitioner",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dr-practitioner",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsDrPractitionerProfile",
  "title" : "AS Donnée Restreinte Practitioner Profile",
  "status" : "draft",
  "date" : "2026-06-30T07:59:11+00:00",
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
  "description" : "Profil restreint créé à partir de as-practitioner dans le contexte des données en accès restreint de l’Annuaire Santé.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "as-practitioner-role-to-mos-savoir-faire",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerProfile to MOS - SavoirFaire"
  },
  {
    "identity" : "as-practitioner-role-to-mos-exercice-professionnel",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerProfile to MOS - ExerciceProfessionnel"
  },
  {
    "identity" : "as-practitioner-role-to-mos-inscription-ordre",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerProfile to MOS - InscriptionOrdre"
  },
  {
    "identity" : "as-practitioner-role-to-mos-diplome",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerProfile to MOS - Diplome"
  },
  {
    "identity" : "as-practitioner-role-to-mos-professionnel",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerProfile to MOS - Professionnel"
  },
  {
    "identity" : "as-practitioner-role-to-mos-autorisation-exercice",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerProfile to MOS - AutorisationExercice"
  },
  {
    "identity" : "as-practitioner-role-to-mos-carte-professionnel",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerProfile to MOS - CarteProfessionnel"
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
  "type" : "Practitioner",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner|1.2.0-snapshot-2",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner",
      "path" : "Practitioner"
    },
    {
      "id" : "Practitioner.meta.extension:as-ext-data-trace",
      "path" : "Practitioner.meta.extension",
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
      "id" : "Practitioner.meta.source",
      "path" : "Practitioner.meta.source",
      "patternUri" : "https://annuaire.esante.gouv.fr"
    },
    {
      "id" : "Practitioner.meta.profile",
      "path" : "Practitioner.meta.profile",
      "min" : 2
    },
    {
      "id" : "Practitioner.meta.profile:fr-canonical",
      "path" : "Practitioner.meta.profile",
      "sliceName" : "fr-canonical",
      "min" : 1
    },
    {
      "id" : "Practitioner.meta.profile:as-dr-canonical",
      "path" : "Practitioner.meta.profile",
      "sliceName" : "as-dr-canonical",
      "min" : 1,
      "max" : "1",
      "patternCanonical" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dr-practitioner|1.2.0-snapshot-2"
    },
    {
      "id" : "Practitioner.extension:as-ext-registration",
      "path" : "Practitioner.extension",
      "sliceName" : "as-ext-registration",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.extension:as-ext-frpractitioner-authorization",
      "path" : "Practitioner.extension",
      "sliceName" : "as-ext-frpractitioner-authorization",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.extension:as-ext-smartcard",
      "path" : "Practitioner.extension",
      "sliceName" : "as-ext-smartcard",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.extension:as-ext-smartcard.extension:oppositionDate",
      "path" : "Practitioner.extension.extension",
      "sliceName" : "oppositionDate",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.extension:as-ext-digital-certificate",
      "path" : "Practitioner.extension",
      "sliceName" : "as-ext-digital-certificate",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.extension:as-ext-digital-certificate.extension:domain",
      "path" : "Practitioner.extension.extension",
      "sliceName" : "domain",
      "max" : "0"
    },
    {
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "min" : 2
    },
    {
      "id" : "Practitioner.identifier:idNatPs",
      "path" : "Practitioner.identifier",
      "sliceName" : "idNatPs",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:rpps",
      "path" : "Practitioner.identifier",
      "sliceName" : "rpps",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name",
      "path" : "Practitioner.name",
      "max" : "1"
    },
    {
      "id" : "Practitioner.qualification:degree",
      "path" : "Practitioner.qualification",
      "sliceName" : "degree"
    },
    {
      "id" : "Practitioner.qualification:degree.period.start",
      "path" : "Practitioner.qualification.period.start",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:degree.period.end",
      "path" : "Practitioner.qualification.period.end",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:attributionParticuliere",
      "path" : "Practitioner.qualification",
      "sliceName" : "attributionParticuliere",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Practitioner.qualification:attributionParticuliere.code",
      "path" : "Practitioner.qualification.code",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:attributionParticuliere.code.coding",
      "path" : "Practitioner.qualification.code.coding",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J90-AttributionParticuliere-RASS/FHIR/JDV-J90-AttributionParticuliere-RASS|20200424120000"
      }
    },
    {
      "id" : "Practitioner.qualification:attributionParticuliere.period",
      "path" : "Practitioner.qualification.period",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:attributionParticuliere.period.start",
      "path" : "Practitioner.qualification.period.start",
      "short" : "[Donnée restreinte] : dateDebutReconnaissance"
    },
    {
      "id" : "Practitioner.qualification:attributionParticuliere.period.end",
      "path" : "Practitioner.qualification.period.end",
      "short" : "[Donnée restreinte] : dateAbandon"
    }]
  }
}

```
