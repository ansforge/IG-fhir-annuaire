Extension: 		AsPatientTypeExtension
Id: 			as-ext-patient-type
Title:			"AS Patient Type Extension"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour décrire un ensemble de personnes qui répondent à des critères leur permettant de  bénéficier de la discipline décrite."

* ^context.type = #element
* ^context.expression = "HealthcareService"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains  
	AuthorizedAgeRange 0..1 and  // ageMinAutorise + ageMaxAutorise
	InstalledAgeRange 0..1  // ageMinInstalle + ageMaxInstalle

* extension[AuthorizedAgeRange].value[x] only Range
* extension[AuthorizedAgeRange].value[x].low 0..1
* extension[AuthorizedAgeRange].value[x].high 0..1
* extension[AuthorizedAgeRange] ^short = "Age de la clientèle autorisée."

* extension[InstalledAgeRange].value[x] only Range
* extension[InstalledAgeRange].value[x].low 0..1
* extension[InstalledAgeRange].value[x].high 0..1
* extension[InstalledAgeRange] ^short = "Age de la clientèle installée."