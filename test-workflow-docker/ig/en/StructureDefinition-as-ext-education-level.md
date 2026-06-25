# AS Education Level Extension - Annuaire Santé v1.2.0-snapshot-2

## Extension: AS Education Level Extension 

Extension créée dans le cadre de l'Annuaire Santé pour décrire le niveau de formation acquis d'un étudiant.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [AS Practitioner Profile](StructureDefinition-as-practitioner.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.annuaire|current/StructureDefinition/StructureDefinition-as-ext-education-level.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-as-ext-education-level.csv), [Excel](../StructureDefinition-as-ext-education-level.xlsx), [Schematron](../StructureDefinition-as-ext-education-level.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-education-level",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-education-level",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsEducationLevelExtension",
  "title" : "AS Education Level Extension",
  "status" : "draft",
  "date" : "2026-06-25T12:09:26+00:00",
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
  "description" : "Extension créée dans le cadre de l'Annuaire Santé pour décrire le niveau de formation acquis d'un étudiant.",
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
    "expression" : "Practitioner.qualification"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "niveauFormation",
      "definition" : "Le niveau de formation."
    },
    {
      "id" : "Extension.extension:academicDegree",
      "path" : "Extension.extension",
      "sliceName" : "academicDegree",
      "short" : "[Donnée restreinte] : Nature du cycle de formation (natureCycleFormation).",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:academicDegree.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:academicDegree.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "academicDegree"
    },
    {
      "id" : "Extension.extension:academicDegree.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J86-NatCycleForm-RASS/FHIR/JDV-J86-NatCycleForm-RASS|20200424120000"
      }
    },
    {
      "id" : "Extension.extension:achievedLevel",
      "path" : "Extension.extension",
      "sliceName" : "achievedLevel",
      "short" : "[Donnée restreinte] : Niveau de formation acquis dans le cycle de formation du professionnel (niveauFormationAcquis).",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:achievedLevel.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:achievedLevel.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "achievedLevel"
    },
    {
      "id" : "Extension.extension:achievedLevel.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J87-NiveauFormAcquis-RASS/FHIR/JDV-J87-NiveauFormAcquis-RASS|20200424120000"
      }
    },
    {
      "id" : "Extension.extension:academicYear",
      "path" : "Extension.extension",
      "sliceName" : "academicYear",
      "short" : "[Donnée restreinte] : Année universitaire du professionnel (anneeUniversitaire).\nExemple : 2015-2016.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:academicYear.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:academicYear.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "academicYear"
    },
    {
      "id" : "Extension.extension:academicYear.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J88-AnneeUniversitaire-RASS/FHIR/JDV-J88-AnneeUniversitaire-RASS|20251016120000"
      }
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-education-level"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
