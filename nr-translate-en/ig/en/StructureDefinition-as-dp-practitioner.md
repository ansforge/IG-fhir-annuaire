# AS Donnée Publique Practitioner Profile - Annuaire Santé v1.2.0-snapshot-1

## Resource Profile: AS Donnée Publique Practitioner Profile 

 
Profil public applicatif créé à partir du profil générique as-practitioner dans le contexte des données en libre accès de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement. 

**Usages:**

* Examples for this Profile: [Practitioner/334081DP](Practitioner-334081DP.md) and [Practitioner/3719500DP](Practitioner-3719500DP.md)
* CapabilityStatements using this Profile: [CapabilityStatement[https://interop.esante.gouv.fr/ig/fhir/annuaire/CapabilityStatement/AsServerDPCapabilityStatement|1.2.0-snapshot-1]](CapabilityStatement-AsServerDPCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.annuaire|current/StructureDefinition/StructureDefinition-as-dp-practitioner.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-as-dp-practitioner.csv), [Excel](../StructureDefinition-as-dp-practitioner.xlsx), [Schematron](../StructureDefinition-as-dp-practitioner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-dp-practitioner",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-practitioner",
  "version" : "1.2.0-snapshot-1",
  "name" : "AsDpPractitionerProfile",
  "title" : "AS Donnée Publique Practitioner Profile",
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
  "description" : "Profil public applicatif créé à partir du profil générique as-practitioner dans le contexte des données en libre accès de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "as-practitioner-role-to-mos-savoir-faire",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerProfile to MOS - SavoirFaire"
  },
  {
    "identity" : "as-practitioner-role-to-mos-exercice-professionnel",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerProfile to MOS - ExerciceProfessionnel"
  },
  {
    "identity" : "as-practitioner-role-to-mos-inscription-ordre",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerProfile to MOS - InscriptionOrdre"
  },
  {
    "identity" : "as-practitioner-role-to-mos-diplome",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerProfile to MOS - Diplome"
  },
  {
    "identity" : "as-practitioner-role-to-mos-professionnel",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerProfile to MOS - Professionnel"
  },
  {
    "identity" : "as-practitioner-role-to-mos-autorisation-exercice",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerProfile to MOS - AutorisationExercice"
  },
  {
    "identity" : "as-practitioner-role-to-mos-carte-professionnel",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerProfile to MOS - CarteProfessionnel"
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
  "type" : "Practitioner",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner|1.2.0-snapshot-1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner",
      "path" : "Practitioner"
    },
    {
      "id" : "Practitioner.meta.extension:as-ext-data-trace",
      "path" : "Practitioner.meta.extension",
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
      "id" : "Practitioner.meta.source",
      "path" : "Practitioner.meta.source",
      "patternUri" : "https://annuaire.esante.gouv.fr"
    },
    {
      "id" : "Practitioner.meta.profile",
      "path" : "Practitioner.meta.profile",
      "min" : 2
    },
    {
      "id" : "Practitioner.meta.profile:fr-canonical",
      "path" : "Practitioner.meta.profile",
      "sliceName" : "fr-canonical",
      "min" : 1
    },
    {
      "id" : "Practitioner.meta.profile:as-dp-canonical",
      "path" : "Practitioner.meta.profile",
      "sliceName" : "as-dp-canonical",
      "min" : 1,
      "max" : "1",
      "patternCanonical" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-practitioner|1.2.0-snapshot-1"
    },
    {
      "id" : "Practitioner.extension:as-ext-registration",
      "path" : "Practitioner.extension",
      "sliceName" : "as-ext-registration",
      "max" : "0"
    },
    {
      "id" : "Practitioner.extension:as-ext-frpractitioner-authorization",
      "path" : "Practitioner.extension",
      "sliceName" : "as-ext-frpractitioner-authorization",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.extension:as-ext-smartcard",
      "path" : "Practitioner.extension",
      "sliceName" : "as-ext-smartcard",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.extension:as-ext-smartcard.extension:oppositionDate",
      "path" : "Practitioner.extension.extension",
      "sliceName" : "oppositionDate",
      "max" : "0"
    },
    {
      "id" : "Practitioner.extension:as-ext-digital-certificate",
      "path" : "Practitioner.extension",
      "sliceName" : "as-ext-digital-certificate",
      "max" : "0"
    },
    {
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "min" : 2
    },
    {
      "id" : "Practitioner.identifier.period",
      "path" : "Practitioner.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Practitioner.identifier.assigner",
      "path" : "Practitioner.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Practitioner.identifier:idNatPs",
      "path" : "Practitioner.identifier",
      "sliceName" : "idNatPs",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:idNatPs.period",
      "path" : "Practitioner.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Practitioner.identifier:idNatPs.assigner",
      "path" : "Practitioner.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Practitioner.identifier:rpps",
      "path" : "Practitioner.identifier",
      "sliceName" : "rpps",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:rpps.period",
      "path" : "Practitioner.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Practitioner.identifier:rpps.assigner",
      "path" : "Practitioner.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Practitioner.active",
      "path" : "Practitioner.active",
      "min" : 1
    },
    {
      "id" : "Practitioner.name",
      "path" : "Practitioner.name",
      "max" : "1"
    },
    {
      "id" : "Practitioner.name.period",
      "path" : "Practitioner.name.period",
      "max" : "0"
    },
    {
      "id" : "Practitioner.telecom",
      "path" : "Practitioner.telecom",
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
      "id" : "Practitioner.telecom:mailbox-mss",
      "path" : "Practitioner.telecom",
      "sliceName" : "mailbox-mss",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.telecom:mailbox-mss.extension:as-mailbox-mss-metadata",
      "path" : "Practitioner.telecom.extension",
      "sliceName" : "as-mailbox-mss-metadata"
    },
    {
      "id" : "Practitioner.telecom:mailbox-mss.extension:as-mailbox-mss-metadata.extension:responsible",
      "path" : "Practitioner.telecom.extension.extension",
      "sliceName" : "responsible",
      "max" : "0"
    },
    {
      "id" : "Practitioner.telecom:mailbox-mss.extension:as-mailbox-mss-metadata.extension:listeRouge",
      "path" : "Practitioner.telecom.extension.extension",
      "sliceName" : "listeRouge",
      "max" : "0"
    },
    {
      "id" : "Practitioner.address",
      "path" : "Practitioner.address",
      "max" : "0"
    },
    {
      "id" : "Practitioner.gender",
      "path" : "Practitioner.gender",
      "max" : "0"
    },
    {
      "id" : "Practitioner.birthDate",
      "path" : "Practitioner.birthDate",
      "max" : "0"
    },
    {
      "id" : "Practitioner.photo",
      "path" : "Practitioner.photo",
      "max" : "0"
    },
    {
      "id" : "Practitioner.qualification",
      "path" : "Practitioner.qualification"
    },
    {
      "id" : "Practitioner.qualification.period",
      "path" : "Practitioner.qualification.period",
      "max" : "0"
    },
    {
      "id" : "Practitioner.qualification:degree",
      "path" : "Practitioner.qualification",
      "sliceName" : "degree"
    },
    {
      "id" : "Practitioner.qualification:degree.extension:as-ext-education-level",
      "path" : "Practitioner.qualification.extension",
      "sliceName" : "as-ext-education-level",
      "max" : "0"
    },
    {
      "id" : "Practitioner.qualification:degree.period",
      "path" : "Practitioner.qualification.period",
      "max" : "0"
    },
    {
      "id" : "Practitioner.qualification:degree.issuer",
      "path" : "Practitioner.qualification.issuer",
      "max" : "0"
    },
    {
      "id" : "Practitioner.qualification:exercicePro",
      "path" : "Practitioner.qualification",
      "sliceName" : "exercicePro"
    },
    {
      "id" : "Practitioner.qualification:exercicePro.period",
      "path" : "Practitioner.qualification.period",
      "max" : "0"
    },
    {
      "id" : "Practitioner.qualification:savoirFaire",
      "path" : "Practitioner.qualification",
      "sliceName" : "savoirFaire"
    },
    {
      "id" : "Practitioner.qualification:savoirFaire.code.coding:savoirFaire",
      "path" : "Practitioner.qualification.code.coding",
      "sliceName" : "savoirFaire",
      "short" : "Compétence acquise par le professionnel (competence) R39 ou Compétence exclusive exercée par le professionnel à titre exclusif (competenceExclusive) R40 ou Diplôme d'études spécialisées complémentaires (DESC)DESCnonQualifian R42 ou Capacité (savoir-faire)de médecine (capaciteSavoirFaire) R43 ou Qualification de praticien adjoint contractuel (qualificationPAC) R44 ou Fonction qualifiée (Synonyme: fonctionQualifiee) R45 ou Droit d'exercice complémentaire (Synonyme: droitExerciceComplementaire) R97."
    },
    {
      "id" : "Practitioner.qualification:savoirFaire.period",
      "path" : "Practitioner.qualification.period",
      "max" : "0"
    },
    {
      "id" : "Practitioner.communication",
      "path" : "Practitioner.communication",
      "max" : "0"
    }]
  }
}

```
