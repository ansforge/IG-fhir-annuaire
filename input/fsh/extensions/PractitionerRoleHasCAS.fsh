Extension: 		PractitionerRoleHasCAS
Id: 			PractitionerRole-HasCAS
Title:			"EAS PractitionerRole OPTAM"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de l'option pratique tarifaire maîtrisée (OPTAM)."

* ^context.type = #element
* ^context.expression = "PractitionerRole"
* . ^short = "Option pratique tarifaire maîtrisée"
* value[x] only boolean