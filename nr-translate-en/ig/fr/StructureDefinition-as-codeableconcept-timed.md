# AS CodeableConceptTimed Datatype Profile - Annuaire Santé v1.2.0-snapshot-1

## Profil du type de données: AS CodeableConceptTimed Datatype Profile 

 
Datatype profile créé à partir CodeableConcept dans le cadre de l'Annuaire Santé pour ajouter une extension Period au type CodeableConcept. 

**Utilisations:**

* Utilise ce/t/te profil de type de données: [AS Practitioner Profile](StructureDefinition-as-practitioner.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-codeableconcept-timed)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Contraintes

Cette structure est dérivée de [CodeableConcept](http://hl7.org/fhir/R4/datatypes.html#CodeableConcept) 

#### Contraintes

Cette structure est dérivée de [CodeableConcept](http://hl7.org/fhir/R4/datatypes.html#CodeableConcept) 

** Résumé **

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-codeableconcept-timed-metadata|1.2.0-snapshot-1](StructureDefinition-as-ext-codeableconcept-timed-metadata.md)

 **Vue des éléments clés** 

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [CodeableConcept](http://hl7.org/fhir/R4/datatypes.html#CodeableConcept) 

 **Vue d'ensembleView** 

#### Contraintes

Cette structure est dérivée de [CodeableConcept](http://hl7.org/fhir/R4/datatypes.html#CodeableConcept) 

** Résumé **

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-codeableconcept-timed-metadata|1.2.0-snapshot-1](StructureDefinition-as-ext-codeableconcept-timed-metadata.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-as-codeableconcept-timed.csv), [Excel](../StructureDefinition-as-codeableconcept-timed.xlsx), [Schematron](../StructureDefinition-as-codeableconcept-timed.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-codeableconcept-timed",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-codeableconcept-timed",
  "version" : "1.2.0-snapshot-1",
  "name" : "AsCodeableConceptTimedProfile",
  "title" : "AS CodeableConceptTimed Datatype Profile",
  "status" : "draft",
  "date" : "2026-06-18T12:31:08+00:00",
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
  "description" : "Datatype profile créé à partir CodeableConcept dans le cadre de l'Annuaire Santé pour ajouter une extension Period au type CodeableConcept.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "orim",
    "uri" : "http://hl7.org/orim",
    "name" : "Ontological RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "CodeableConcept",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CodeableConcept|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CodeableConcept",
      "path" : "CodeableConcept"
    },
    {
      "id" : "CodeableConcept.extension:as-codeableconcept-timed-metadata",
      "path" : "CodeableConcept.extension",
      "sliceName" : "as-codeableconcept-timed-metadata",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-codeableconcept-timed-metadata|1.2.0-snapshot-1"]
      }]
    }]
  }
}

```
