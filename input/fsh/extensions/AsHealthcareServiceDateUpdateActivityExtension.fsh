Extension: 		AsHealthcareServiceDateUpdateActivityExtension
Id: 			as-ext-healthcareservice-date-update-activity
Title:			"AS HealthcareService Date Update Activity Extension"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la date  de mise à  jour des données de l'activité de soins."

* ^context.type = #element
* ^context.expression = "HealthcareService"
* . ^comment = "Synonyme MOS : dateMajAutorisation"
* . ^short = "Date de dernière mise à jour de l’autorisation."
* value[x] only date