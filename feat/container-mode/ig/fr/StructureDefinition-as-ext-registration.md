# AS Registration Extension - Annuaire Santé v1.2.0-snapshot-2

## Extension: AS Registration Extension 

Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la première inscription si "isFirst = true". Ces données sont uniquement accessibles en accès restreint.

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [AS Practitioner Profile](StructureDefinition-as-practitioner.md)
* Exemples pour ce/t/te Extension: [Practitioner/334081](Practitioner-334081.md) and [Practitioner/3719500](Practitioner-3719500.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-ext-registration)

### Vues formelles du contenu de l'extension

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension complexe: Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la première inscription si "isFirst = true". Ces données sont uniquement accessibles en accès restreint.

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensemble** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension complexe: Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la première inscription si "isFirst = true". Ces données sont uniquement accessibles en accès restreint.

 

Autres représentations du profil : [CSV](../StructureDefinition-as-ext-registration.csv), [Excel](../StructureDefinition-as-ext-registration.xlsx), [Schematron](../StructureDefinition-as-ext-registration.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-registration",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-registration",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsRegistrationExtension",
  "title" : "AS Registration Extension",
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
  "description" : "Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la première inscription si \"isFirst = true\". Ces données sont uniquement accessibles en accès restreint.",
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
    "expression" : "Practitioner"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "InscriptionOrdre : Eléments permettant de retrouver les informations d'inscription à un ordre par rapport à la profession de la personne physique sur une période et un département donné.",
      "definition" : "Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la première inscription si \"isFirst = true\". Ces données sont uniquement accessibles en accès restreint."
    },
    {
      "id" : "Extension.extension:registeringOrganization",
      "path" : "Extension.extension",
      "sliceName" : "registeringOrganization",
      "short" : "Instance de régulation d'une profession de santé réglementée (ordre, autorité d'enregistrement).",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:registeringOrganization.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:registeringOrganization.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "registeringOrganization"
    },
    {
      "id" : "Extension.extension:registeringOrganization.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J83-AutoriteEnregistrement-RASS/FHIR/JDV-J83-AutoriteEnregistrement-RASS|20240628120000"
      }
    },
    {
      "id" : "Extension.extension:registeringOrganizationDetail",
      "path" : "Extension.extension",
      "sliceName" : "registeringOrganizationDetail",
      "short" : "conseilDepartemental : Département du Conseil départemental.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:registeringOrganizationDetail.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:registeringOrganizationDetail.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "registeringOrganizationDetail"
    },
    {
      "id" : "Extension.extension:registeringOrganizationDetail.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J84-DepartementOM-RASS/FHIR/JDV-J84-DepartementOM-RASS|20240126120000"
      }
    },
    {
      "id" : "Extension.extension:period",
      "path" : "Extension.extension",
      "sliceName" : "period",
      "short" : "Période durant laquelle la personne est autorisée à exercer la profession pour laquelle elle a été inscrite.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:period.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:period.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "period"
    },
    {
      "id" : "Extension.extension:period.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "Extension.extension:period.value[x].start",
      "path" : "Extension.extension.value[x].start",
      "short" : "dateDebutInscription : Date d’inscription de la personne au tableau de l’ordre."
    },
    {
      "id" : "Extension.extension:period.value[x].end",
      "path" : "Extension.extension.value[x].end",
      "short" : "dateRadiation : Date à partir de laquelle la personne n’est plus autorisée à exercer la profession pour laquelle elle a été inscrite."
    },
    {
      "id" : "Extension.extension:status",
      "path" : "Extension.extension",
      "sliceName" : "status",
      "short" : "statutInscription : Information indiquant l’avancement du traitement du dossier d'inscription de la personne.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:status.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:status.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "status"
    },
    {
      "id" : "Extension.extension:status.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J85-StatutInscription-RASS/FHIR/JDV-J85-StatutInscription-RASS|20200424120000"
      }
    },
    {
      "id" : "Extension.extension:hostingDepartment",
      "path" : "Extension.extension",
      "sliceName" : "hostingDepartment",
      "short" : "departementPremierReferencementAE : Code du département du premier référencement, pour un référencement de nature « inscription à l’ordre ».",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:hostingDepartment.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:hostingDepartment.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "hostingDepartment"
    },
    {
      "id" : "Extension.extension:hostingDepartment.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J84-DepartementOM-RASS/FHIR/JDV-J84-DepartementOM-RASS|20240126120000"
      }
    },
    {
      "id" : "Extension.extension:isFirst",
      "path" : "Extension.extension",
      "sliceName" : "isFirst",
      "short" : "Indicateur de la première inscription.\nSi 1ère inscription => practitionerRole-registration.isFirst= « true »\r\nSinon, practitionerRole-registration.isFirst= « false »",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:isFirst.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:isFirst.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "isFirst"
    },
    {
      "id" : "Extension.extension:isFirst.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-registration"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
