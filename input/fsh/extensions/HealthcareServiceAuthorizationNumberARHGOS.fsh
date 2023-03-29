Extension: 		HealthcareServiceAuthorizationNumberARHGOS
Id: 			HealthcareService-AuthorizationNumberARHGOS
Title:			"EAS Healthcare Service Authorization Number ARHGOS"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte du numéro d'autorisation ARHGOS."

* ^context.type = #element
* ^context.expression = "HealthcareService"
* . ^short = "Numéro autorisation ARGHOS"
* value[x] only string