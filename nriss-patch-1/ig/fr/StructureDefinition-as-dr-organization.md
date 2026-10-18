# AS Donnée Restreinte Organization Profile - Annuaire Santé v1.2.0-snapshot-2

## Profil de ressource: AS Donnée Restreinte Organization Profile 

 
Profil restreint créé à partir de as-organization dans le contexte des données en accès restreint de l’Annuaire Santé. 

**Utilisations:**

* Exemples pour ce/t/te Profil: [CH EURE-SEINE](Organization-158480.md), [PHARMACIE NOLOT](Organization-481677.md) and [CABINET SAINT ANTOINE](Organization-548812.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-dr-organization)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsOrganizationProfile](StructureDefinition-as-organization.md) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsOrganizationProfile](StructureDefinition-as-organization.md) 

** Résumé **

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))
 Must-Support : 14 éléments

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-data-trace|1.2.0-snapshot-2](StructureDefinition-as-ext-data-trace.md)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [AsOrganizationProfile](StructureDefinition-as-organization.md) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsOrganizationProfile](StructureDefinition-as-organization.md) 

** Résumé **

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))
 Must-Support : 14 éléments

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-data-trace|1.2.0-snapshot-2](StructureDefinition-as-ext-data-trace.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-as-dr-organization.csv), [Excel](../StructureDefinition-as-dr-organization.xlsx), [Schematron](../StructureDefinition-as-dr-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-dr-organization",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dr-organization",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsDrOrganizationProfile",
  "title" : "AS Donnée Restreinte Organization Profile",
  "status" : "draft",
  "date" : "2026-06-30T07:49:20+00:00",
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
  "description" : "Profil restreint créé à partir de as-organization  dans le contexte des données en accès restreint de l’Annuaire Santé.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "as-organization-to-mos-ej",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsOrganization to MOS - EJ"
  },
  {
    "identity" : "as-organization-to-mos-eg",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsOrganization to MOS - EG"
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
  "type" : "Organization",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization|1.2.0-snapshot-2",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization"
    },
    {
      "id" : "Organization.meta.extension:as-ext-data-trace",
      "path" : "Organization.meta.extension",
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
      "id" : "Organization.meta.source",
      "path" : "Organization.meta.source",
      "patternUri" : "https://annuaire.esante.gouv.fr"
    },
    {
      "id" : "Organization.meta.profile",
      "path" : "Organization.meta.profile",
      "min" : 2
    },
    {
      "id" : "Organization.meta.profile:fr-canonical",
      "path" : "Organization.meta.profile",
      "sliceName" : "fr-canonical",
      "min" : 1
    },
    {
      "id" : "Organization.meta.profile:as-dr-canonical",
      "path" : "Organization.meta.profile",
      "sliceName" : "as-dr-canonical",
      "min" : 1,
      "max" : "1",
      "patternCanonical" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dr-organization|1.2.0-snapshot-2"
    },
    {
      "id" : "Organization.extension:as-ext-digital-certificate",
      "path" : "Organization.extension",
      "sliceName" : "as-ext-digital-certificate",
      "mustSupport" : true
    },
    {
      "id" : "Organization.extension:as-ext-organization-pharmacy-licence",
      "path" : "Organization.extension",
      "sliceName" : "as-ext-organization-pharmacy-licence",
      "mustSupport" : true
    },
    {
      "id" : "Organization.extension:as-ext-organization-pricing-model",
      "path" : "Organization.extension",
      "sliceName" : "as-ext-organization-pricing-model",
      "mustSupport" : true
    },
    {
      "id" : "Organization.extension:as-ext-organization-closing-type",
      "path" : "Organization.extension",
      "sliceName" : "as-ext-organization-closing-type",
      "mustSupport" : true
    },
    {
      "id" : "Organization.extension:as-ext-organization-budget-type",
      "path" : "Organization.extension",
      "sliceName" : "as-ext-organization-budget-type",
      "mustSupport" : true
    },
    {
      "id" : "Organization.extension:as-ext-organization-authorization-deadline",
      "path" : "Organization.extension",
      "sliceName" : "as-ext-organization-authorization-deadline",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:idNatSt",
      "path" : "Organization.identifier",
      "sliceName" : "idNatSt",
      "mustSupport" : true
    },
    {
      "id" : "Organization.active",
      "path" : "Organization.active",
      "mustSupport" : true
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "mustSupport" : true
    },
    {
      "id" : "Organization.alias",
      "path" : "Organization.alias",
      "mustSupport" : true
    },
    {
      "id" : "Organization.telecom",
      "path" : "Organization.telecom",
      "mustSupport" : true
    },
    {
      "id" : "Organization.address",
      "path" : "Organization.address",
      "mustSupport" : true
    },
    {
      "id" : "Organization.endpoint",
      "path" : "Organization.endpoint",
      "mustSupport" : true
    }]
  }
}

```
