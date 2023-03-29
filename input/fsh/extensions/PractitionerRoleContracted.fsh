Extension: 		PractitionerRoleContracted
Id: 			PractitionerRole-Contracted
Title:			"EAS PractitionerRole Contracted"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte du secteur de conventionnement du professionnel libéral par la CNAM (extracts AMELI)."

* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only CodeableConcept
* value[x] from $JDV-J130-CNAMAmeliSecteurConventionnement-RASS (required)
* value[x] ^binding.description = "Secteur de conventionnement du professionnel libéral par la CNAM (extracts AMELI)"
* value[x].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R282-CNAMAmeliSecteurConventionnement/FHIR/TRE-R282-CNAMAmeliSecteurConventionnement/" (exactly)