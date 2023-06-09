Extension: 		AsPractitionerNationalityExtension
Id: 			as-ext-practitioner-nationality
Title:			"AS Practitioner Nationality Extension"
Description:	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la nationalité du professionnel (Practitioner)."

* ^context.type = #element
* ^context.expression = "Practitioner"
* . ^short = "nationnalite"
* . ^definition = "Nationalité du professionnel"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0

* extension contains
    code 0..1 and
    period 0..1

// paysNationalite
* extension[code] ^comment = "Synonyme MOS : paysNationalite"
* extension[code] ^short = "Pays de nationalité actuelle ou rattachement de la nationalité à un espace de pays conventionné."
* extension[code].value[x] only CodeableConcept
* extension[code].valueCodeableConcept from $JDV-J74-Pays-RASS (required)
* extension[code].valueCodeableConcept ^binding.description = "Liste des pays (codes INSEE)"

// dateAcquisitionNatFR
* extension[period] ^comment = "Synonyme MOS : dateAcquisitionNatFR ; renseignée uniquement si la nationalité actuelle est française et qu'elle n’a pas été acquise à la naissance."
* extension[period] ^short = "Date d'acquisition de la nationalité française."
* extension[period].value[x] only Period
