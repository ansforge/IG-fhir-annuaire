# AS Practitioner Authorization Extension - Annuaire Santé v1.2.0-snapshot-1

## Extension: AS Practitioner Authorization Extension 

Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de l'autorisation d'exercice du professionnel (AutorisationExercice).

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [AS Practitioner Profile](StructureDefinition-as-practitioner.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-ext-practitioner-authorization)

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

Extension complexe: Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de l'autorisation d'exercice du professionnel (AutorisationExercice).

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensemble** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension complexe: Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de l'autorisation d'exercice du professionnel (AutorisationExercice).

 

Autres représentations du profil : [CSV](../StructureDefinition-as-ext-practitioner-authorization.csv), [Excel](../StructureDefinition-as-ext-practitioner-authorization.xlsx), [Schematron](../StructureDefinition-as-ext-practitioner-authorization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-practitioner-authorization",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitioner-authorization",
  "version" : "1.2.0-snapshot-1",
  "name" : "AsPractitionerAuthorizationExtension",
  "title" : "AS Practitioner Authorization Extension",
  "status" : "draft",
  "date" : "2026-06-18T12:01:00+00:00",
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
  "description" : "Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de l'autorisation d'exercice du professionnel (AutorisationExercice).",
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
      "short" : "AutorisationExercice : Il s'agit d'une autorisation délivrée par le Ministère de la Santé ou par l'Ordre au professionnel pour accès à l'exercice de la profession.",
      "definition" : "Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de l'autorisation d'exercice du professionnel (AutorisationExercice)."
    },
    {
      "id" : "Extension.extension:type",
      "path" : "Extension.extension",
      "sliceName" : "type",
      "short" : "Type d’autorisation (ex. Autorisation ministérielle de plein exercice, etc.).",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:type.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:type.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "type"
    },
    {
      "id" : "Extension.extension:type.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J75-TypeAutorisation-RASS/FHIR/JDV-J75-TypeAutorisation-RASS|20250523120000"
      }
    },
    {
      "id" : "Extension.extension:period",
      "path" : "Extension.extension",
      "sliceName" : "period",
      "short" : "Période de validité de l'autorisation d'exercice.",
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
      "short" : "dateDebutAutorisation : Date à partir de laquelle l’autorisation s’applique."
    },
    {
      "id" : "Extension.extension:period.value[x].end",
      "path" : "Extension.extension.value[x].end",
      "short" : "dateFinAutorisation : Date de fin de validité de l'autorisation."
    },
    {
      "id" : "Extension.extension:field",
      "path" : "Extension.extension",
      "sliceName" : "field",
      "short" : "disciplineAutorisee : Discipline à laquelle l'autorisation d'exercice est restreinte, le cas échéant.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:field.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:field.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "field"
    },
    {
      "id" : "Extension.extension:field.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J76-DisciplineAutorisation-RASS/FHIR/JDV-J76-DisciplineAutorisation-RASS|20200424120000"
      }
    },
    {
      "id" : "Extension.extension:profession",
      "path" : "Extension.extension",
      "sliceName" : "profession",
      "short" : "profession : Profession pour laquelle l'autorisation est délivrée.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:profession.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:profession.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "profession"
    },
    {
      "id" : "Extension.extension:profession.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J106-EnsembleProfession-RASS/FHIR/JDV-J106-EnsembleProfession-RASS|20260330120000"
      }
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitioner-authorization"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
