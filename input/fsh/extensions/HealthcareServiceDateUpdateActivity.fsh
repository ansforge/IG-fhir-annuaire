Extension: 		HealthcareServiceDateUpdateActivity
Id: 			HealthcareService-DateUpdateActivity
Title:			"EAS Healthcare Service Date UpdateA ctivity"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la date  de mise à  jour des données de l'activité de soins."

* ^context.type = #element
* ^context.expression = "HealthcareService"
* . ^short = "Date maj sur activité"
* value[x] only date