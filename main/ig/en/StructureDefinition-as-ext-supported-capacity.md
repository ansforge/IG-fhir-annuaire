# AS Supported Capacity Extension - Annuaire Santé v1.2.0-snapshot-2

## Extension: AS Supported Capacity Extension 

Extension créée dans le cadre de l'Annuaire Santé pour indiquer le nombre de personnes pouvant être accueillies en même temps et les capacités d'hébergement.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [AS HealthcareService Social Equipment Profile](StructureDefinition-as-healthcareservice-social-equipment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.annuaire|current/StructureDefinition/StructureDefinition-as-ext-supported-capacity.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-as-ext-supported-capacity.csv), [Excel](../StructureDefinition-as-ext-supported-capacity.xlsx), [Schematron](../StructureDefinition-as-ext-supported-capacity.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-supported-capacity",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-supported-capacity",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsSupportedCapacityExtension",
  "title" : "AS Supported Capacity Extension",
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
  "description" : "Extension créée dans le cadre de l'Annuaire Santé pour indiquer le nombre de personnes pouvant être accueillies en même temps et les capacités d'hébergement.",
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
    "expression" : "HealthcareService"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "AS Supported Capacity Extension",
      "definition" : "Extension créée dans le cadre de l'Annuaire Santé pour indiquer le nombre de personnes pouvant être accueillies en même temps et les capacités d'hébergement."
    },
    {
      "id" : "Extension.extension:capacityAvailable",
      "path" : "Extension.extension",
      "sliceName" : "capacityAvailable",
      "short" : "Capacité autorisée totale en nombre de places, lits ou logements (capaciteAutorisee).",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:capacityAvailable.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:capacityAvailable.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "capacityAvailable"
    },
    {
      "id" : "Extension.extension:capacityAvailable.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Extension.extension:femaleCapacityAvailable",
      "path" : "Extension.extension",
      "sliceName" : "femaleCapacityAvailable",
      "short" : "Capacité autorisée en nombre de places, lits ou logements réservée aux femmes (capaciteAutoriseeFemme).\r\n Cette capacité est facultative et peut être saisie si le caractère sexué des places est précisé dans la décision d’autorisation.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:femaleCapacityAvailable.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:femaleCapacityAvailable.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "femaleCapacityAvailable"
    },
    {
      "id" : "Extension.extension:femaleCapacityAvailable.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Extension.extension:maleCapacityAvailable",
      "path" : "Extension.extension",
      "sliceName" : "maleCapacityAvailable",
      "short" : "Capacité autorisée en nombre de places, lits ou logements réservée aux hommes (MalecapacityAvailable).\r\n Cette capacité est facultative et peut être saisie si le caractère sexué des places est précisé dans la décision d’autorisation.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:maleCapacityAvailable.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:maleCapacityAvailable.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "maleCapacityAvailable"
    },
    {
      "id" : "Extension.extension:maleCapacityAvailable.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Extension.extension:socialAssistanceCapacityAvailable",
      "path" : "Extension.extension",
      "sliceName" : "socialAssistanceCapacityAvailable",
      "short" : "Nombre de places, lits ou logements autorisés habilités aide sociale départementale (capaciteAutoriseeHabiliteeAideSociale).",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:socialAssistanceCapacityAvailable.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:socialAssistanceCapacityAvailable.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "socialAssistanceCapacityAvailable"
    },
    {
      "id" : "Extension.extension:socialAssistanceCapacityAvailable.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Extension.extension:installedCapacity",
      "path" : "Extension.extension",
      "sliceName" : "installedCapacity",
      "short" : "Capacité installée totale en nombre de places, lits ou logements (capaciteInstallee).",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:installedCapacity.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:installedCapacity.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "installedCapacity"
    },
    {
      "id" : "Extension.extension:installedCapacity.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Extension.extension:femaleInstalledCapacity",
      "path" : "Extension.extension",
      "sliceName" : "femaleInstalledCapacity",
      "short" : "Capacité installée en nombre de places, lits ou logements réservée aux femmes (capaciteInstalleeFemme).",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:femaleInstalledCapacity.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:femaleInstalledCapacity.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "femaleInstalledCapacity"
    },
    {
      "id" : "Extension.extension:femaleInstalledCapacity.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Extension.extension:maleInstalledCapacity",
      "path" : "Extension.extension",
      "sliceName" : "maleInstalledCapacity",
      "short" : "Capacité installée en nombre de places, lits ou logements réservée aux hommes (capaciteInstalleeHomme).",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:maleInstalledCapacity.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:maleInstalledCapacity.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "maleInstalledCapacity"
    },
    {
      "id" : "Extension.extension:maleInstalledCapacity.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Extension.extension:socialAssistanceInstalledCapacity",
      "path" : "Extension.extension",
      "sliceName" : "socialAssistanceInstalledCapacity",
      "short" : "Nombre de places, lits ou logements installés habilités aide sociale départementale (capaciteInstalleeHabiliteeAideSociale).",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:socialAssistanceInstalledCapacity.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:socialAssistanceInstalledCapacity.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "socialAssistanceInstalledCapacity"
    },
    {
      "id" : "Extension.extension:socialAssistanceInstalledCapacity.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-supported-capacity"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
