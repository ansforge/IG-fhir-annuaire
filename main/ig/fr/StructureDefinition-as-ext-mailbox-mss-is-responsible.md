# AS Mailbox MSS Is Responsible - Annuaire Santé v1.2.0-snapshot-3

## Extension: AS Mailbox MSS Is Responsible 

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [AS Practitioner Profile](StructureDefinition-as-practitioner.md)
* Exemples pour ce/t/te Extension: [Practitioner/3719500](Practitioner-3719500.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.annuaire|current/StructureDefinition/StructureDefinition-as-ext-mailbox-mss-is-responsible.json)

### Vues formelles du contenu de l'extension

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Vue différentielle** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Vue d'ensemble** 

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 

Autres représentations du profil : [CSV](../StructureDefinition-as-ext-mailbox-mss-is-responsible.csv), [Excel](../StructureDefinition-as-ext-mailbox-mss-is-responsible.xlsx), [Schematron](../StructureDefinition-as-ext-mailbox-mss-is-responsible.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-mailbox-mss-is-responsible",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-mailbox-mss-is-responsible",
  "version" : "1.2.0-snapshot-3",
  "name" : "AsMailboxMSSIsResponsibleExtension",
  "title" : "AS Mailbox MSS Is Responsible",
  "status" : "draft",
  "date" : "2026-11-17T15:21:39+00:00",
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
  "description" : "Extension indiquant si le professionnel est le responsable de la boîte aux lettres MSS à laquelle il est rattaché. Une boîte aux lettres de type cabinet (CAB) peut être associée à plusieurs Practitioner : la recherche des professionnels par BAL MSS de type CAB renvoie l'ensemble des Practitioner associés à cette BAL, et cette extension permet d'identifier lequel en est le responsable. Elle n'est utilisable que si le type de la BAL est CAB.",
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
    "type" : "extension",
    "expression" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-mailbox-mss-metadata"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "isResponsible : Indique si le professionnel est responsable de la BAL MSS de type CAB.",
      "definition" : "Extension indiquant si le professionnel est le responsable de la boîte aux lettres MSS à laquelle il est rattaché. Une boîte aux lettres de type cabinet (CAB) peut être associée à plusieurs Practitioner : la recherche des professionnels par BAL MSS de type CAB renvoie l'ensemble des Practitioner associés à cette BAL, et cette extension permet d'identifier lequel en est le responsable. Elle n'est utilisable que si le type de la BAL est CAB."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-mailbox-mss-is-responsible"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
