Extension: 		AsOrganizationPharmacyLicenceExtension
Id: 			as-ext-organization-pharmacy-licence
Title:			"AS Organization Pharmacy Licence Extension"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la licence d’exploitation d’une officine."

* ^context.type = #element
* ^context.expression = "Organization"
* . ^short = "Numéro de la licence d'exploitation d’une officine (numeroLicence)."

* value[x] only string