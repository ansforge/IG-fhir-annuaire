Extension: 		AsOrganizationBudgetTypeExtension
Id: 			as-ext-organization-budget-type
Title:			"AS Organization Budget Type Extension"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la nature du budget alloué à la structure."

* ^context.type = #element
* ^context.expression = "Organization"

* . ^short = "Nature du budget alloué à la structure (natureEtablissement)."

* value[x] only string