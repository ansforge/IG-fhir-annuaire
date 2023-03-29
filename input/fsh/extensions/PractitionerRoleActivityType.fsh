Extension: 		PractitionerRoleActivityType
Id: 			PractitionerRole-ActivityType
Title:			"EAS PractitionerRole Activity Type"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte des plages horaires types propres au professionnel."

* ^context.type = #element
* ^context.expression = "PractitionerRole.availableTime"
* value[x] only code
* value[x] ^comment = "”co” = plage horaire de consultation; ”ca” = plage horaire d’activité du cabinet; Si non renseigné = pas de plages horaire de consultation ou d’activité renseignée"