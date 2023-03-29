Extension: 		HealthcareServiceImplementationPeriod
Id: 			HealthcareService-ImplementationPeriod
Title:			"EAS Healthcare Service Implementation Period"
Description:	"Extension créée dans le cadre de l'Annuaire Santé pour en compte de la date d'échéance de l'autorisation de l'activité de soins."

* ^context.type = #element
* ^context.expression = "HealthcareService"
* value[x] only Period
* value[x].start ^short = "Date mise en œuvre"
* value[x].end ^short = "Date fin de mise en oeuvre"