Extension: 		AsPractitionerRoleHasCas
Id: 			as-ext-practitionerrole-hascas
Title:			"AS PractitionerRole Has CAS"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour décrire le contrat d'accès aux soins (CAS), remplacée récemment par l'option pratique tarifaire maîtrisée (OPTAM)."

* ^context.type = #element
* ^context.expression = "PractitionerRole"
* . ^comment = "Synonyme : optionContratAccesSoins, optionPratiqueTarifaireMaîtrisée"
* . ^short = "OPTAM est un dispositif proposé par l’Assurance Maladie aux médecins conventionnés, ayant pour objectif principal de faciliter l’accès aux soins."

* value[x] only boolean