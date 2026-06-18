# AS Donnée Publique PractitionerRole Profile - Annuaire Santé v1.2.0-snapshot-2

## Profil de ressource: AS Donnée Publique PractitionerRole Profile 

 
Profil public applicatif créé à partir du profil générique as-practitionerrole dans le contexte des données en libre accès de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement. 

**Utilisations:**

* Exemples pour ce/t/te Profil: [PractitionerRole/1578230DP](PractitionerRole-1578230DP.md), [PractitionerRole/1738459DP](PractitionerRole-1738459DP.md) and [PractitionerRole/5015602DP](PractitionerRole-5015602DP.md)
* CapabilityStatements utilisant ce Profil: [CapabilityStatement[https://interop.esante.gouv.fr/ig/fhir/annuaire/CapabilityStatement/AsServerDPCapabilityStatement|1.2.0-snapshot-2]](CapabilityStatement-AsServerDPCapabilityStatement.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-dp-practitionerrole)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsPractitionerRoleProfile](StructureDefinition-as-practitionerrole.md) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsPractitionerRoleProfile](StructureDefinition-as-practitionerrole.md) 

** Résumé **

Obligatoire : 4 éléments(2 éléments obligatoire(s) imbriqué(s))
 Must-Support : 19 éléments
 Interdit : 11 éléments

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-data-trace|1.2.0-snapshot-2](StructureDefinition-as-ext-data-trace.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 2 is sliced based on the values of PractitionerRole.telecom (Closed)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [AsPractitionerRoleProfile](StructureDefinition-as-practitionerrole.md) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsPractitionerRoleProfile](StructureDefinition-as-practitionerrole.md) 

** Résumé **

Obligatoire : 4 éléments(2 éléments obligatoire(s) imbriqué(s))
 Must-Support : 19 éléments
 Interdit : 11 éléments

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-data-trace|1.2.0-snapshot-2](StructureDefinition-as-ext-data-trace.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 2 is sliced based on the values of PractitionerRole.telecom (Closed)

 

Autres représentations du profil : [CSV](../StructureDefinition-as-dp-practitionerrole.csv), [Excel](../StructureDefinition-as-dp-practitionerrole.xlsx), [Schematron](../StructureDefinition-as-dp-practitionerrole.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-dp-practitionerrole",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-practitionerrole",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsDpPractitionerRoleProfile",
  "title" : "AS Donnée Publique PractitionerRole Profile",
  "status" : "draft",
  "date" : "2026-06-18T13:31:38+00:00",
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
  "description" : "Profil public applicatif créé à partir du profil générique as-practitionerrole dans le contexte des données en libre accès de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "as-practitioner-role-to-mos-situation-exercice",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerRoleProfile to MOS - SituationExercice"
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
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole|1.2.0-snapshot-2",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole"
    },
    {
      "id" : "PractitionerRole.meta.extension:as-ext-data-trace",
      "path" : "PractitionerRole.meta.extension",
      "sliceName" : "as-ext-data-trace",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-data-trace|1.2.0-snapshot-2"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.meta.source",
      "path" : "PractitionerRole.meta.source",
      "patternUri" : "https://annuaire.esante.gouv.fr"
    },
    {
      "id" : "PractitionerRole.meta.profile",
      "path" : "PractitionerRole.meta.profile",
      "min" : 2
    },
    {
      "id" : "PractitionerRole.meta.profile:fr-canonical",
      "path" : "PractitionerRole.meta.profile",
      "sliceName" : "fr-canonical",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.meta.profile:as-dp-canonical",
      "path" : "PractitionerRole.meta.profile",
      "sliceName" : "as-dp-canonical",
      "min" : 1,
      "max" : "1",
      "patternCanonical" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-practitionerrole|1.2.0-snapshot-2"
    },
    {
      "id" : "PractitionerRole.extension:as-ext-practitionerrole-contracted",
      "path" : "PractitionerRole.extension",
      "sliceName" : "as-ext-practitionerrole-contracted",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.extension:as-ext-practitionerrole-hascas",
      "path" : "PractitionerRole.extension",
      "sliceName" : "as-ext-practitionerrole-hascas",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.extension:as-ext-practitionerrole-vitale-accepted",
      "path" : "PractitionerRole.extension",
      "sliceName" : "as-ext-practitionerrole-vitale-accepted",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier",
      "path" : "PractitionerRole.identifier",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.identifier:idSituationExercice",
      "path" : "PractitionerRole.identifier",
      "sliceName" : "idSituationExercice",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.active",
      "path" : "PractitionerRole.active",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.period",
      "path" : "PractitionerRole.period",
      "max" : "0",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code:genreActivite",
      "path" : "PractitionerRole.code",
      "sliceName" : "genreActivite",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code:modeExercice",
      "path" : "PractitionerRole.code",
      "sliceName" : "modeExercice",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code:typeActiviteLiberale",
      "path" : "PractitionerRole.code",
      "sliceName" : "typeActiviteLiberale",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code:statutProfessionnelSSA",
      "path" : "PractitionerRole.code",
      "sliceName" : "statutProfessionnelSSA",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code:statutHospitalier",
      "path" : "PractitionerRole.code",
      "sliceName" : "statutHospitalier",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code:fonction",
      "path" : "PractitionerRole.code",
      "sliceName" : "fonction",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code:metierPharmacien",
      "path" : "PractitionerRole.code",
      "sliceName" : "metierPharmacien",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.specialty",
      "path" : "PractitionerRole.specialty",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.healthcareService",
      "path" : "PractitionerRole.healthcareService",
      "max" : "0",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.telecom",
      "path" : "PractitionerRole.telecom",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        },
        {
          "type" : "exists",
          "path" : "extension('https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point-email-type')"
        }],
        "rules" : "closed"
      }
    },
    {
      "id" : "PractitionerRole.telecom:mailbox-mss",
      "path" : "PractitionerRole.telecom",
      "sliceName" : "mailbox-mss",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.telecom:mailbox-mss.extension:as-mailbox-mss-metadata",
      "path" : "PractitionerRole.telecom.extension",
      "sliceName" : "as-mailbox-mss-metadata"
    },
    {
      "id" : "PractitionerRole.telecom:mailbox-mss.extension:as-mailbox-mss-metadata.extension:responsible",
      "path" : "PractitionerRole.telecom.extension.extension",
      "sliceName" : "responsible",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.availableTime",
      "path" : "PractitionerRole.availableTime",
      "max" : "0",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.notAvailable",
      "path" : "PractitionerRole.notAvailable",
      "max" : "0",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.availabilityExceptions",
      "path" : "PractitionerRole.availabilityExceptions",
      "max" : "0",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.endpoint",
      "path" : "PractitionerRole.endpoint",
      "max" : "0",
      "mustSupport" : true
    }]
  }
}

```
