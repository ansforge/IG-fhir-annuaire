# AS Donnée Publique Organization Profile - Annuaire Santé v1.2.0-snapshot-2

## Resource Profile: AS Donnée Publique Organization Profile 

 
Profil public applicatif créé à partir du profil générique as-organization dans le contexte des données en libre accès de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement. 

**Usages:**

* Examples for this Profile: [CH EURE-SEINE](Organization-158480DP.md), [PHARMACIE NOLOT](Organization-481677DP.md) and [CABINET SAINT ANTOINE](Organization-548812DP.md)
* CapabilityStatements using this Profile: [CapabilityStatement[https://interop.esante.gouv.fr/ig/fhir/annuaire/CapabilityStatement/AsServerDPCapabilityStatement|1.2.0-snapshot-2]](CapabilityStatement-AsServerDPCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.annuaire|current/StructureDefinition/StructureDefinition-as-dp-organization.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-as-dp-organization.csv), [Excel](../StructureDefinition-as-dp-organization.xlsx), [Schematron](../StructureDefinition-as-dp-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-dp-organization",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-organization",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsDpOrganizationProfile",
  "title" : "AS Donnée Publique Organization Profile",
  "status" : "draft",
  "date" : "2026-06-25T12:00:53+00:00",
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
  "description" : "Profil public applicatif créé à partir du profil générique as-organization  dans le contexte des données en libre accès de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "as-organization-to-mos-ej",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsOrganization to MOS - EJ"
  },
  {
    "identity" : "as-organization-to-mos-eg",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsOrganization to MOS - EG"
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
  "type" : "Organization",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization|1.2.0-snapshot-2",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization"
    },
    {
      "id" : "Organization.meta.extension:as-ext-data-trace",
      "path" : "Organization.meta.extension",
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
      "id" : "Organization.meta.source",
      "path" : "Organization.meta.source",
      "patternUri" : "https://annuaire.esante.gouv.fr"
    },
    {
      "id" : "Organization.meta.profile",
      "path" : "Organization.meta.profile",
      "min" : 2
    },
    {
      "id" : "Organization.meta.profile:fr-canonical",
      "path" : "Organization.meta.profile",
      "sliceName" : "fr-canonical",
      "min" : 1
    },
    {
      "id" : "Organization.meta.profile:as-dp-canonical",
      "path" : "Organization.meta.profile",
      "sliceName" : "as-dp-canonical",
      "min" : 1,
      "max" : "1",
      "patternCanonical" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-organization|1.2.0-snapshot-2"
    },
    {
      "id" : "Organization.extension:as-ext-digital-certificate",
      "path" : "Organization.extension",
      "sliceName" : "as-ext-digital-certificate",
      "max" : "0",
      "mustSupport" : true
    },
    {
      "id" : "Organization.extension:as-ext-organization-pharmacy-licence",
      "path" : "Organization.extension",
      "sliceName" : "as-ext-organization-pharmacy-licence",
      "mustSupport" : true
    },
    {
      "id" : "Organization.extension:as-ext-organization-pricing-model",
      "path" : "Organization.extension",
      "sliceName" : "as-ext-organization-pricing-model",
      "mustSupport" : true
    },
    {
      "id" : "Organization.extension:as-ext-organization-closing-type",
      "path" : "Organization.extension",
      "sliceName" : "as-ext-organization-closing-type",
      "mustSupport" : true
    },
    {
      "id" : "Organization.extension:as-ext-organization-budget-type",
      "path" : "Organization.extension",
      "sliceName" : "as-ext-organization-budget-type",
      "mustSupport" : true
    },
    {
      "id" : "Organization.extension:as-ext-organization-authorization-deadline",
      "path" : "Organization.extension",
      "sliceName" : "as-ext-organization-authorization-deadline",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier"
    },
    {
      "id" : "Organization.identifier.period",
      "path" : "Organization.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier.assigner",
      "path" : "Organization.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:idNatSt",
      "path" : "Organization.identifier",
      "sliceName" : "idNatSt",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:idNatSt.period",
      "path" : "Organization.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:idNatSt.assigner",
      "path" : "Organization.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:siren",
      "path" : "Organization.identifier",
      "sliceName" : "siren",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:siren.period",
      "path" : "Organization.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:siren.assigner",
      "path" : "Organization.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:siret",
      "path" : "Organization.identifier",
      "sliceName" : "siret",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:siret.period",
      "path" : "Organization.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:siret.assigner",
      "path" : "Organization.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:finess",
      "path" : "Organization.identifier",
      "sliceName" : "finess",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:finess.period",
      "path" : "Organization.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:finess.assigner",
      "path" : "Organization.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:rppsRang",
      "path" : "Organization.identifier",
      "sliceName" : "rppsRang",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:rppsRang.period",
      "path" : "Organization.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:rppsRang.assigner",
      "path" : "Organization.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Organization.active",
      "path" : "Organization.active",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.type:organizationType",
      "path" : "Organization.type",
      "sliceName" : "organizationType",
      "mustSupport" : true
    },
    {
      "id" : "Organization.type:secteurActiviteRASS",
      "path" : "Organization.type",
      "sliceName" : "secteurActiviteRASS",
      "mustSupport" : true
    },
    {
      "id" : "Organization.type:categorieEtablissementRASS",
      "path" : "Organization.type",
      "sliceName" : "categorieEtablissementRASS",
      "mustSupport" : true
    },
    {
      "id" : "Organization.type:statutJuridiqueINSEE",
      "path" : "Organization.type",
      "sliceName" : "statutJuridiqueINSEE",
      "mustSupport" : true
    },
    {
      "id" : "Organization.type:sphParticipation",
      "path" : "Organization.type",
      "sliceName" : "sphParticipation",
      "mustSupport" : true
    },
    {
      "id" : "Organization.type:typeEtablissement",
      "path" : "Organization.type",
      "sliceName" : "typeEtablissement",
      "mustSupport" : true
    },
    {
      "id" : "Organization.alias",
      "path" : "Organization.alias",
      "mustSupport" : true
    },
    {
      "id" : "Organization.telecom",
      "path" : "Organization.telecom"
    },
    {
      "id" : "Organization.telecom.period",
      "path" : "Organization.telecom.period",
      "max" : "0"
    },
    {
      "id" : "Organization.telecom:mailbox-mss",
      "path" : "Organization.telecom",
      "sliceName" : "mailbox-mss",
      "mustSupport" : true
    },
    {
      "id" : "Organization.telecom:mailbox-mss.extension:as-mailbox-mss-metadata",
      "path" : "Organization.telecom.extension",
      "sliceName" : "as-mailbox-mss-metadata"
    },
    {
      "id" : "Organization.telecom:mailbox-mss.extension:as-mailbox-mss-metadata.extension:responsible",
      "path" : "Organization.telecom.extension.extension",
      "sliceName" : "responsible",
      "max" : "0"
    },
    {
      "id" : "Organization.telecom:mailbox-mss.period",
      "path" : "Organization.telecom.period",
      "max" : "0"
    },
    {
      "id" : "Organization.address",
      "path" : "Organization.address",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact",
      "path" : "Organization.contact",
      "max" : "0"
    },
    {
      "id" : "Organization.endpoint",
      "path" : "Organization.endpoint",
      "max" : "0",
      "mustSupport" : true
    }]
  }
}

```
