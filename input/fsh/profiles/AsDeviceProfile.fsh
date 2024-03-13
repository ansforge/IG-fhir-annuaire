Profile: AsDeviceProfile
Parent: Device
Id: as-device
Title: "AS Device Profile"
Description: "Profil générique créé à partir de Device dans le contexte de l'Annuaire Santé pour décrire les équipements matériels lourds ('EML') mis en oeuvre au sein d'un établissement."

// Data trace
* meta.extension ^slicing.discriminator.type = #value
* meta.extension ^slicing.discriminator.path = "url"
* meta.extension ^slicing.rules = #open
* meta.extension contains as-ext-data-trace named as-ext-data-trace 0..1 MS

// extensions
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains AsHealthcareServiceAuthorizationExtension named as-ext-healthcareservice-authorization 0..1 MS

/* device.identifier */
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the identifier.system pattern"

* identifier contains numAutorisationArhgos 0..1 
* identifier[numAutorisationArhgos] ^short = "Identifiant fonctionnel, numéro d'autorisation ARHGOS (numeroAutorisationARHGOS)."
* identifier[numAutorisationArhgos].system = "https://arhgos.ars.sante.fr/"

// actif
* status 0..1 MS
* status ^short = "Le matériel est-il actif? active | inactive"

// marque
* manufacturer 0..1 MS
* manufacturer ^short = "Marque de l'équipement matériel lourd."

// numeroSerie
* serialNumber 0..1 MS
* serialNumber ^short = "Numéro de série de l'équipement matériel lourd (numeroSerie)."

// equipementMaterielLourd
* type 0..1 MS
* type from $JDV-J135-EquipementMaterielLourd-RASS (required)
* type ^short = "Code définissant l'équipement matériel lourd (EML) soumis à autorisation."

// Lien Equipement/Structure
* owner 0..1 MS
* owner only Reference(FrOrganization or AsOrganizationProfile)
* owner ^short = "Référence vers l'id de la structure FINESS ET à laquelle est rattaché cet équipement matériel lourd (idStructure)."