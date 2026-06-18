# AS Mailbox MSS Datatype Profile - Annuaire Santé v1.2.0-snapshot-1

## Profil du type de données: AS Mailbox MSS Datatype Profile 

 
Datatype profile créé à partir ContactPoint dans le cadre de l'Annuaire Santé pour décrire les boîtes aux lettres du service de messagerie sécurisée de santé (MSSanté) rattachées aux professionnels et aux structures. 

**Utilisations:**

* Utilise ce/t/te profil de type de données: [AS Organization Profile](StructureDefinition-as-organization.md), [AS Practitioner Profile](StructureDefinition-as-practitioner.md) and [AS PractitionerRole Profile](StructureDefinition-as-practitionerrole.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-mailbox-mss)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreContactPointProfile](https://hl7.fr/ig/fhir/core/2.2.0/StructureDefinition-fr-core-contact-point.html) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreContactPointProfile](https://hl7.fr/ig/fhir/core/2.2.0/StructureDefinition-fr-core-contact-point.html) 

** Résumé **

Obligatoire : 2 éléments
 Must-Support : 1 élément

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-mailbox-mss-metadata|1.2.0-snapshot-1](StructureDefinition-as-ext-mailbox-mss-metadata.md)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [FRCoreContactPointProfile](https://hl7.fr/ig/fhir/core/2.2.0/StructureDefinition-fr-core-contact-point.html) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreContactPointProfile](https://hl7.fr/ig/fhir/core/2.2.0/StructureDefinition-fr-core-contact-point.html) 

** Résumé **

Obligatoire : 2 éléments
 Must-Support : 1 élément

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-mailbox-mss-metadata|1.2.0-snapshot-1](StructureDefinition-as-ext-mailbox-mss-metadata.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-as-mailbox-mss.csv), [Excel](../StructureDefinition-as-mailbox-mss.xlsx), [Schematron](../StructureDefinition-as-mailbox-mss.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-mailbox-mss",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-mailbox-mss",
  "version" : "1.2.0-snapshot-1",
  "name" : "AsMailboxMSSProfile",
  "title" : "AS Mailbox MSS Datatype Profile",
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
  "description" : "Datatype profile créé à partir ContactPoint dans le cadre de l'Annuaire Santé pour décrire les boîtes aux lettres du service de messagerie sécurisée de santé (MSSanté) rattachées aux professionnels et aux structures.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "as-mailbox-mss-to-mos-exercice-professionnel",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsMailboxMSSProfile to MOS - boiteLettresMSS"
  },
  {
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
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "ContactPoint",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point|2.2.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ContactPoint",
      "path" : "ContactPoint",
      "mapping" : [{
        "identity" : "as-mailbox-mss-to-mos-exercice-professionnel",
        "map" : "boiteLettresMSS"
      }]
    },
    {
      "id" : "ContactPoint.extension",
      "path" : "ContactPoint.extension",
      "min" : 1
    },
    {
      "id" : "ContactPoint.extension:emailType",
      "path" : "ContactPoint.extension",
      "sliceName" : "emailType",
      "min" : 1,
      "mapping" : [{
        "identity" : "as-mailbox-mss-to-mos-exercice-professionnel",
        "map" : "boiteLettresMSS.typeBAL"
      }]
    },
    {
      "id" : "ContactPoint.extension:emailType.value[x]",
      "path" : "ContactPoint.extension.value[x]",
      "patternCoding" : {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie",
        "code" : "MSSANTE"
      }
    },
    {
      "id" : "ContactPoint.extension:as-mailbox-mss-metadata",
      "path" : "ContactPoint.extension",
      "sliceName" : "as-mailbox-mss-metadata",
      "short" : "L'attribut 'responsible' n'est pas disponible en accès libre.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-mailbox-mss-metadata|1.2.0-snapshot-1"]
      }]
    },
    {
      "id" : "ContactPoint.extension:as-mailbox-mss-metadata.extension:description",
      "path" : "ContactPoint.extension.extension",
      "sliceName" : "description",
      "mapping" : [{
        "identity" : "as-mailbox-mss-to-mos-exercice-professionnel",
        "map" : "boiteLettresMSS.description"
      }]
    },
    {
      "id" : "ContactPoint.extension:as-mailbox-mss-metadata.extension:service",
      "path" : "ContactPoint.extension.extension",
      "sliceName" : "service",
      "mapping" : [{
        "identity" : "as-mailbox-mss-to-mos-exercice-professionnel",
        "map" : "BoiteLettreMSS.serviceRattachement"
      }]
    },
    {
      "id" : "ContactPoint.extension:as-mailbox-mss-metadata.extension:listeRouge",
      "path" : "ContactPoint.extension.extension",
      "sliceName" : "listeRouge",
      "mapping" : [{
        "identity" : "as-mailbox-mss-to-mos-exercice-professionnel",
        "map" : "BoiteLettreMSS.listeRouge"
      }]
    },
    {
      "id" : "ContactPoint.system",
      "path" : "ContactPoint.system",
      "patternCode" : "email"
    },
    {
      "id" : "ContactPoint.value",
      "path" : "ContactPoint.value",
      "short" : "Boîte Aux Lettres (BAL) MSS",
      "mustSupport" : true
    }]
  }
}

```
