Extension: 		AsHealthcareServiceAuthorizationDateExtension
Id: 			as-ext-healthcareservice-authorization-date
Title:			"AS Healthcare Service Authorization Date Extension"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la date  délivrance de l’autorisation de l’activité de soins."
* ^context.type = #element
* ^context.expression = "HealthcareService"
* . ^short = "Date  délivrance de l’autorisation de l’activité de soins."
* value[x] only date