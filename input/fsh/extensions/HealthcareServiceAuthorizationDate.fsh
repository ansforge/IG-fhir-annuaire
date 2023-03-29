Extension: 		HealthcareServiceAuthorizationDate
Id: 			HealthcareService-AuthorizationDate
Title:			"EAS Healthcare Service Authorization Date"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la date  délivrance de l’autorisation de l’activité de soins."

* ^context.type = #element
* ^context.expression = "HealthcareService"
* . ^short = "Date autorisation"
* value[x] only date