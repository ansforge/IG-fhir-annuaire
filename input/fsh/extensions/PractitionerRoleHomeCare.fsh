Extension: 		PractitionerRoleHomeCare
Id: 			PractitionerRole-HomeCare
Title:			"EAS PractitionerRole HomeCare"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de l'indicateur visite à domicile qui précise si le professionnel, dans le cadre de cette situation opérationnelle, propose des visites à domicile ou pas."

* ^context.type = #element
* ^context.expression = "PractitionerRole.availableTime"
* . ^short = "Consultation à domicile"
* value[x] only boolean
* value[x] ^comment = "Type consultation = a_dom => true"