Extension: 		DeviceNumberaAuthorizationARHGOS
Id: 			Device-NumberAuthorizationARHGOS
Title:			"EAS Device Numbera Authorization ARHGOS"
Description:	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de l'identifiant métier de l'autorisation ARHGOS d’un équipement matériel lourd."

* ^context.type = #element
* ^context.expression = "Device"
* . ^short = "Identifiant fonctionnel de l'autorisation ARHGOS de l'EML"
* value[x] only string