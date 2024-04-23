Extension: 		AsPractitionerRoleVitaleAccepted
Id: 			as-ext-practitionerrole-vitale-accepted
Title:			"AS PractitionerRole Vitale Accepted"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour décrire l’indicateur Carte Vitale acceptée (oui/non)."

* ^context.type = #element
* ^context.expression = "PractitionerRole"

* . ^short = "carteVitaleAcceptee/optionPratiqueTarifaireMaîtrisée : L’indicateur Carte Vitale acceptée précisant si le professionnel, dans le cadre de cette situation opérationnelle, dispose des moyens techniques pour prendre en charge la carte vitale ou pas."

* value[x] only boolean