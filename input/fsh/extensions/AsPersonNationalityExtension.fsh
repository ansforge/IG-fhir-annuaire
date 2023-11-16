Extension: 		AsPersonNationalityExtension
Id: 			as-ext-person-nationality
Title:			"AS Person Nationality Extension"
Description:	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la nationalité du professionel (Person)."

* ^context.type = #element
* ^context.expression = "Person"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    code 0..1 and
    period 0..1

// paysNationalite
* extension[code] ^short = "Pays de nationalité actuelle ou rattachement de la nationalité à un espace de pays conventionné (paysNationalite)."
* extension[code].value[x] only CodeableConcept
* extension[code].valueCodeableConcept from $JDV-J74-Pays-RASS (required)

// dateAcquisitionNatFR
* extension[period] ^short = "Date d'acquisition de la nationalité française (dateAcquisitionNatFR).\nrenseignée uniquement si la nationalité actuelle est française et qu'elle n’a pas été acquise à la naissance."
* extension[period].value[x] only Period

