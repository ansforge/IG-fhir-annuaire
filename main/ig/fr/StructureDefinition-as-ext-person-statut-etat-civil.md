# AS Person Statut Etat Civil Extension - Annuaire Santé v1.2.0-snapshot-2

## Extension: AS Person Statut Etat Civil Extension 

Extension créée dans le cadre de l'Annuaire Santé pour décrire le statut de certification d'état civil et sa date de transmission.

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [AS Donnée Restreinte Person Profile](StructureDefinition-as-dr-person.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-ext-person-statut-etat-civil)

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

Extension complexe: Extension créée dans le cadre de l'Annuaire Santé pour décrire le statut de certification d'état civil et sa date de transmission.

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensemble** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension complexe: Extension créée dans le cadre de l'Annuaire Santé pour décrire le statut de certification d'état civil et sa date de transmission.

 

Autres représentations du profil : [CSV](../StructureDefinition-as-ext-person-statut-etat-civil.csv), [Excel](../StructureDefinition-as-ext-person-statut-etat-civil.xlsx), [Schematron](../StructureDefinition-as-ext-person-statut-etat-civil.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-person-statut-etat-civil",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-person-statut-etat-civil",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsPersonStatutEtatCivilExtension",
  "title" : "AS Person Statut Etat Civil Extension",
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
  "description" : "Extension créée dans le cadre de l'Annuaire Santé pour décrire le statut de certification d'état civil et sa date de transmission.",
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
    "expression" : "Person"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "AS Person Statut Etat Civil Extension",
      "definition" : "Extension créée dans le cadre de l'Annuaire Santé pour décrire le statut de certification d'état civil et sa date de transmission."
    },
    {
      "id" : "Extension.extension:statutEtatCivil",
      "path" : "Extension.extension",
      "sliceName" : "statutEtatCivil",
      "short" : "Statut de la demande de certification auprès de l'organisme certificateur.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:statutEtatCivil.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:statutEtatCivil.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "statutEtatCivil"
    },
    {
      "id" : "Extension.extension:statutEtatCivil.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J111-StatutEtatCivil-ENREG/FHIR/JDV-J111-StatutEtatCivil-ENREG|20250131120000"
      }
    },
    {
      "id" : "Extension.extension:dateStatutEtatCivil",
      "path" : "Extension.extension",
      "sliceName" : "dateStatutEtatCivil",
      "short" : "Date de transmission du statut d'état civil de la personne par l'organisme certificateur d'état-civil.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:dateStatutEtatCivil.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:dateStatutEtatCivil.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "dateStatutEtatCivil"
    },
    {
      "id" : "Extension.extension:dateStatutEtatCivil.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-person-statut-etat-civil"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
