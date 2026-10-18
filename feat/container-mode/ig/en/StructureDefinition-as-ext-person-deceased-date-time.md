# AS Person Deceased Date Time Extension - Annuaire Santé v1.2.0-snapshot-2

## Extension: AS Person Deceased Date Time Extension 

Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la date de décès du professionnel (Date of death of the Person if applicable).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [AS Person Profile](StructureDefinition-as-person.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.annuaire|current/StructureDefinition/StructureDefinition-as-ext-person-deceased-date-time.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-as-ext-person-deceased-date-time.csv), [Excel](../StructureDefinition-as-ext-person-deceased-date-time.xlsx), [Schematron](../StructureDefinition-as-ext-person-deceased-date-time.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-person-deceased-date-time",
  "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Person.deceasedDateTime",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsPersonDeceasedDateTimeExtension",
  "title" : "AS Person Deceased Date Time Extension",
  "status" : "draft",
  "date" : "2026-06-26T10:31:58+00:00",
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
  "description" : "Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la date de décès du professionnel (Date of death of the Person if applicable).",
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
    "expression" : "Person"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "AS Person Deceased Date Time Extension",
      "definition" : "Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la date de décès du professionnel (Date of death of the Person if applicable)."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Person.deceasedDateTime"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Extension.value[x]:valueDateTime",
      "path" : "Extension.value[x]",
      "sliceName" : "valueDateTime",
      "short" : "Date de décès de la personne (dateDeces).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
