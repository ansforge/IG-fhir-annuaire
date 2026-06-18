# AS CodeableConceptTimed Metadata - Annuaire Santé v1.2.0-snapshot-2

## Extension: AS CodeableConceptTimed Metadata 

Extension contenant les métadonnées du CodeableConceptTimed.

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [AS CodeableConceptTimed Datatype Profile](StructureDefinition-as-codeableconcept-timed.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-ext-codeableconcept-timed-metadata)

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

Extension simple avec le type Period : Extension contenant les métadonnées du CodeableConceptTimed.

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Vue d'ensemble** 

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension simple avec le type Period : Extension contenant les métadonnées du CodeableConceptTimed.

 

Autres représentations du profil : [CSV](../StructureDefinition-as-ext-codeableconcept-timed-metadata.csv), [Excel](../StructureDefinition-as-ext-codeableconcept-timed-metadata.xlsx), [Schematron](../StructureDefinition-as-ext-codeableconcept-timed-metadata.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-codeableconcept-timed-metadata",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-codeableconcept-timed-metadata",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsCodeableConceptPeriodMetadataExtension",
  "title" : "AS CodeableConceptTimed Metadata",
  "status" : "draft",
  "date" : "2026-06-18T12:07:50+00:00",
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
  "description" : "Extension contenant les métadonnées du CodeableConceptTimed.",
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
    "expression" : "CodeableConcept"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "AS CodeableConceptTimed Metadata",
      "definition" : "Extension contenant les métadonnées du CodeableConceptTimed."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-codeableconcept-timed-metadata"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "Extension.value[x].start",
      "path" : "Extension.value[x].start",
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].end",
      "path" : "Extension.value[x].end",
      "mustSupport" : true
    }]
  }
}

```
