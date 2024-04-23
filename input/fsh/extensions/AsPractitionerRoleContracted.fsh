Extension: 		AsPractitionerRoleContracted
Id: 			as-ext-practitionerrole-contracted
Title:			"AS PractitionerRole Contracted"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour décrire le secteur de conventionnement du professionnel libéral auquel il a adhéré auprès de l'Assurance Maladie."

* ^context.type = #element
* ^context.expression = "PractitionerRole"
* . ^short = "Secteur de conventionnement du professionnel libéral auquel il a adhéré auprès de l'Assurance Maladie (Synonyme : secteurConventionnement)."

* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-J130-CNAMAmeliSecteurConventionnement-RASS (required)
* valueCodeableConcept ^short = "Liste des conventionnements CNAM."
