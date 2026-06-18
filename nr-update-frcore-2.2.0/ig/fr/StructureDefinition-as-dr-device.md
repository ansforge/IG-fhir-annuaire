# AS Donnée Restreinte Device Profile - Annuaire Santé v1.2.0-snapshot-2

## Profil de ressource: AS Donnée Restreinte Device Profile 

 
Profil restreint applicatif créé à partir du profil générique as-device dans le contexte des données en accès restreint de l’Annuaire Santé. 

**Utilisations:**

* Ce Profil n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-dr-device)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsDeviceProfile](StructureDefinition-as-device.md) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsDeviceProfile](StructureDefinition-as-device.md) 

** Résumé **

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))
 Must-Support : 8 éléments
 Interdit : 19 éléments

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-data-trace|1.2.0-snapshot-2](StructureDefinition-as-ext-data-trace.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Device.meta.profile

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [AsDeviceProfile](StructureDefinition-as-device.md) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsDeviceProfile](StructureDefinition-as-device.md) 

** Résumé **

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))
 Must-Support : 8 éléments
 Interdit : 19 éléments

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-data-trace|1.2.0-snapshot-2](StructureDefinition-as-ext-data-trace.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Device.meta.profile

 

Autres représentations du profil : [CSV](../StructureDefinition-as-dr-device.csv), [Excel](../StructureDefinition-as-dr-device.xlsx), [Schematron](../StructureDefinition-as-dr-device.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-dr-device",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dr-device",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsDrDeviceProfile",
  "title" : "AS Donnée Restreinte Device Profile",
  "status" : "draft",
  "date" : "2026-06-18T13:08:38+00:00",
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
  "description" : "Profil restreint applicatif créé à partir du profil générique as-device dans le contexte des données en accès restreint de l’Annuaire Santé.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Device",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-device|1.2.0-snapshot-2",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Device",
      "path" : "Device"
    },
    {
      "id" : "Device.meta.extension:as-ext-data-trace",
      "path" : "Device.meta.extension",
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
      "id" : "Device.meta.source",
      "path" : "Device.meta.source",
      "patternUri" : "https://annuaire.esante.gouv.fr"
    },
    {
      "id" : "Device.meta.profile",
      "path" : "Device.meta.profile",
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
      "id" : "Device.meta.profile:as-dr-canonical",
      "path" : "Device.meta.profile",
      "sliceName" : "as-dr-canonical",
      "min" : 1,
      "max" : "1",
      "patternCanonical" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dr-device|1.2.0-snapshot-2"
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
      "mustSupport" : true
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
    }]
  }
}

```
