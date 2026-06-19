# AS Authorization Extension - Annuaire Santé v1.2.0-snapshot-2

## Extension: AS Authorization Extension 

Extension créée dans le cadre de l'Annuaire Santé pour décrire les autorisations des activités (HealthcareService) sanitaires, sociales, médico-sociales et d'enseignement et des équipements matériels (Device) lourds autorisés.

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [AS Device Profile](StructureDefinition-as-device.md), [AS HealthcareService HealthCare Activity Profile](StructureDefinition-as-healthcareservice-healthcare-activity.md) and [AS HealthcareService Social Equipment Profile](StructureDefinition-as-healthcareservice-social-equipment.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-ext-authorization)

### Vues formelles du contenu de l'extension

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension complexe: Extension créée dans le cadre de l'Annuaire Santé pour décrire les autorisations des activités (HealthcareService) sanitaires, sociales, médico-sociales et d'enseignement et des équipements matériels (Device) lourds autorisés.

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Vue d'ensemble** 

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension complexe: Extension créée dans le cadre de l'Annuaire Santé pour décrire les autorisations des activités (HealthcareService) sanitaires, sociales, médico-sociales et d'enseignement et des équipements matériels (Device) lourds autorisés.

 

Autres représentations du profil : [CSV](../StructureDefinition-as-ext-authorization.csv), [Excel](../StructureDefinition-as-ext-authorization.xlsx), [Schematron](../StructureDefinition-as-ext-authorization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-authorization",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-authorization",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsAuthorizationExtension",
  "title" : "AS Authorization Extension",
  "status" : "draft",
  "date" : "2026-06-19T13:53:04+00:00",
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
  "description" : "Extension créée dans le cadre de l'Annuaire Santé pour décrire les autorisations des activités (HealthcareService) sanitaires, sociales, médico-sociales et d'enseignement et des équipements matériels (Device) lourds autorisés.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "HealthcareService"
  },
  {
    "type" : "element",
    "expression" : "Device"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "AS Authorization Extension",
      "definition" : "Extension créée dans le cadre de l'Annuaire Santé pour décrire les autorisations des activités (HealthcareService) sanitaires, sociales, médico-sociales et d'enseignement et des équipements matériels (Device) lourds autorisés."
    },
    {
      "id" : "Extension.extension:dateAuthorization",
      "path" : "Extension.extension",
      "sliceName" : "dateAuthorization",
      "short" : "Date de délivrance de l’autorisation.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:dateAuthorization.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:dateAuthorization.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "dateAuthorization"
    },
    {
      "id" : "Extension.extension:dateAuthorization.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Extension.extension:periodAuthorization",
      "path" : "Extension.extension",
      "sliceName" : "periodAuthorization",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:periodAuthorization.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:periodAuthorization.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "periodAuthorization"
    },
    {
      "id" : "Extension.extension:periodAuthorization.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "Extension.extension:periodAuthorization.value[x].start",
      "path" : "Extension.extension.value[x].start",
      "short" : "Date de première mise en œuvre."
    },
    {
      "id" : "Extension.extension:periodAuthorization.value[x].end",
      "path" : "Extension.extension.value[x].end",
      "short" : "Date de fin de mise en œuvre."
    },
    {
      "id" : "Extension.extension:dateUpdateAuthorization",
      "path" : "Extension.extension",
      "sliceName" : "dateUpdateAuthorization",
      "short" : "Date de dernière mise à jour de l’autorisation.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:dateUpdateAuthorization.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:dateUpdateAuthorization.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "dateUpdateAuthorization"
    },
    {
      "id" : "Extension.extension:dateUpdateAuthorization.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Extension.extension:deletedAuthorization",
      "path" : "Extension.extension",
      "sliceName" : "deletedAuthorization",
      "short" : "Indicateur de suppression de l'autorisation.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:deletedAuthorization.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:deletedAuthorization.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "deletedAuthorization"
    },
    {
      "id" : "Extension.extension:deletedAuthorization.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-authorization"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
