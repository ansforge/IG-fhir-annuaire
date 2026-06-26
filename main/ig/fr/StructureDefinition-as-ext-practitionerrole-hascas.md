# AS PractitionerRole Has CAS - Annuaire Santé v1.2.0-snapshot-2

## Extension: AS PractitionerRole Has CAS 

Extension créée dans le cadre de l'Annuaire Santé pour décrire le contrat d'accès aux soins (CAS), remplacée récemment par l'option pratique tarifaire maîtrisée (OPTAM).

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [AS PractitionerRole Profile](StructureDefinition-as-practitionerrole.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-ext-practitionerrole-hascas)

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

Extension simple avec le type boolean : Extension créée dans le cadre de l'Annuaire Santé pour décrire le contrat d'accès aux soins (CAS), remplacée récemment par l'option pratique tarifaire maîtrisée (OPTAM).

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Vue d'ensemble** 

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension simple avec le type boolean : Extension créée dans le cadre de l'Annuaire Santé pour décrire le contrat d'accès aux soins (CAS), remplacée récemment par l'option pratique tarifaire maîtrisée (OPTAM).

 

Autres représentations du profil : [CSV](../StructureDefinition-as-ext-practitionerrole-hascas.csv), [Excel](../StructureDefinition-as-ext-practitionerrole-hascas.xlsx), [Schematron](../StructureDefinition-as-ext-practitionerrole-hascas.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-practitionerrole-hascas",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitionerrole-hascas",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsPractitionerRoleHasCas",
  "title" : "AS PractitionerRole Has CAS",
  "status" : "draft",
  "date" : "2026-06-26T10:36:05+00:00",
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
  "description" : "Extension créée dans le cadre de l'Annuaire Santé pour décrire le contrat d'accès aux soins (CAS), remplacée récemment par l'option pratique tarifaire maîtrisée (OPTAM).",
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
    "expression" : "PractitionerRole"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "optionContratAccesSoins, optionPratiqueTarifaireMaîtrisée : OPTAM est un dispositif proposé par l’Assurance Maladie aux médecins conventionnés, ayant pour objectif principal de faciliter l’accès aux soins.",
      "definition" : "Extension créée dans le cadre de l'Annuaire Santé pour décrire le contrat d'accès aux soins (CAS), remplacée récemment par l'option pratique tarifaire maîtrisée (OPTAM)."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitionerrole-hascas"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
