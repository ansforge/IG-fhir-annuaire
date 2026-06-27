# AS Donnée Restreinte HealthcareService Healthcare Activity Profile - Annuaire Santé v1.2.0-snapshot-2

## Resource Profile: AS Donnée Restreinte HealthcareService Healthcare Activity Profile 

 
Profil restreint applicatif créé à partir du profil générique as-healthcareservice-healthcare-activity dans le contexte des données en accès restreint de l'Annuaire Santé. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.annuaire|current/StructureDefinition/StructureDefinition-as-dr-healthcareservice-healthcare-activity.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-as-dr-healthcareservice-healthcare-activity.csv), [Excel](../StructureDefinition-as-dr-healthcareservice-healthcare-activity.xlsx), [Schematron](../StructureDefinition-as-dr-healthcareservice-healthcare-activity.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-dr-healthcareservice-healthcare-activity",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dr-healthcareservice-healthcare-activity",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsDrHealthcareServiceHealthcareActivityProfile",
  "title" : "AS Donnée Restreinte HealthcareService Healthcare Activity Profile",
  "status" : "draft",
  "date" : "2026-06-27T10:35:23+00:00",
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
  "description" : "Profil restreint applicatif créé à partir du profil générique as-healthcareservice-healthcare-activity dans le contexte des données en accès restreint de l'Annuaire Santé.",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "HealthcareService",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-healthcareservice-healthcare-activity|1.2.0-snapshot-2",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "HealthcareService",
      "path" : "HealthcareService"
    },
    {
      "id" : "HealthcareService.meta.extension:as-ext-data-trace",
      "path" : "HealthcareService.meta.extension",
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
      "id" : "HealthcareService.meta.extension:as-ext-data-trace.extension:date-maj-ae",
      "path" : "HealthcareService.meta.extension.extension",
      "sliceName" : "date-maj-ae",
      "short" : "Date maj de l'activité selon l'autorité d'enregistrement",
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.meta.source",
      "path" : "HealthcareService.meta.source",
      "patternUri" : "https://annuaire.esante.gouv.fr"
    },
    {
      "id" : "HealthcareService.meta.profile",
      "path" : "HealthcareService.meta.profile",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this"
        }],
        "description" : "Slice based on the canonical url value",
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "HealthcareService.meta.profile:as-dr-canonical",
      "path" : "HealthcareService.meta.profile",
      "sliceName" : "as-dr-canonical",
      "min" : 1,
      "max" : "1",
      "patternCanonical" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dr-healthcareservice-healthcare-activity|1.2.0-snapshot-2"
    },
    {
      "id" : "HealthcareService.extension:as-ext-authorization",
      "path" : "HealthcareService.extension",
      "sliceName" : "as-ext-authorization",
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.identifier:numAutorisationArhgos",
      "path" : "HealthcareService.identifier",
      "sliceName" : "numAutorisationArhgos",
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.providedBy",
      "path" : "HealthcareService.providedBy",
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.category",
      "path" : "HealthcareService.category",
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.specialty",
      "path" : "HealthcareService.specialty",
      "max" : "0",
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.name",
      "path" : "HealthcareService.name",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.comment",
      "path" : "HealthcareService.comment",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.extraDetails",
      "path" : "HealthcareService.extraDetails",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.photo",
      "path" : "HealthcareService.photo",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.telecom",
      "path" : "HealthcareService.telecom",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.coverageArea",
      "path" : "HealthcareService.coverageArea",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.serviceProvisionCode",
      "path" : "HealthcareService.serviceProvisionCode",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.eligibility",
      "path" : "HealthcareService.eligibility",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.program",
      "path" : "HealthcareService.program",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.characteristic",
      "path" : "HealthcareService.characteristic",
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.communication",
      "path" : "HealthcareService.communication",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.referralMethod",
      "path" : "HealthcareService.referralMethod",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.appointmentRequired",
      "path" : "HealthcareService.appointmentRequired",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.availableTime",
      "path" : "HealthcareService.availableTime",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.notAvailable",
      "path" : "HealthcareService.notAvailable",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.availabilityExceptions",
      "path" : "HealthcareService.availabilityExceptions",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.endpoint",
      "path" : "HealthcareService.endpoint",
      "max" : "0"
    }]
  }
}

```
