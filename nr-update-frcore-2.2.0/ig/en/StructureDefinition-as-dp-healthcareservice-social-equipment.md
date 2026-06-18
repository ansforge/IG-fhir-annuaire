# AS Donnée Publique HealthcareService Social Equipment Profile - Annuaire Santé v1.2.0-snapshot-1

## Resource Profile: AS Donnée Publique HealthcareService Social Equipment Profile 

 
Profil public applicatif créé à partir du profil générique as-healthcareservice-social-equipment dans le contexte des données en accès libre de l'Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.annuaire|current/StructureDefinition/StructureDefinition-as-dp-healthcareservice-social-equipment.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-as-dp-healthcareservice-social-equipment.csv), [Excel](../StructureDefinition-as-dp-healthcareservice-social-equipment.xlsx), [Schematron](../StructureDefinition-as-dp-healthcareservice-social-equipment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-dp-healthcareservice-social-equipment",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-healthcareservice-social-equipment",
  "version" : "1.2.0-snapshot-1",
  "name" : "AsDpHealthcareServiceSocialEquipmentProfile",
  "title" : "AS Donnée Publique HealthcareService Social Equipment Profile",
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
  "description" : "Profil public applicatif créé à partir du profil générique as-healthcareservice-social-equipment dans le contexte des données en accès libre de l'Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "as-healthcare-social-equipment-to-mos-activite-sociale",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsHealthcareServiceSocialEquipmentProfile to MOS - ActiviteSociale"
  },
  {
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
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-healthcareservice-social-equipment|1.2.0-snapshot-1",
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
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-data-trace|1.2.0-snapshot-1"]
      }],
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
      "id" : "HealthcareService.meta.profile:as-dp-canonical",
      "path" : "HealthcareService.meta.profile",
      "sliceName" : "as-dp-canonical",
      "min" : 1,
      "max" : "1",
      "patternCanonical" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-healthcareservice-social-equipment|1.2.0-snapshot-1"
    },
    {
      "id" : "HealthcareService.extension:as-ext-authorization",
      "path" : "HealthcareService.extension",
      "sliceName" : "as-ext-authorization",
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.extension:as-ext-installation",
      "path" : "HealthcareService.extension",
      "sliceName" : "as-ext-installation",
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.extension:as-ext-patient-type",
      "path" : "HealthcareService.extension",
      "sliceName" : "as-ext-patient-type",
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.extension:as-ext-supported-capacity",
      "path" : "HealthcareService.extension",
      "sliceName" : "as-ext-supported-capacity",
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.identifier",
      "path" : "HealthcareService.identifier",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.identifier:numAutorisationArhgos",
      "path" : "HealthcareService.identifier",
      "sliceName" : "numAutorisationArhgos",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.active",
      "path" : "HealthcareService.active",
      "min" : 1
    },
    {
      "id" : "HealthcareService.category",
      "path" : "HealthcareService.category",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.type:category",
      "path" : "HealthcareService.type",
      "sliceName" : "category",
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.specialty",
      "path" : "HealthcareService.specialty",
      "max" : "0"
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
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.eligibility.comment",
      "path" : "HealthcareService.eligibility.comment",
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
