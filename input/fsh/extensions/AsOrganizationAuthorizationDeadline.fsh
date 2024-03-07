Extension: 		AsOrganizationAuthorizationDeadlineExtension
Id: 			as-ext-organization-authorization-deadline
Title:			"AS Organization Authorization Deadline Extension"
Description:	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la caducité de l'autorisation sanitaire."

* ^context[+].type = #element
* ^context[=].expression = "Organization"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    endDate 0..1 and 
    indicator 0..1 

* extension[endDate].value[x] only dateTime
* extension[indicator].value[x] only boolean