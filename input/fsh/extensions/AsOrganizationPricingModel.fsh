Extension: 		AsOrganizationPricingModelExtension
Id: 			as-ext-organization-pricing-model
Title:			"AS Organization Pricing Model Extension"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte du mode de tarification de la structure."

* ^context.type = #element
* ^context.expression = "Organization"

* . ^short = "Mode de tarification de la structure (modeFixationTarif)."

* value[x] only CodeableConcept
* valueCodeableConcept from VS-TRE-R74-ModeFixationTarifaire (required)
