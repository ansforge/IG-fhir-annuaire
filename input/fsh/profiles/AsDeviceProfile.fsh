Profile: AsDeviceProfile
Parent: Device
Id: as-device
Title: "As Device Profile"
Description: "Profil créé à partir de la ressource Device dans le contexte de l'Annuaire Santé pour décrire les équipements matériels lourds ('EML') mis en oeuvre au sein d'un établissement."
// metadat
* meta.lastUpdated 1..1
* owner only Reference(AsOrganizationProfile)
// extensions
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    $Device-numberAuthorizationARHGOS named numberAuthorizationARHGOS 0..1 MS and
    $Device-authorizationDateDevice named authorizationDateDevice 0..1 MS and
    AsDevicePeriodImplantationExtension named periodImplantation 0..1 MS
/* donnees */
// numeroAutorisationARHGOS
* identifier MS
* identifier ^short = "numeroAutorisationARHGOS"
* identifier ^comment = "Identifiant fonctionnel de l'autorisation ARHGOS de l'EML"
// actif
* status MS
* status ^comment = "= “active” par défaut; \r\nSinon, si le matériel est inactif =” inactive”"
* status ^short = "actif"
// marque
* manufacturer MS
* manufacturer ^short = "marque"
* manufacturer ^comment = "Marque de l'équipement matériel lourd"
// numeroSerie
* serialNumber MS
* serialNumber ^comment = "Numéro de série de l'équipement matériel lourd"
* serialNumber ^short = "numeroSerie"
// equipementMaterielLourd
* type MS
* type from $JDV-J135-EquipementMaterielLourd-RASS (required)
* type ^binding.description = "Code définissant l'équipement matériel lourd (EML) soumis à autorisation"
* type ^short = "equipementMaterielLourd"
// Lien Equipement/Structure
* owner 0..1 MS
* owner ^short = "idStructure"
* owner ^comment = "Reference vers l'id de la ressource de la structure FINESS ET à laquelle est rattaché cet équipement matériel lourd"
