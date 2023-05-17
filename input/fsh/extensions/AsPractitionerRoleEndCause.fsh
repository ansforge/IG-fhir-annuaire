Extension: 		AsPractitionerRoleEndCauseExtension
Id: 			as-ext-practitionerrole-end-cause
Title:			"AS PractitionerRole End Cause Extension"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour décrire le motif de fin d'activité du professionnel (décès, retraite libérale, changement de profession par exemple."

* ^context.type = #element
* ^context.expression = "PractitionerRole"
* . ^comment = "Synonyme : motifFinActivite"
* . ^short = "Motif de fin d'activité, par exemple: décès, retraite libérale, changement de profession, etc."

* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-J92-MotifFinActivite-RASS (required)
* valueCodeableConcept ^binding.description = "Liste des motifs de fin d'activité."
