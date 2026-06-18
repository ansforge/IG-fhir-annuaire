# AS Smart Card Extension - Annuaire Santé v1.2.0-snapshot-1

## Extension: AS Smart Card Extension 

Extension créée dans le cadre de l'Annuaire Santé pour décrire les informations de la carte CPx utilisée comme moyen d’identification des personnes physiques.

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [AS Practitioner Profile](StructureDefinition-as-practitioner.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-ext-smartcard)

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

Extension complexe: Extension créée dans le cadre de l'Annuaire Santé pour décrire les informations de la carte CPx utilisée comme moyen d’identification des personnes physiques.

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensemble** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension complexe: Extension créée dans le cadre de l'Annuaire Santé pour décrire les informations de la carte CPx utilisée comme moyen d’identification des personnes physiques.

 

Autres représentations du profil : [CSV](../StructureDefinition-as-ext-smartcard.csv), [Excel](../StructureDefinition-as-ext-smartcard.xlsx), [Schematron](../StructureDefinition-as-ext-smartcard.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-smartcard",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-smartcard",
  "version" : "1.2.0-snapshot-1",
  "name" : "AsSmartCardExtension",
  "title" : "AS Smart Card Extension",
  "status" : "draft",
  "date" : "2026-06-18T11:49:33+00:00",
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
  "description" : "Extension créée dans le cadre de l'Annuaire Santé pour décrire les informations de la carte CPx utilisée comme moyen d’identification des personnes physiques.",
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
      "short" : "CarteProfessionnel : Données descriptives du moyen d’identification des personnes physiques via une carte de professionnel.\r\n La carte est rattachée à l’exercice d’une profession donnée et non au professionnel lui-même, un professionnel exerçant simultanément deux professions a deux cartes.",
      "definition" : "Extension créée dans le cadre de l'Annuaire Santé pour décrire les informations de la carte CPx utilisée comme moyen d’identification des personnes physiques."
    },
    {
      "id" : "Extension.extension:type",
      "path" : "Extension.extension",
      "sliceName" : "type",
      "short" : "typeCarte : Type de carte de professionnel (CPx)",
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
        "strength" : "extensible",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J128-TypeCarte-RASS/FHIR/JDV-J128-TypeCarte-RASS|20201127120000"
      }
    },
    {
      "id" : "Extension.extension:number",
      "path" : "Extension.extension",
      "sliceName" : "number",
      "short" : "numeroCarte : Numéro de carte du professionnel.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:number.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:number.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "number"
    },
    {
      "id" : "Extension.extension:number.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "Numéro de carte du professionnel.",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:period",
      "path" : "Extension.extension",
      "sliceName" : "period",
      "short" : "Période de validité de la carte.",
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
      "short" : "dateDebutValidite : Date de début de validité de la carte"
    },
    {
      "id" : "Extension.extension:period.value[x].end",
      "path" : "Extension.extension.value[x].end",
      "short" : "dateFinValidite : Date de fin de validité de la carte"
    },
    {
      "id" : "Extension.extension:oppositionDate",
      "path" : "Extension.extension",
      "sliceName" : "oppositionDate",
      "short" : "dateOpposition : Date d'opposition de la carte.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:oppositionDate.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:oppositionDate.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "oppositionDate"
    },
    {
      "id" : "Extension.extension:oppositionDate.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-smartcard"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
