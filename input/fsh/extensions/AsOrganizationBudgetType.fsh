Extension: 		AsOrganizationBudgetTypeExtension
Id: 			as-ext-organization-budget-type
Title:			"AS Organization Pharmacy Licence Extension"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la nature du budget alloué à la structure."

* ^context.type = #element
* ^context.expression = "Organization"
* . ^comment = "Synonyme : natureEtablissement"
* . ^short = "Nature du budget alloué à la structure."

* value[x] only string