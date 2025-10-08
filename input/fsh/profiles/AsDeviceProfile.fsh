Profile: AsDeviceProfile
Parent: Device
Id: as-device
Title: "AS Device Profile"
Description: "Profil générique créé à partir de Device dans le contexte de l'Annuaire Santé pour décrire les Equipements Matériels Lourds (EML) mis en place au sein d'un établissement."

// Data trace
* meta.extension ^slicing.discriminator.type = #value
* meta.extension ^slicing.discriminator.path = "url"
* meta.extension ^slicing.rules = #open
* meta.extension contains as-ext-data-trace named as-ext-data-trace 0..1 


// extensions
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains AsAuthorizationExtension named as-ext-authorization 0..1





/* device.identifier */
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the identifier.system value"

// Contains rule
* identifier contains numAutorisationArhgos 0..1 // Slice numeroAutorisationARHGOS
* identifier[numAutorisationArhgos] ^short = "Identifiant fonctionnel, numéro d'autorisation ARHGOS (numeroAutorisationARHGOS). Le system est mis à titre indicatif et pourra évoluer."
* identifier[numAutorisationArhgos].system = "https://arhgos.ars.sante.fr"

// actif
* status ^short = "Le matériel est-il actif? active | inactive"

// marque
* manufacturer ^short = "Marque de l'équipement matériel lourd."

// numeroSerie
* serialNumber ^short = "Numéro de série de l'équipement matériel lourd (numeroSerie)."

// equipementMaterielLourd
* type from $JDV-J135-EquipementMaterielLourd-RASS (required)
* type ^short = "Code définissant l'équipement matériel lourd (EML) soumis à autorisation."

// Lien Equipement/Structure
* owner only Reference(fr-core-organization or AsOrganizationProfile)
* owner ^short = "Référence vers l'id de la structure FINESS ET à laquelle est rattaché cet équipement matériel lourd (idStructure)."


Mapping:  AsDeviceToMOSEquipementMaterielLourd
Source:   AsDeviceProfile
Target:   "https://mos.esante.gouv.fr"
Id:       as-device-to-mos-equipement-materiel-lourd
Title:    "AsDeviceProfile to MOS - EquipementMaterielLourd"
* -> "EquipementMaterielLourd"
* identifier[numAutorisationArhgos].value -> "EquipementMaterielLourd.numeroAutorisationARHGOS"
* manufacturer -> "EquipementMaterielLourd.marque"
* serialNumber -> "EquipementMaterielLourd.numeroSerie"
* type -> "EquipementMaterielLourd.equipementMaterielLourd"
* extension[as-ext-authorization].extension[dateAuthorization] -> "EquipementMaterielLourd.dateDecision"
* extension[as-ext-authorization].extension[periodAuthorization].valuePeriod.start -> "EquipementMaterielLourd.datePremierMEO"
* extension[as-ext-authorization].extension[periodAuthorization].valuePeriod.end -> "EquipementMaterielLourd.datefin"
// * extension[as-ext-authorization].extension[deletedAuthorization].valueEnd -> "EquipementMaterielLourd.suppressionAutorisation" // TODO à étudier