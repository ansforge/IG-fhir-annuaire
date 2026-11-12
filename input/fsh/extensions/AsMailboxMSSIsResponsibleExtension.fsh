Extension: 		AsMailboxMSSIsResponsibleExtension
Id: 			as-ext-mailbox-mss-is-responsible
Title:			"AS Mailbox MSS Is Responsible"
Description: 	"Extension indiquant si le professionnel est le responsable de la boîte aux lettres MSS à laquelle il est rattaché. Une boîte aux lettres de type cabinet (CAB) peut être associée à plusieurs Practitioner : la recherche des professionnels par BAL MSS de type CAB renvoie l'ensemble des Practitioner associés à cette BAL, et cette extension permet d'identifier lequel en est le responsable. Elle n'est utilisable que si le type de la BAL est CAB."

* ^context[0].type = #extension
* ^context[=].expression = "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-mailbox-mss-metadata"

* . ^short = "isResponsible : Indique si le professionnel est responsable de la BAL MSS de type CAB."
* value[x] only boolean
* value[x] 1..1

Invariant: as-pract-isresponsible-cab
Description: "isResponsible n'est utilisable que si le type de la boîte aux lettres (typeBAL) est CAB."
Severity: #error
Expression: "extension('https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-mailbox-mss-is-responsible').exists() implies extension('type').value.coding.where(code = 'CAB').exists()"
