Extension: 		PractitionerRoleVitaleAccepted
Id: 			PractitionerRole-VitaleAccepted
Title:			"EAS PractitionerRole Vitale Accepted"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de l’indicateur Carte Vitale acceptée qui précise si le professionnel, dans le cadre de cette situation opérationnelle, dispose des moyens techniques pour prendre en charge la carte vitale ou pas."

* ^context.type = #element
* ^context.expression = "PractitionerRole"
* . ^short = "l’indicateur Carte Vitale acceptée précise si le professionnel, dans le cadre de cette situation opérationnelle, dispose des moyens techniques pour prendre en charge la carte vitale ou pas."
* value[x] only boolean
* value[x] ^comment = "0 : pas de prise en charge de la carte vitale.\r\n1 : prise en charge de la carte vitale."