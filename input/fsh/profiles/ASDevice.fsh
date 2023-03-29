Profile: 		ASDevice
Parent: 		Device
Id: 			AS-Device
Title: 			"AS Device"
Description:	"Profil créé à partir de la ressource Device dans le contexte de l'Annuaire Santé pour décrire les équipements matériels lourds ('EML') mis en oeuvre au sein d'un établissement."

* meta.security ..0
* meta.tag ..0
* implicitRules ..0
* text ..0
* contained ..0
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    DeviceNumberaAuthorizationARHGOS named numberAuthorizationARHGOS 0..1 and
    DeviceAuthorizationDateDevice named authorizationDateDevice 0..1 and
    DevicePeriodImplantation named periodImplantation 0..1
* identifier ^short = "Numéro autorisation ARGHOS"
* definition ..0
* udiCarrier ..0
* status ^comment = "= “active” par défaut; \r\nSinon, si le matériel est inactif =” inactive”"
* statusReason ..0
* distinctIdentifier ..0
* manufacturer ^short = "Marque de l'équipement matériel lourd"
* manufactureDate ..0
* expirationDate ..0
* lotNumber ..0
* serialNumber ^short = "Numéro de série de l'équipement matériel lourd"
* deviceName ..0
* modelNumber ..0
* partNumber ..0
* type from $JDV-J135-EquipementMaterielLourd-RASS (required)
* type ^binding.description = "Code définissant l'équipement matériel lourd (EML) soumis à autorisation"
* type.coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R272-EquipementMaterielLourd/FHIR/TRE-R272-EquipementMaterielLourd" (exactly)
* specialization ..0
* version ..0
* property ..0
* patient ..0
* owner ^short = "Référence vers la structure FINESS ET"
* owner ^comment = "Reference vers l'id de la ressource de la structure FINESS ET à laquelle est rattaché cet équipement matériel lourd"
* contact ..0
* location ..0
* url ..0
* note ..0
* safety ..0
* parent ..0