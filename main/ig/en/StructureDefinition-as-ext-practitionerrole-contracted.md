# AS PractitionerRole Contracted - Annuaire Santé v1.2.0-snapshot-2

## Extension: AS PractitionerRole Contracted 

Extension créée dans le cadre de l'Annuaire Santé pour décrire le secteur de conventionnement du professionnel libéral auquel il a adhéré auprès de l'Assurance Maladie.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [AS PractitionerRole Profile](StructureDefinition-as-practitionerrole.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.annuaire|current/StructureDefinition/StructureDefinition-as-ext-practitionerrole-contracted.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-as-ext-practitionerrole-contracted.csv), [Excel](../StructureDefinition-as-ext-practitionerrole-contracted.xlsx), [Schematron](../StructureDefinition-as-ext-practitionerrole-contracted.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-practitionerrole-contracted",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitionerrole-contracted",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsPractitionerRoleContracted",
  "title" : "AS PractitionerRole Contracted",
  "status" : "draft",
  "date" : "2026-06-19T13:53:04+00:00",
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
  "description" : "Extension créée dans le cadre de l'Annuaire Santé pour décrire le secteur de conventionnement du professionnel libéral auquel il a adhéré auprès de l'Assurance Maladie.",
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
    "expression" : "PractitionerRole"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Secteur de conventionnement du professionnel libéral auquel il a adhéré auprès de l'Assurance Maladie (Synonyme : secteurConventionnement).",
      "definition" : "Extension créée dans le cadre de l'Annuaire Santé pour décrire le secteur de conventionnement du professionnel libéral auquel il a adhéré auprès de l'Assurance Maladie."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitionerrole-contracted"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Liste des conventionnements CNAM.",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J130-CNAMAmeliSecteurConventionnement-RASS/FHIR/JDV-J130-CNAMAmeliSecteurConventionnement-RASS|20201127120000"
      }
    }]
  }
}

```
