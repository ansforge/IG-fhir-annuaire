# AS Mailbox Metadata - Annuaire Santé v1.2.0-snapshot-1

## Extension: AS Mailbox Metadata 

Extension contenant les métadonnées de la mailbox mss.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [AS Mailbox MSS Datatype Profile](StructureDefinition-as-mailbox-mss.md)
* Examples for this Extension: [PHARMACIE NOLOT](Organization-481677.md), [CHRU NANCY - HOPITAUX DE BRABOIS](Organization-example-organization-nancy.md) and [Practitioner/3719500](Practitioner-3719500.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.annuaire|current/StructureDefinition/StructureDefinition-as-ext-mailbox-mss-metadata.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-as-ext-mailbox-mss-metadata.csv), [Excel](../StructureDefinition-as-ext-mailbox-mss-metadata.xlsx), [Schematron](../StructureDefinition-as-ext-mailbox-mss-metadata.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-mailbox-mss-metadata",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-mailbox-mss-metadata",
  "version" : "1.2.0-snapshot-1",
  "name" : "AsMailboxMSSMetadataExtension",
  "title" : "AS Mailbox Metadata",
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
  "description" : "Extension contenant les métadonnées de la mailbox mss.",
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
    "expression" : "ContactPoint"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "AS Mailbox Metadata",
      "definition" : "Extension contenant les métadonnées de la mailbox mss."
    },
    {
      "id" : "Extension.extension:type",
      "path" : "Extension.extension",
      "sliceName" : "type",
      "short" : "typeBAL : Type de boîte aux lettres.\r\nValeurs possibles : ORG | APP | PER | CAB",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:type.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:type.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "type"
    },
    {
      "id" : "Extension.extension:type.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J139-TypeBAL-RASS/FHIR/JDV-J139-TypeBAL-RASS|20231124120000"
      }
    },
    {
      "id" : "Extension.extension:description",
      "path" : "Extension.extension",
      "sliceName" : "description",
      "short" : "description : Description fonctionnelle de la boîte aux lettres.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:description.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:description.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "description"
    },
    {
      "id" : "Extension.extension:description.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:responsible",
      "path" : "Extension.extension",
      "sliceName" : "responsible",
      "short" : "responsable : Texte libre donnant les coordonnées de la (ou des) personne(s) responsable(s) au niveau opérationnel de la boîte aux lettres. Non renseigné pour les types de boîte aux lettres \"PER\".",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:responsible.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:responsible.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "responsible"
    },
    {
      "id" : "Extension.extension:responsible.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:service",
      "path" : "Extension.extension",
      "sliceName" : "service",
      "short" : "serviceRattachement : Nom et description du service de rattachement de l’utilisateur de la boîte aux lettres dans l’organisation.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:service.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:service.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "service"
    },
    {
      "id" : "Extension.extension:service.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:listeRouge",
      "path" : "Extension.extension",
      "sliceName" : "listeRouge",
      "short" : "listeRouge : Indicateur liste rouge. \"true\": Boîte aux lettres en liste rouge;\r\n\"false\": La boîte aux lettres peut être publiée",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:listeRouge.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:listeRouge.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "listeRouge"
    },
    {
      "id" : "Extension.extension:listeRouge.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-mailbox-mss-metadata"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
