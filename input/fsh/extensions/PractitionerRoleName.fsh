Extension: 		PractitionerRoleName
Id: 			PractitionerRole-Name
Title:			"EAS Practitioner Role Name"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte du nom d'exercice sous lequel exerce le professionnel."

* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only FrHumanName