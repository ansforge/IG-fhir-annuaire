Extension: 		HealthcareServiceDeleteAutorizationImplantation
Id: 			HealthcareService-DeleteAutorizationImplantation
Title:			"EAS Healthcare Service Delete Autorization Implantation"
Description:	"Extension créée dans le cadre de l'Annuaire Santé pour en compte de l'indicateur de suppression de l'autorisation de l'activité de soins."

* ^context.type = #element
* ^context.expression = "HealthcareService"
* . ^short = "Indicateur suppression sur implantation"
* value[x] only boolean