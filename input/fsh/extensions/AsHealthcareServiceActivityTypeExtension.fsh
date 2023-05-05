Extension: 		AsHealthcareServiceActivityTypeExtension
Id: 			as-ext-healthcareservice-activity-type
Title:			"AS Healthcare Service Activity Type Extension"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour décrire les types d’activités sanitaires des établissements FINESS."
* ^context.type = #element
* ^context.expression = "HealthcareService"
* . ^short = "activite"
* . ^definition = "Code définissant l'activité de soins autorisée -AS- (article L.6122-1 du CSP)"
* . ^comment = "la liste des activités de soins soumises à autorisation est fixée par décret en Conseil d'Etat (article L.6122-25 du CSP)."
* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-J131-CategorieActiviteSanitaireRegulee-RASS (required)
* valueCodeableConcept ^binding.description = "Liste des types d'activités autorisées"