Extension: 		AsOrganizationClosingTypeExtension
Id: 			as-ext-organization-closing-type
Title:			"AS Organization Closing Type Extension"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte du type de fermeture de la structure."

* ^context.type = #element
* ^context.expression = "Organization"

* . ^short = "Type de fermeture de la structure (typeFermeture)."

* value[x] only CodeableConcept
* valueCodeableConcept from VS-TRE-R286-TypeFermeture (required) // TODO - A remplacer par le jdv J260 une fois publié dans le NOS (23/08/2024)
