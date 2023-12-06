Profile: AsDeviceProfile
Parent: Device
Id: as-device
Title: "AS Device Profile"
Description: "Profil créé à partir de Device dans le contexte de l'Annuaire Santé pour décrire les équipements matériels lourds ('EML') mis en oeuvre au sein d'un établissement."

// profils references
* owner only Reference(FrOrganization or AsOrganizationProfile)

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

/* donnees */
// numeroAutorisationARHGOS
* identifier 0..* MS
* identifier ^short = "Identifiant fonctionnel de l'autorisation ARHGOS de l'EML (numeroAutorisationARHGOS)."

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
* owner ^short = "Référence vers l'id de la structure FINESS ET à laquelle est rattaché cet équipement matériel lourd (idStructure)."