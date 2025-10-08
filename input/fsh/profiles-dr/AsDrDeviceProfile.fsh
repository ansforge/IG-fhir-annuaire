Profile: AsDrDeviceProfile
Parent: as-device
Id: as-dr-device
Title: "AS Donnée Restreinte Device Profile"
Description: "Profil restreint applicatif créé à partir du profil générique as-device dans le contexte des données en accès restreint de l’Annuaire Santé."


* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains as-dr-canonical 1..1
* meta.profile[as-dr-canonical] = Canonical(as-dr-device)


* definition 0..0
* udiCarrier 0..0
* statusReason 0..0
* distinctIdentifier 0..0
* manufactureDate 0..0
* expirationDate 0..0
* lotNumber 0..0
* deviceName 0..0
* modelNumber 0..0
* partNumber 0..0
* specialization 0..0
* version 0..0
* property 0..0
* patient 0..0
* contact 0..0
* url 0..0
* note 0..0
* safety 0..0
* parent 0..0