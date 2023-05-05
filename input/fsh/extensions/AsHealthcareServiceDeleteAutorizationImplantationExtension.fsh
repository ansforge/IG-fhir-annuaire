Extension: 		AsHealthcareServiceDeleteAutorizationImplantationExtension
Id: 			as-ext-healthcareservice-delete-autorization-implantation
Title:			"AS HealthcareService Delete Autorization Implantation Extension"
Description:	"Extension créée dans le cadre de l'Annuaire Santé pour en compte de l'indicateur de suppression de l'autorisation de l'activité de soins."

* ^context.type = #element
* ^context.expression = "HealthcareService"
* . ^short = "suppressionAutorisation"
* . ^definition = "ndicateur de suppression de l'autorisation de l'activité de soins."
* . ^comment = "Donnée propre à FINESS"
* value[x] only boolean