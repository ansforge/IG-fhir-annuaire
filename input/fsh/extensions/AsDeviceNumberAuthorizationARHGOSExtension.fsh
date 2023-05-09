Extension: 		AsDeviceNumberAuthorizationARHGOSExtension
Id: 			as-ext-device-number-authorization-arhgos
Title:			"AS Device Numbera Authorization ARHGOS Extension"
Description:	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de l'identifiant métier de l'autorisation ARHGOS d’un équipement matériel lourd."

* ^context.type = #element
* ^context.expression = "Device"
* . ^short = "numeroAutorisationARHGOS"
* . ^definition = "Identifiant fonctionnel de l'autorisation ARHGOS de l'EML."
* value[x] only string