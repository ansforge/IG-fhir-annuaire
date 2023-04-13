Profile: AsDeviceProfile
Parent: Device
Id: as-device
Title: "As Device Profile"
Description: "Profil créé à partir de la ressource Device dans le contexte de l'Annuaire Santé pour décrire les équipements matériels lourds ('EML') mis en oeuvre au sein d'un établissement."

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    $Device-numberAuthorizationARHGOS named numberAuthorizationARHGOS 0..1 MS and
    $Device-authorizationDateDevice named authorizationDateDevice 0..1 MS and
    AsDevicePeriodImplantationExtension named periodImplantation 0..1 MS
* identifier ^short = "Numéro autorisation ARGHOS"
* definition MS
* udiCarrier MS
* status ^comment = "= “active” par défaut; \r\nSinon, si le matériel est inactif =” inactive”"
* statusReason MS
* distinctIdentifier MS
* manufacturer ^short = "Marque de l'équipement matériel lourd"
* manufactureDate MS
* expirationDate MS
* lotNumber MS
* serialNumber ^short = "Numéro de série de l'équipement matériel lourd"
* deviceName MS
* modelNumber MS
* partNumber MS
* type from $JDV-J135-EquipementMaterielLourd-RASS (required)
* type ^binding.description = "Code définissant l'équipement matériel lourd (EML) soumis à autorisation"
* specialization MS
* version MS
* property MS
* patient MS
* owner ^short = "Référence vers la structure FINESS ET"
* owner ^comment = "Reference vers l'id de la ressource de la structure FINESS ET à laquelle est rattaché cet équipement matériel lourd"
* contact MS
* location MS
* url MS
* note MS
* safety MS
* parent MS
