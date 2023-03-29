Extension: 		PractitionerRoleAppointmentRequired
Id: 			PractitionerRole-AppointmentRequired
Title:			"EAS PractitionerRole Appointment Required"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte du type de consultation proposé par le professionnel de santé."

* ^context.type = #element
* ^context.expression = "PractitionerRole.availableTime"
* . ^short = "Type de consultation proposé par le professionnel de santé"
* value[x] only string
* value[x] ^comment = "avc_rdv = avec rendez-vous; ss-rdv = sans rendez-vous, non_r = non renseigné"