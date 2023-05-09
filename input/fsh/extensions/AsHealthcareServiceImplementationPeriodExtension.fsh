Extension: 		AsHealthcareServiceImplementationPeriodExtension
Id: 			as-ext-healthcareservice-implementation-period
Title:			"AS HealthcareService Implementation Period Extension"
Description:	"Extension créée dans le cadre de l'Annuaire Santé pour en compte de la date d'échéance de l'autorisation de l'activité de soins."

* ^context.type = #element
* ^context.expression = "HealthcareService"
* value[x] only Period
* valuePeriod.start ^short = "Date mise en œuvre"
* valuePeriod.end ^short = "Date fin de mise en oeuvre"