Extension: 		AsOrganizationPricingModelExtension
Id: 			as-ext-organization-pricing-model
Title:			"AS Organization Pricing Model Extension"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte du mode de tarification de la structure."

* ^context.type = #element
* ^context.expression = "Organization"
* . ^comment = "Synonyme : modeFixationTarif"
* . ^short = "Mode de tarification de la structure."

* value[x] only CodeableConcept
* valueCodeableConcept from $TRE_R74-ModeFixationTarifaire (required)
