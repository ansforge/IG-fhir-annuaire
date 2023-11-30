Extension: 		AsDeviceAuthorizationDateDeviceExtension
Id: 			as-ext-device-authorization-date-device
Title:			"AS Device Authorization Date Device Extension"
Description:	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la date de délivrance de l’autorisation d’un équipement matériel lourd."

* ^context[+].type = #element
* ^context[=].expression = "Device"

* . ^short = "Date de délivrance de l’autorisation d’EML (date d’autorisation)."
* value[x] only date