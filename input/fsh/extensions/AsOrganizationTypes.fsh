Extension: 		AsOrganizationTypes
Id: 			as-ext-organization-types
Title:			"AS Organization Types"
Description: 	"Extension pour discriminer les organization types."

* ^context.type = #element
* ^context.expression = "Organization.type"

* value[x] only code
* valueCode from AsVsOrganizationTypes


ValueSet: AsVsOrganizationTypes
Id: as-vs-organization-types
Title: "AS ValueSet OrganizationTypes"
Description: "ValueSet définissant les types d'organisation"
* include codes from system as-cs-organization-types

CodeSystem: AsCsOrganizationTypes
Id: as-cs-organization-types
Title: "AS CodeSystem OrganizationTypes"
Description: "CodeSystem définissant les types d'organisation"
* #organizationType "Type d'organisation" "Type d'organisation"
* #activiteINSEE "Activité INSEE" "Activité INSEE"
* #statutJuridiqueINSEE "Statut Juridique INSEE" "Statut Juridique INSEE"
* #sphParticipation "sph Participation" "Participation au service public hospitalier"
* #typeEtablissement "Type d'établissement" "Type d'établissement"
* #secteurActiviteRASS "Secteur d'activité RASS" "Secteur d'activité RASS"