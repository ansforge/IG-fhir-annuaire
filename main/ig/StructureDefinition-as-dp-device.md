# AS Donnée Publique Device Profile - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AS Donnée Publique Device Profile**

## Resource Profile: AS Donnée Publique Device Profile 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-device | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsDpDeviceProfile |

 
Profil public applicatif créé à partir du profil générique as-device dans le contexte des données en libre accès de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement. 

**Usages:**

* CapabilityStatements using this Profile: [CapabilityStatement[https://interop.esante.gouv.fr/ig/fhir/annuaire/CapabilityStatement/AsServerDPCapabilityStatement|1.1.0]](CapabilityStatement-AsServerDPCapabilityStatement.md)
* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-dp-device)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-as-dp-device.csv), [Excel](StructureDefinition-as-dp-device.xlsx), [Schematron](StructureDefinition-as-dp-device.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-dp-device",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-device",
  "version" : "1.1.0",
  "name" : "AsDpDeviceProfile",
  "title" : "AS Donnée Publique Device Profile",
  "status" : "active",
  "date" : "2025-10-10T07:08:46+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [
    {
      "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        },
        {
          "system" : "email",
          "value" : "monserviceclient.annuaire@esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "Profil public applicatif créé à partir du profil générique as-device dans le contexte des données en libre accès de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "as-device-to-mos-equipement-materiel-lourd",
      "uri" : "https://mos.esante.gouv.fr",
      "name" : "AsDeviceProfile to MOS - EquipementMaterielLourd"
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
    },
    {
      "identity" : "udi",
      "uri" : "http://fda.gov/UDI",
      "name" : "UDI Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Device",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-device",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Device",
        "path" : "Device"
      },
      {
        "id" : "Device.meta.extension:as-ext-data-trace",
        "path" : "Device.meta.extension",
        "sliceName" : "as-ext-data-trace",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-data-trace"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Device.meta.profile",
        "path" : "Device.meta.profile",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "$this"
            }
          ],
          "description" : "Slice based on the canonical url value",
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Device.meta.profile:as-dp-canonical",
        "path" : "Device.meta.profile",
        "sliceName" : "as-dp-canonical",
        "min" : 1,
        "max" : "1",
        "patternCanonical" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-device"
      },
      {
        "id" : "Device.extension:as-ext-authorization",
        "path" : "Device.extension",
        "sliceName" : "as-ext-authorization",
        "mustSupport" : true
      },
      {
        "id" : "Device.identifier",
        "path" : "Device.identifier",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Device.identifier:numAutorisationArhgos",
        "path" : "Device.identifier",
        "sliceName" : "numAutorisationArhgos",
        "min" : 1
      },
      {
        "id" : "Device.definition",
        "path" : "Device.definition",
        "max" : "0"
      },
      {
        "id" : "Device.udiCarrier",
        "path" : "Device.udiCarrier",
        "max" : "0"
      },
      {
        "id" : "Device.status",
        "path" : "Device.status",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Device.statusReason",
        "path" : "Device.statusReason",
        "max" : "0"
      },
      {
        "id" : "Device.distinctIdentifier",
        "path" : "Device.distinctIdentifier",
        "max" : "0"
      },
      {
        "id" : "Device.manufacturer",
        "path" : "Device.manufacturer",
        "mustSupport" : true
      },
      {
        "id" : "Device.manufactureDate",
        "path" : "Device.manufactureDate",
        "max" : "0"
      },
      {
        "id" : "Device.expirationDate",
        "path" : "Device.expirationDate",
        "max" : "0"
      },
      {
        "id" : "Device.lotNumber",
        "path" : "Device.lotNumber",
        "max" : "0"
      },
      {
        "id" : "Device.serialNumber",
        "path" : "Device.serialNumber",
        "mustSupport" : true
      },
      {
        "id" : "Device.deviceName",
        "path" : "Device.deviceName",
        "max" : "0"
      },
      {
        "id" : "Device.modelNumber",
        "path" : "Device.modelNumber",
        "max" : "0"
      },
      {
        "id" : "Device.partNumber",
        "path" : "Device.partNumber",
        "max" : "0"
      },
      {
        "id" : "Device.type",
        "path" : "Device.type",
        "mustSupport" : true
      },
      {
        "id" : "Device.specialization",
        "path" : "Device.specialization",
        "max" : "0"
      },
      {
        "id" : "Device.version",
        "path" : "Device.version",
        "max" : "0"
      },
      {
        "id" : "Device.property",
        "path" : "Device.property",
        "max" : "0"
      },
      {
        "id" : "Device.patient",
        "path" : "Device.patient",
        "max" : "0"
      },
      {
        "id" : "Device.owner",
        "path" : "Device.owner",
        "mustSupport" : true
      },
      {
        "id" : "Device.contact",
        "path" : "Device.contact",
        "max" : "0"
      },
      {
        "id" : "Device.url",
        "path" : "Device.url",
        "max" : "0"
      },
      {
        "id" : "Device.note",
        "path" : "Device.note",
        "max" : "0"
      },
      {
        "id" : "Device.safety",
        "path" : "Device.safety",
        "max" : "0"
      },
      {
        "id" : "Device.parent",
        "path" : "Device.parent",
        "max" : "0"
      }
    ]
  }
}

```
