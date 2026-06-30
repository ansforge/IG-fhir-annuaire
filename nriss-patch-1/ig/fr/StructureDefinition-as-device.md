# AS Device Profile - Annuaire Santé v1.2.0-snapshot-2

## Profil de ressource: AS Device Profile 

 
Profil générique créé à partir de Device dans le contexte de l'Annuaire Santé pour décrire les Equipements Matériels Lourds (EML) mis en place au sein d'un établissement. 

**Utilisations:**

* Dérivé de ce Profil: [AS Donnée Publique Device Profile](StructureDefinition-as-dp-device.md) and [AS Donnée Restreinte Device Profile](StructureDefinition-as-dr-device.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-device)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Device](http://hl7.org/fhir/R4/device.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Device](http://hl7.org/fhir/R4/device.html) 

** Résumé **

Obligatoire : 0 élément(1 élément obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Organization Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0)](https://hl7.fr/ig/fhir/core/2.2.0/StructureDefinition-fr-core-organization.html)
* [AS Organization Profile (https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization|1.2.0-snapshot-2)](StructureDefinition-as-organization.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-authorization|1.2.0-snapshot-2](StructureDefinition-as-ext-authorization.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Device.identifier

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [Device](http://hl7.org/fhir/R4/device.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Device](http://hl7.org/fhir/R4/device.html) 

** Résumé **

Obligatoire : 0 élément(1 élément obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Organization Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0)](https://hl7.fr/ig/fhir/core/2.2.0/StructureDefinition-fr-core-organization.html)
* [AS Organization Profile (https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization|1.2.0-snapshot-2)](StructureDefinition-as-organization.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-authorization|1.2.0-snapshot-2](StructureDefinition-as-ext-authorization.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Device.identifier

 

Autres représentations du profil : [CSV](../StructureDefinition-as-device.csv), [Excel](../StructureDefinition-as-device.xlsx), [Schematron](../StructureDefinition-as-device.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-device",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-device",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsDeviceProfile",
  "title" : "AS Device Profile",
  "status" : "draft",
  "date" : "2026-06-30T07:49:20+00:00",
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
  "description" : "Profil générique créé à partir de Device dans le contexte de l'Annuaire Santé pour décrire les Equipements Matériels Lourds (EML) mis en place au sein d'un établissement.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Device|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Device",
      "path" : "Device",
      "mapping" : [{
        "identity" : "as-device-to-mos-equipement-materiel-lourd",
        "map" : "EquipementMaterielLourd"
      }]
    },
    {
      "id" : "Device.extension",
      "path" : "Device.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Device.extension:as-ext-authorization",
      "path" : "Device.extension",
      "sliceName" : "as-ext-authorization",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-authorization|1.2.0-snapshot-2"]
      }]
    },
    {
      "id" : "Device.extension:as-ext-authorization.extension:dateAuthorization",
      "path" : "Device.extension.extension",
      "sliceName" : "dateAuthorization",
      "mapping" : [{
        "identity" : "as-device-to-mos-equipement-materiel-lourd",
        "map" : "EquipementMaterielLourd.dateDecision"
      }]
    },
    {
      "id" : "Device.extension:as-ext-authorization.extension:periodAuthorization",
      "path" : "Device.extension.extension",
      "sliceName" : "periodAuthorization"
    },
    {
      "id" : "Device.extension:as-ext-authorization.extension:periodAuthorization.value[x].start",
      "path" : "Device.extension.extension.value[x].start",
      "mapping" : [{
        "identity" : "as-device-to-mos-equipement-materiel-lourd",
        "map" : "EquipementMaterielLourd.datePremierMEO"
      }]
    },
    {
      "id" : "Device.extension:as-ext-authorization.extension:periodAuthorization.value[x].end",
      "path" : "Device.extension.extension.value[x].end",
      "mapping" : [{
        "identity" : "as-device-to-mos-equipement-materiel-lourd",
        "map" : "EquipementMaterielLourd.datefin"
      }]
    },
    {
      "id" : "Device.identifier",
      "path" : "Device.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Slice based on the identifier.system value",
        "rules" : "open"
      }
    },
    {
      "id" : "Device.identifier:numAutorisationArhgos",
      "path" : "Device.identifier",
      "sliceName" : "numAutorisationArhgos",
      "short" : "Identifiant fonctionnel, numéro d'autorisation ARHGOS (numeroAutorisationARHGOS). Le system est mis à titre indicatif et pourra évoluer.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Device.identifier:numAutorisationArhgos.system",
      "path" : "Device.identifier.system",
      "min" : 1,
      "patternUri" : "https://arhgos.ars.sante.fr"
    },
    {
      "id" : "Device.identifier:numAutorisationArhgos.value",
      "path" : "Device.identifier.value",
      "mapping" : [{
        "identity" : "as-device-to-mos-equipement-materiel-lourd",
        "map" : "EquipementMaterielLourd.numeroAutorisationARHGOS"
      }]
    },
    {
      "id" : "Device.status",
      "path" : "Device.status",
      "short" : "Le matériel est-il actif ? active | inactive"
    },
    {
      "id" : "Device.manufacturer",
      "path" : "Device.manufacturer",
      "short" : "Marque de l'équipement matériel lourd.",
      "mapping" : [{
        "identity" : "as-device-to-mos-equipement-materiel-lourd",
        "map" : "EquipementMaterielLourd.marque"
      }]
    },
    {
      "id" : "Device.serialNumber",
      "path" : "Device.serialNumber",
      "short" : "Numéro de série de l'équipement matériel lourd (numeroSerie).",
      "mapping" : [{
        "identity" : "as-device-to-mos-equipement-materiel-lourd",
        "map" : "EquipementMaterielLourd.numeroSerie"
      }]
    },
    {
      "id" : "Device.type",
      "path" : "Device.type",
      "short" : "Code définissant l'équipement matériel lourd (EML) soumis à autorisation.",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J135-EquipementMaterielLourd-RASS/FHIR/JDV-J135-EquipementMaterielLourd-RASS|20201127120000"
      },
      "mapping" : [{
        "identity" : "as-device-to-mos-equipement-materiel-lourd",
        "map" : "EquipementMaterielLourd.equipementMaterielLourd"
      }]
    },
    {
      "id" : "Device.owner",
      "path" : "Device.owner",
      "short" : "Référence vers l'id de la structure FINESS ET à laquelle est rattaché cet équipement matériel lourd (idStructure).",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0",
        "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization|1.2.0-snapshot-2"]
      }]
    }]
  }
}

```
