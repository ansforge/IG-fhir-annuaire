Extension: 		DeviceAuthorizationDateDevice
Id: 			Device-AuthorizationDateDevice
Title:			"AS Device Authorization Date Device"
Description:	"Extension créée dans le cadre de l'annuaire santé pour prise en compte de la date de délivrance de l’autorisation d’un équipement matériel lourd."

* ^context.type = #element
* ^context.expression = "Device"
* . ^short = "Date de délivrance de l’autorisation d’EML"
* value[x] only date