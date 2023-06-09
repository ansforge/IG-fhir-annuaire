Extension: 		AsOrganizationPharmacyLicenceExtension
Id: 			as-ext-organization-pharmacy-licence
Title:			"AS Organization Pharmacy Licence Extension"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la licence d’exploitation d’une officine."

* ^context.type = #element
* ^context.expression = "Organization"
* . ^comment = "Synonyme : numeroLicence"
* . ^short = "Numéro de la licence d'exploitation d’une officine."

* value[x] only string