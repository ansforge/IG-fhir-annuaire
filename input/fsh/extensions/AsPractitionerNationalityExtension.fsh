Extension: 		AsPractitionerNationalityExtension
Id: 			as-ext-practitioner-nationality
Title:			"AS Practitioner Nationality Extension"
Description:	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la nationalité du professionnel (Practitioner)."

* ^context.type = #element
* ^context.expression = "Practitioner"
* . ^short = "nationnalite"
* . ^definition = "Nationalité du professionnel"
* . ^isModifier = false
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    code 0..1 and
    period 0..1
// paysNationalite
* extension[code] ^short = "paysNationalite"
* extension[code] ^definition = "Pays de nationalité actuelle ou rattachement de la nationalité à un espace de pays conventionné."
* extension[code] ^isModifier = false
* extension[code].value[x] only CodeableConcept
* extension[code].valueCodeableConcept N
* extension[code].valueCodeableConcept from $JDV-J74-Pays-RASS (required)
* extension[code].valueCodeableConcept ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* extension[code].valueCodeableConcept ^extension[=].valueCode = #4.0.0
* extension[code].valueCodeableConcept ^binding.description = "Liste des pays (codes INSEE)"
// dateAcquisitionNatFR
* extension[period] ^short = "dateAcquisitionNatFR"
* extension[period] ^definition = "Date d'acquisition de la nationalité française."
* extension[period] ^comment = "renseignée uniquement si la nationalité actuelle est française et qu'elle n’a pas été acquise à la naissance"
* extension[period].value[x] only Period
* extension[period].valuePeriod N
* extension[period].valuePeriod ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* extension[period].valuePeriod ^extension[=].valueCode = #4.0.0
