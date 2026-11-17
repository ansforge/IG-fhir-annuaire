# AS OperationOutcome MSS - Annuaire Santé v1.2.0-snapshot-3

## Profil de ressource: AS OperationOutcome MSS 

**Utilisations:**

* Exemples pour ce/t/te Profil: [OperationOutcome/AsOperationOutcomeMssAttachmentAlreadyExistsExample](OperationOutcome-AsOperationOutcomeMssAttachmentAlreadyExistsExample.md), [OperationOutcome/AsOperationOutcomeMssAttachmentNotFoundExample](OperationOutcome-AsOperationOutcomeMssAttachmentNotFoundExample.md), [OperationOutcome/AsOperationOutcomeMssBadEmailFormatExample](OperationOutcome-AsOperationOutcomeMssBadEmailFormatExample.md), [OperationOutcome/AsOperationOutcomeMssMssAccountNotFoundExample](OperationOutcome-AsOperationOutcomeMssMssAccountNotFoundExample.md)... Show 4 more, [OperationOutcome/AsOperationOutcomeMssResourceTypeMismatchExample](OperationOutcome-AsOperationOutcomeMssResourceTypeMismatchExample.md), [OperationOutcome/AsOperationOutcomeMssTooLongExample](OperationOutcome-AsOperationOutcomeMssTooLongExample.md), [OperationOutcome/AsOperationOutcomeMssTypeBalImmutableExample](OperationOutcome-AsOperationOutcomeMssTypeBalImmutableExample.md) and [OperationOutcome/AsOperationOutcomeMssTypeBalRequiredExample](OperationOutcome-AsOperationOutcomeMssTypeBalRequiredExample.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-operationoutcome-mss)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [OperationOutcome](http://hl7.org/fhir/R4/operationoutcome.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [OperationOutcome](http://hl7.org/fhir/R4/operationoutcome.html) 

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [OperationOutcome](http://hl7.org/fhir/R4/operationoutcome.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [OperationOutcome](http://hl7.org/fhir/R4/operationoutcome.html) 

 

Autres représentations du profil : [CSV](../StructureDefinition-as-operationoutcome-mss.csv), [Excel](../StructureDefinition-as-operationoutcome-mss.xlsx), [Schematron](../StructureDefinition-as-operationoutcome-mss.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-operationoutcome-mss",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-operationoutcome-mss",
  "version" : "1.2.0-snapshot-3",
  "name" : "AsOperationOutcomeMssProfile",
  "title" : "AS OperationOutcome MSS",
  "status" : "draft",
  "date" : "2026-11-12T16:36:00+00:00",
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
  "description" : "Profil d'OperationOutcome retourné par l'API de gestion des BAL MSSanté (création, modification, suppression via PATCH avec une ressource Parameters) lorsqu'une requête est refusée. Il impose, pour chaque anomalie, une sévérité, un code de type d'anomalie et un message lisible en français.",
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "OperationOutcome",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/OperationOutcome|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "OperationOutcome",
      "path" : "OperationOutcome"
    },
    {
      "id" : "OperationOutcome.issue",
      "path" : "OperationOutcome.issue",
      "short" : "Anomalie(s) détectée(s) lors du contrôle de la requête ou de l'application des règles de gestion MSS"
    },
    {
      "id" : "OperationOutcome.issue.severity",
      "path" : "OperationOutcome.issue.severity",
      "short" : "Gravité de l'anomalie (error pour les contrôles bloquants)",
      "mustSupport" : true
    },
    {
      "id" : "OperationOutcome.issue.code",
      "path" : "OperationOutcome.issue.code",
      "short" : "Type d'anomalie : too-long, invalid, required, code-invalid, value, conflict, not-found, business-rule",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/issue-type|4.0.1"
      }
    },
    {
      "id" : "OperationOutcome.issue.details",
      "path" : "OperationOutcome.issue.details",
      "short" : "Détail de l'anomalie : code d'erreur éventuel (coding) et message en français (text)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "OperationOutcome.issue.details.coding",
      "path" : "OperationOutcome.issue.details.coding",
      "short" : "Code d'erreur issu du CodeSystem HL7 operation-outcome (ex. MSG_PARAM_INVALID, MSG_NO_EXIST, MSG_BAD_FORMAT)"
    },
    {
      "id" : "OperationOutcome.issue.details.coding.system",
      "path" : "OperationOutcome.issue.details.coding.system",
      "min" : 1,
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/operation-outcome"
    },
    {
      "id" : "OperationOutcome.issue.details.coding.code",
      "path" : "OperationOutcome.issue.details.coding.code",
      "min" : 1
    },
    {
      "id" : "OperationOutcome.issue.details.text",
      "path" : "OperationOutcome.issue.details.text",
      "short" : "Message d'erreur en français, destiné à l'opérateur MSSanté",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
