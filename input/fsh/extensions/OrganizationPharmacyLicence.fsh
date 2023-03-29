Extension: 		OrganizationPharmacyLicence
Id: 			Organization-PharmacyLicence
Title:			"EAS Organization Pharmacy Licence"
Description: 	"Extension créée dans le cadre de l'annuaire santé pour prise en compte de la licence d’exploitation d’une officine."

* ^context.type = #element
* ^context.expression = "Organization"
* . ^short = "Numéro licence officine"
* value[x] only string