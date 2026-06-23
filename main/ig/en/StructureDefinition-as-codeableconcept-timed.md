# AS CodeableConceptTimed Datatype Profile - Annuaire Santé v1.2.0-snapshot-2

## Data Type Profile: AS CodeableConceptTimed Datatype Profile 

 
Datatype profile créé à partir CodeableConcept dans le cadre de l'Annuaire Santé pour ajouter une extension Period au type CodeableConcept. 

**Usages:**

* Use this DataType Profile: [AS Practitioner Profile](StructureDefinition-as-practitioner.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.annuaire|current/StructureDefinition/StructureDefinition-as-codeableconcept-timed.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-as-codeableconcept-timed.csv), [Excel](../StructureDefinition-as-codeableconcept-timed.xlsx), [Schematron](../StructureDefinition-as-codeableconcept-timed.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-codeableconcept-timed",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-codeableconcept-timed",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsCodeableConceptTimedProfile",
  "title" : "AS CodeableConceptTimed Datatype Profile",
  "status" : "draft",
  "date" : "2026-06-23T12:21:55+00:00",
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
  "description" : "Datatype profile créé à partir CodeableConcept dans le cadre de l'Annuaire Santé pour ajouter une extension Period au type CodeableConcept.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "orim",
    "uri" : "http://hl7.org/orim",
    "name" : "Ontological RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "CodeableConcept",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CodeableConcept|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CodeableConcept",
      "path" : "CodeableConcept"
    },
    {
      "id" : "CodeableConcept.extension:as-codeableconcept-timed-metadata",
      "path" : "CodeableConcept.extension",
      "sliceName" : "as-codeableconcept-timed-metadata",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-codeableconcept-timed-metadata|1.2.0-snapshot-2"]
      }]
    }]
  }
}

```
