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
	authorizedAgeRange 0..1 and  // ageMinAutorise + ageMaxAutorise
	installedAgeRange 0..1  // ageMinInstalle + ageMaxInstalle

* extension[authorizedAgeRange].value[x] only Range
* extension[authorizedAgeRange].value[x].low 0..1
* extension[authorizedAgeRange].value[x].high 0..1
* extension[authorizedAgeRange] ^short = "Age de la clientèle autorisée."

* extension[installedAgeRange].value[x] only Range
* extension[installedAgeRange].value[x].low 0..1
* extension[installedAgeRange].value[x].high 0..1
* extension[installedAgeRange] ^short = "Age de la clientèle installée."