Profile: AsDeviceProfile
Parent: Device
Id: as-device
Title: "As Device Profile"
Description: "Profil créé à partir de la ressource Device dans le contexte de l'Annuaire Santé pour décrire les équipements matériels lourds ('EML') mis en oeuvre au sein d'un établissement."
// profils references
* owner only Reference(FrOrganization or AsOrganizationProfile)
// extensions
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    AsDeviceNumberAuthorizationARHGOSExtension named as-ext-device-number-authorization-arhgos 0..1 MS and
    AsDeviceAuthorizationDateDeviceExtension named as-ext-device-authorization-date-device 0..1 MS and
    AsDevicePeriodImplantationExtension named as-ext-device-Period-implantation 0..1 MS
/* donnees */
// numeroAutorisationARHGOS
* identifier 0..* MS
* identifier ^short = "Identifiant fonctionnel de l'autorisation ARHGOS de l'EML."
* identifier ^comment = "Synonyme MOS : numeroAutorisationARHGOS"
// actif
* status 0..1 MS
* status ^comment = "= “active” par défaut; \r\nSinon, si le matériel est inactif =” inactive”"
* status ^short = "Le matériel est-il actif? O/N"
// marque
* manufacturer 0..1 MS
* manufacturer ^short = "Marque de l'équipement matériel lourd."
* manufacturer ^comment = "marque"
// numeroSerie
* serialNumber 0..1 MS
* serialNumber ^comment = "Numéro de série de l'équipement matériel lourd"
* serialNumber ^short = "Synonyme MOS : numeroSerie"
// equipementMaterielLourd
* type 0..1 MS
* type from $JDV-J135-EquipementMaterielLourd-RASS (required)
* type ^binding.description = "Code définissant l'équipement matériel lourd (EML) soumis à autorisation"
* type ^short = "equipementMaterielLourd"
// Lien Equipement/Structure
* owner 0..1 MS
* owner ^short = "Référence vers l'id de la structure FINESS ET à laquelle est rattaché cet équipement matériel lourd."
* owner ^comment = "Synonyme MOS : idStructure"