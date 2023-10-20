Extension: 		AsOrganizationClosingTypeExtension
Id: 			as-ext-organization-closing-type
Title:			"AS Organization Closing Type Extension"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte du type de fermeture de la structure."

* ^context.type = #element
* ^context.expression = "Organization"
* . ^comment = "Synonyme : typeFermeture"
* . ^short = "Type de fermeture de la structure."

* value[x] only CodeableConcept
* valueCodeableConcept from $TRE-R286-TypeFermeture (required)